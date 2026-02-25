// Custom Shiny input binding for calcite-segmented-control
(function () {
  const binding = new Shiny.InputBinding();

  $.extend(binding, {
    find: function (scope) {
      return $(scope).find("calcite-segmented-control");
    },

    getId: function (el) {
      return el.id;
    },

    getValue: function (el) {
      return {
        value: el.value,
        appearance: el.appearance,
        disabled: el.disabled,
        layout: el.layout,
        scale: el.scale,
        width: el.width,
        name: el.name,
        labelText: el.labelText,
        status: el.status,
        validationMessage: el.validationMessage,
        required: el.required,
      };
    },

    setValue: function (el, data) {
      Object.entries(data).forEach(([key, value]) => {
        el[key] = value;
      });
      $(el).trigger("calciteSegmentedControlInputBinding:updated");
    },

    subscribe: function (el, callback) {
      // Listen for selection change events
      $(el).on(
        "calciteSegmentedControlChange.calciteSegmentedControlInputBinding",
        function () {
          const currentValue = binding.getValue(el);
          Shiny.setInputValue(el.id, currentValue, { priority: "event" });

          callback(true);
        },
      );

      // Listen for update events (from server)
      $(el).on("calciteSegmentedControlInputBinding:updated", function () {
        const currentValue = binding.getValue(el);
        Shiny.setInputValue(el.id, currentValue);

        callback(false);
      });
    },

    unsubscribe: function (el) {
      $(el).off(".calciteSegmentedControlInputBinding");
    },

    receiveMessage: function (el, data) {
      this.setValue(el, data);
    },

    getState: function (el) {
      return this.getValue(el);
    },
  });

  Shiny.inputBindings.register(binding, "calcite.calciteSegmentedControl");
})();
