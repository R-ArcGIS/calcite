// Custom Shiny input binding for calcite-switch
(function () {
  const binding = new Shiny.InputBinding();

  $.extend(binding, {
    find: function (scope) {
      return $(scope).find("calcite-switch");
    },

    getId: function (el) {
      return el.id;
    },

    getValue: function (el) {
      return {
        checked: el.checked,
        disabled: el.disabled,
        form: el.form,
        label: el.label,
        labelTextEnd: el.labelTextEnd,
        labelTextStart: el.labelTextStart,
        name: el.name,
        scale: el.scale,
        value: el.value,
      };
    },

    setValue: function (el, data) {
      Object.entries(data).forEach(([key, value]) => {
        el[key] = value;
      });
      $(el).trigger("calciteSwitchInputBinding:updated");
    },

    subscribe: function (el, callback) {
      const initializeValue = function () {
        const initialValue = binding.getValue(el);
        Shiny.setInputValue(el.id, initialValue);
      };

      if (el.componentOnReady) {
        el.componentOnReady().then(initializeValue);
      } else {
        setTimeout(initializeValue, 100);
      }

      // Listen for calciteSwitchChange events
      $(el).on(
        "calciteSwitchChange.calciteSwitchInputBinding",
        function (event) {
          const currentValue = binding.getValue(el);

          // Send to Shiny with priority event
          Shiny.setInputValue(el.id, currentValue, { priority: "event" });

          callback(true);
        },
      );

      // Listen for update events (from server)
      $(el).on("calciteSwitchInputBinding:updated", function () {
        const currentValue = binding.getValue(el);

        Shiny.setInputValue(el.id, currentValue);

        callback(false);
      });
    },

    unsubscribe: function (el) {
      $(el).off(".calciteSwitchInputBinding");
    },

    receiveMessage: function (el, data) {
      this.setValue(el, data);
    },

    getState: function (el) {
      return this.getValue(el);
    },
  });

  Shiny.inputBindings.register(binding, "calcite.calciteSwitch");
})();
