// Custom Shiny input binding for calcite-accordion-item
(function () {
  const binding = new Shiny.InputBinding();

  $.extend(binding, {
    find: function (scope) {
      return $(scope).find("calcite-accordion-item");
    },

    getId: function (el) {
      return el.id;
    },

    getValue: function (el) {
      return {
        description: el.description,
        expanded: el.expanded,
        heading: el.heading,
        headingLevel: el.headingLevel,
        iconEnd: el.iconEnd,
        iconFlipRtl: el.iconFlipRtl,
        iconStart: el.iconStart,
      };
    },

    setValue: function (el, data) {
      Object.entries(data).forEach(([key, value]) => {
        el[key] = value;
      });
      $(el).trigger("calciteAccordionItemInputBinding:updated");
    },

    subscribe: function (el, callback) {
      // Listen for accordion item expand event
      $(el).on(
        "calciteAccordionItemExpand.calciteAccordionItemInputBinding",
        function () {
          const currentValue = binding.getValue(el);
          Shiny.setInputValue(el.id, currentValue, { priority: "event" });

          callback(true);
        },
      );

      // Listen for accordion item collapse event
      $(el).on(
        "calciteAccordionItemCollapse.calciteAccordionItemInputBinding",
        function () {
          const currentValue = binding.getValue(el);
          Shiny.setInputValue(el.id, currentValue, { priority: "event" });

          callback(true);
        },
      );

      // Listen for update events (from server)
      $(el).on("calciteAccordionItemInputBinding:updated", function () {
        const currentValue = binding.getValue(el);
        Shiny.setInputValue(el.id, currentValue);

        callback(false);
      });
    },

    unsubscribe: function (el) {
      $(el).off(".calciteAccordionItemInputBinding");
    },

    receiveMessage: function (el, data) {
      this.setValue(el, data);
    },

    getState: function (el) {
      return this.getValue(el);
    },
  });

  Shiny.inputBindings.register(binding, "calcite.calciteAccordionItem");
})();
