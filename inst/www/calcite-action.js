// Custom Shiny input binding for calcite-action
(function () {
  const binding = new Shiny.InputBinding();

  $.extend(binding, {
    find: function (scope) {
      return $(scope).find("calcite-action[id]");
    },

    getId: function (el) {
      return el.id;
    },

    getValue: function (el) {
      // Initialize click state if needed
      if (el._clickState === undefined) {
        el._clickState = false;
      }

      return {
        active: el.active ?? false,
        alignment: el.alignment,
        appearance: el.appearance,
        compact: el.compact,
        disabled: el.disabled,
        icon: el.icon,
        indicator: el.indicator,
        label: el.label,
        loading: el.loading,
        scale: el.scale,
        text: el.text,
        textEnabled: el.textEnabled,
        clicked: el._clickState,
      };
    },

    setValue: function (el, data) {
      Object.entries(data).forEach(([key, value]) => {
        el[key] = value;
      });
      $(el).trigger("calciteActionInputBinding:updated");
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

      // Listen for click events
      $(el).on("click.calciteActionInputBinding", function () {
        // Toggle click state
        el._clickState = !el._clickState;

        const currentValue = binding.getValue(el);

        console.log("[action] click:", el.id, currentValue);
        // Send to Shiny with priority event
        Shiny.setInputValue(el.id, currentValue, { priority: "event" });

        callback(true);
      });

      // Listen for update events (from server)
      $(el).on("calciteActionInputBinding:updated", function () {
        const currentValue = binding.getValue(el);

        console.log("[action] updated:", el.id, currentValue);
        Shiny.setInputValue(el.id, currentValue);

        callback(false);
      });
    },

    unsubscribe: function (el) {
      $(el).off(".calciteActionInputBinding");
    },

    receiveMessage: function (el, data) {
      this.setValue(el, data);
    },

    getState: function (el) {
      return this.getValue(el);
    },
  });

  Shiny.inputBindings.register(binding, "calcite.calciteAction");
})();
