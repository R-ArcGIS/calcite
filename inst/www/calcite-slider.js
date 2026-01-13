// Custom Shiny input binding for calcite-slider
(function() {
  const binding = new Shiny.InputBinding();

  $.extend(binding, {
    find: function(scope) {
      return $(scope).find("calcite-slider");
    },

    getId: function(el) {
      return el.id;
    },

    initialize: function(el) {
      // Set histogram from data attribute if present
      const histogramData = $(el).attr("data-histogram");
      if (histogramData) {
        try {
          el.histogram = JSON.parse(histogramData);
          // Remove the data attribute after setting the property
          $(el).removeAttr("data-histogram");
        } catch(e) {
          console.error("Failed to parse histogram data:", e);
        }
      }
    },

    getValue: function(el) {
      // Convert histogram from array of pairs to x/y arrays
      let histogram = null;
      if (el.histogram && Array.isArray(el.histogram)) {
        histogram = {
          x: el.histogram.map(d => d[0]),
          y: el.histogram.map(d => d[1])
        };
      }

      return {
        value: el.value,
        minValue: el.minValue,
        maxValue: el.maxValue,
        min: el.min,
        max: el.max,
        step: el.step,
        disabled: el.disabled,
        histogram: histogram,
        labelHandles: el.labelHandles,
        labelTicks: el.labelTicks,
        ticks: el.ticks,
        scale: el.scale,
        precise: el.precise,
        snap: el.snap
      };
    },

    setValue: function(el, data) {
      Object.entries(data).forEach(([key, value]) => {
        el[key] = value;
      });
      $(el).trigger("calciteSliderInputBinding:updated");
    },

    subscribe: function(el, callback) {
      // Listen for slider change events (when handle is released)
      $(el).on("calciteSliderChange.calciteSliderInputBinding", function() {
        const currentValue = binding.getValue(el);
        Shiny.setInputValue(el.id, currentValue, {priority: "event"});

        callback(true);
      });

      // Listen for slider input events (during drag)
      $(el).on("calciteSliderInput.calciteSliderInputBinding", function() {
        const currentValue = binding.getValue(el);
        Shiny.setInputValue(el.id, currentValue);

        callback(true);
      });

      // Listen for update events (from server)
      $(el).on("calciteSliderInputBinding:updated", function() {
        const currentValue = binding.getValue(el);
        Shiny.setInputValue(el.id, currentValue);

        callback(false);
      });
    },

    unsubscribe: function(el) {
      $(el).off(".calciteSliderInputBinding");
    },

    receiveMessage: function(el, data) {
      this.setValue(el, data);
    },

    getState: function(el) {
      return this.getValue(el);
    }
  });

  Shiny.inputBindings.register(binding, "calcite.calciteSlider");
})();
