// Custom Shiny input binding for calcite-table
(function() {
  const binding = new Shiny.InputBinding();

  $.extend(binding, {
    find: function(scope) {
      return $(scope).find("calcite-table");
    },

    getId: function(el) {
      return el.id;
    },

    getValue: function(el) {
      return {
        bordered: el.bordered,
        caption: el.caption,
        groupSeparator: el.groupSeparator,
        interactionMode: el.interactionMode,
        layout: el.layout,
        numbered: el.numbered,
        numberingSystem: el.numberingSystem,
        pageSize: el.pageSize,
        scale: el.scale,
        selectedItems: el.selectedItems,
        selectionDisplay: el.selectionDisplay,
        selectionMode: el.selectionMode,
        striped: el.striped
      };
    },

    setValue: function(el, data) {
      Object.entries(data).forEach(([key, value]) => {
        el[key] = value;
      });
      $(el).trigger("calciteTableInputBinding:updated");
    },

    subscribe: function(el, callback) {
      // Listen for page change events
      $(el).on("calciteTablePageChange.calciteTableInputBinding", function(event) {
        const currentValue = binding.getValue(el);
        Shiny.setInputValue(el.id, currentValue, {priority: "event"});
        callback(true);
      });

      // Listen for update events (from server)
      $(el).on("calciteTableInputBinding:updated", function() {
        const currentValue = binding.getValue(el);
        Shiny.setInputValue(el.id, currentValue);
        callback(false);
      });
    },

    unsubscribe: function(el) {
      $(el).off(".calciteTableInputBinding");
    },

    receiveMessage: function(el, data) {
      this.setValue(el, data);
    },

    getState: function(el) {
      return this.getValue(el);
    }
  });

  Shiny.inputBindings.register(binding, "calcite.calciteTable");
})();
