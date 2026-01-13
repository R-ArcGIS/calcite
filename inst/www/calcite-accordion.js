// Custom Shiny input binding for calcite-accordion
(function() {
  const binding = new Shiny.InputBinding();

  $.extend(binding, {
    find: function(scope) {
      return $(scope).find("calcite-accordion");
    },

    getId: function(el) {
      return el.id;
    },

    getValue: function(el) {
      return {
        appearance: el.appearance,
        iconPosition: el.iconPosition,
        iconType: el.iconType,
        scale: el.scale,
        selectionMode: el.selectionMode
      };
    },

    setValue: function(el, data) {
      Object.entries(data).forEach(([key, value]) => {
        el[key] = value;
      });
      $(el).trigger("calciteAccordionInputBinding:updated");
    },

    initialize: function(el) {
      const currentValue = this.getValue(el);
      Shiny.setInputValue(el.id, currentValue);
    },

    subscribe: function(el, callback) {
      // Listen for update events (from server)
      $(el).on("calciteAccordionInputBinding:updated", function() {
        const currentValue = binding.getValue(el);
        Shiny.setInputValue(el.id, currentValue);
        callback(false);
      });
    },

    unsubscribe: function(el) {
      $(el).off(".calciteAccordionInputBinding");
    },

    receiveMessage: function(el, data) {
      this.setValue(el, data);
    },

    getState: function(el) {
      return this.getValue(el);
    }
  });

  Shiny.inputBindings.register(binding, "calcite.calciteAccordion");
})();
