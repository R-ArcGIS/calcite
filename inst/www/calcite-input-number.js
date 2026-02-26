// Custom Shiny input binding for calcite-input-number
(function () {
  const binding = new Shiny.InputBinding();

  $.extend(binding, {
    find: function (scope) {
      return $(scope).find("calcite-input-number");
    },

    getId: function (el) {
      return el.id;
    },

    getValue: function (el) {
      return {
        value: el.value,
        alignment: el.alignment,
        clearable: el.clearable,
        disabled: el.disabled,
        groupSeparator: el.groupSeparator,
        icon: el.icon,
        iconFlipRtl: el.iconFlipRtl,
        integer: el.integer,
        loading: el.loading,
        max: el.max,
        min: el.min,
        name: el.name,
        numberButtonType: el.numberButtonType,
        placeholder: el.placeholder,
        prefixText: el.prefixText,
        readOnly: el.readOnly,
        required: el.required,
        scale: el.scale,
        status: el.status,
        step: el.step,
        suffixText: el.suffixText,
        validity: el.validity,
        validationIcon: el.validationIcon,
        validationMessage: el.validationMessage,
      };
    },

    setValue: function (el, data) {
      Object.entries(data).forEach(([key, value]) => {
        if (key !== "validity") {
          el[key] = value;
        }
      });
      $(el).trigger("calciteInputNumberInputBinding:updated");
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

      // Listen for input events (during typing)
      $(el).on(
        "calciteInputNumberInput.calciteInputNumberInputBinding",
        function () {
          const currentValue = binding.getValue(el);
          Shiny.setInputValue(el.id, currentValue);
          callback(true);
        },
      );

      // Listen for change events (when value is committed)
      $(el).on(
        "calciteInputNumberChange.calciteInputNumberInputBinding",
        function () {
          const currentValue = binding.getValue(el);
          Shiny.setInputValue(el.id, currentValue, { priority: "event" });
          callback(true);
        },
      );

      // Listen for update events (from server)
      $(el).on("calciteInputNumberInputBinding:updated", function () {
        const currentValue = binding.getValue(el);
        Shiny.setInputValue(el.id, currentValue);
        callback(false);
      });
    },

    unsubscribe: function (el) {
      $(el).off(".calciteInputNumberInputBinding");
    },

    receiveMessage: function (el, data) {
      this.setValue(el, data);
    },

    getState: function (el) {
      return this.getValue(el);
    },
  });

  Shiny.inputBindings.register(binding, "calcite.calciteInputNumber");
})();
