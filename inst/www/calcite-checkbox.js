// Custom Shiny input binding for calcite-checkbox
(function () {
  const binding = new Shiny.InputBinding();

  $.extend(binding, {
    find: function (scope) {
      return $(scope).find("calcite-checkbox");
    },

    getId: function (el) {
      return el.id;
    },

    getValue: function (el) {
      return {
        checked: el.checked,
        disabled: el.disabled,
        indeterminate: el.indeterminate,
        label: el.label,
        labelText: el.labelText,
        name: el.name,
        required: el.required,
        scale: el.scale,
        status: el.status,
        value: el.value,
      };
    },

    setValue: function (el, data) {
      Object.entries(data).forEach(([key, value]) => {
        el[key] = value;
      });
      $(el).trigger("calciteCheckboxInputBinding:updated");
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

      $(el).on(
        "calciteCheckboxChange.calciteCheckboxInputBinding",
        function () {
          const currentValue = binding.getValue(el);
          Shiny.setInputValue(el.id, currentValue, { priority: "event" });
          callback(true);
        },
      );

      $(el).on("calciteCheckboxInputBinding:updated", function () {
        const currentValue = binding.getValue(el);
        Shiny.setInputValue(el.id, currentValue);
        callback(false);
      });
    },

    unsubscribe: function (el) {
      $(el).off(".calciteCheckboxInputBinding");
    },

    receiveMessage: function (el, data) {
      this.setValue(el, data);
    },

    getState: function (el) {
      return this.getValue(el);
    },
  });

  Shiny.inputBindings.register(binding, "calcite.calciteCheckbox");
})();
