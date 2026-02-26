// Custom Shiny input binding for calcite-select
(function () {
  const binding = new Shiny.InputBinding();

  $.extend(binding, {
    find: function (scope) {
      return $(scope).find("calcite-select");
    },

    getId: function (el) {
      return el.id;
    },

    getValue: function (el) {
      return {
        value: el.value,
        disabled: el.disabled,
        form: el.form,
        label: el.label,
        labelText: el.labelText,
        name: el.name,
        required: el.required,
        scale: el.scale,
        status: el.status,
        validationIcon: el.validationIcon,
        validationMessage: el.validationMessage,
        width: el.width,
        selectedOption: el.selectedOption
          ? {
              label: el.selectedOption.label,
              value: el.selectedOption.value,
              disabled: el.selectedOption.disabled,
              selected: el.selectedOption.selected,
            }
          : null,
      };
    },

    initialize: function (el) {
      // Wait for the component to be fully initialized and selectedOption to be available
      customElements.whenDefined("calcite-select").then(() => {
        // Poll until selectedOption is available
        const checkReady = () => {
          if (el.selectedOption) {
            // Component is ready, send initial value
            const initialValue = binding.getValue(el);
            if (el.id) {
              Shiny.setInputValue(el.id, initialValue);
            }
          } else {
            // Not ready yet, check again
            requestAnimationFrame(checkReady);
          }
        };

        // Start checking
        requestAnimationFrame(checkReady);
      });
    },

    setValue: function (el, data) {
      Object.entries(data).forEach(([key, value]) => {
        el[key] = value;
      });
      $(el).trigger("calciteSelectInputBinding:updated");
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

      // Listen for calciteSelectChange event
      $(el).on("calciteSelectChange.calciteSelectInputBinding", function (e) {
        callback(true);
      });

      // Listen for update events (from server)
      $(el).on("calciteSelectInputBinding:updated", function () {
        callback(false);
      });
    },

    unsubscribe: function (el) {
      $(el).off(".calciteSelectInputBinding");
    },

    receiveMessage: function (el, data) {
      this.setValue(el, data);
    },

    getState: function (el) {
      return this.getValue(el);
    },
  });

  Shiny.inputBindings.register(binding, "calcite.calciteSelect");
})();
