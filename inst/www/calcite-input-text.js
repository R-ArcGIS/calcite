// Custom Shiny input binding for calcite-input-text
(function () {
  const binding = new Shiny.InputBinding();

  $.extend(binding, {
    find: function (scope) {
      return $(scope).find("calcite-input-text");
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
        icon: el.icon,
        iconFlipRtl: el.iconFlipRtl,
        loading: el.loading,
        maxLength: el.maxLength,
        minLength: el.minLength,
        name: el.name,
        pattern: el.pattern,
        placeholder: el.placeholder,
        prefixText: el.prefixText,
        readOnly: el.readOnly,
        required: el.required,
        scale: el.scale,
        status: el.status,
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
      $(el).trigger("calciteInputTextInputBinding:updated");
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
        "calciteInputTextInput.calciteInputTextInputBinding",
        function () {
          const currentValue = binding.getValue(el);
          Shiny.setInputValue(el.id, currentValue);
          callback(true);
        },
      );

      // Listen for change events (when value is committed)
      $(el).on(
        "calciteInputTextChange.calciteInputTextInputBinding",
        function () {
          const currentValue = binding.getValue(el);
          Shiny.setInputValue(el.id, currentValue, { priority: "event" });
          callback(true);
        },
      );

      // Listen for update events (from server)
      $(el).on("calciteInputTextInputBinding:updated", function () {
        const currentValue = binding.getValue(el);
        Shiny.setInputValue(el.id, currentValue);
        callback(false);
      });
    },

    unsubscribe: function (el) {
      $(el).off(".calciteInputTextInputBinding");
    },

    receiveMessage: function (el, data) {
      this.setValue(el, data);
    },

    getState: function (el) {
      return this.getValue(el);
    },
  });

  Shiny.inputBindings.register(binding, "calcite.calciteInputText");
})();
