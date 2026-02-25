// Custom Shiny input binding for calcite-date-picker
(function () {
  const binding = new Shiny.InputBinding();

  $.extend(binding, {
    find: function (scope) {
      return $(scope).find("calcite-date-picker");
    },

    getId: function (el) {
      return el.id;
    },

    initialize: function (el) {
      // Handle initial value from HTML attribute
      const valueAttr = el.getAttribute("value");
      if (valueAttr) {
        try {
          // Try to parse as JSON array first
          const parsed = JSON.parse(valueAttr);
          el.value = parsed;
        } catch (e) {
          // If not JSON, treat as single value
          el.value = valueAttr;
        }
      }
    },

    getValue: function (el) {
      // Always return value as an array of strings
      let value = el.value;
      let valueArray = [];

      if (value) {
        if (Array.isArray(value)) {
          valueArray = value;
        } else if (value) {
          valueArray = [value];
        }
      }

      return {
        value: valueArray,
        range: el.range,
        min: el.min,
        max: el.max,
        scale: el.scale,
        layout: el.layout,
        calendars: el.calendars,
        activeRange: el.activeRange,
        headingLevel: el.headingLevel,
        monthStyle: el.monthStyle,
        numberingSystem: el.numberingSystem,
        proximitySelectionDisabled: el.proximitySelectionDisabled,
      };
    },

    setValue: function (el, data) {
      Object.entries(data).forEach(([key, value]) => {
        el[key] = value;
      });
      $(el).trigger("calciteDatePickerInputBinding:updated");
    },

    subscribe: function (el, callback) {
      // Listen for single date change
      $(el).on(
        "calciteDatePickerChange.calciteDatePickerInputBinding",
        function (event) {
          const currentValue = binding.getValue(el);
          Shiny.setInputValue(el.id, currentValue, { priority: "event" });

          callback(true);
        },
      );

      // Listen for range change
      $(el).on(
        "calciteDatePickerRangeChange.calciteDatePickerInputBinding",
        function (event) {
          const currentValue = binding.getValue(el);
          Shiny.setInputValue(el.id, currentValue, { priority: "event" });

          callback(true);
        },
      );

      // Listen for update events (from server)
      $(el).on("calciteDatePickerInputBinding:updated", function () {
        const currentValue = binding.getValue(el);
        Shiny.setInputValue(el.id, currentValue);

        callback(false);
      });
    },

    unsubscribe: function (el) {
      $(el).off(".calciteDatePickerInputBinding");
    },

    receiveMessage: function (el, data) {
      this.setValue(el, data);
    },

    getState: function (el) {
      return this.getValue(el);
    },
  });

  Shiny.inputBindings.register(binding, "calcite.calciteDatePicker");
})();
