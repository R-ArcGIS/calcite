// Custom Shiny input binding for calcite-tile-group
(function () {
  const binding = new Shiny.InputBinding();

  $.extend(binding, {
    find: function (scope) {
      return $(scope).find("calcite-tile-group");
    },

    getId: function (el) {
      return el.id;
    },

    getValue: function (el) {
      // Get selected items as an array of IDs
      const selectedItems = el.selectedItems || [];
      const selectedIds = Array.from(selectedItems)
        .map((item) => item.id)
        .filter((id) => id);

      return {
        selectedItems: selectedIds,
        selectionMode: el.selectionMode,
        selectionAppearance: el.selectionAppearance,
        layout: el.layout,
        alignment: el.alignment,
        scale: el.scale,
        disabled: el.disabled,
        label: el.label,
      };
    },

    setValue: function (el, data) {
      Object.entries(data).forEach(([key, value]) => {
        el[key] = value;
      });
      $(el).trigger("calciteTileGroupInputBinding:updated");
    },

    subscribe: function (el, callback) {
      // Listen for tile group select events
      $(el).on(
        "calciteTileGroupSelect.calciteTileGroupInputBinding",
        function (event) {
          const currentValue = binding.getValue(el);
          Shiny.setInputValue(el.id, currentValue, { priority: "event" });

          callback(true);
        },
      );

      // Listen for update events (from server)
      $(el).on("calciteTileGroupInputBinding:updated", function () {
        const currentValue = binding.getValue(el);
        Shiny.setInputValue(el.id, currentValue);

        callback(false);
      });
    },

    unsubscribe: function (el) {
      $(el).off(".calciteTileGroupInputBinding");
    },

    receiveMessage: function (el, data) {
      this.setValue(el, data);
    },

    getState: function (el) {
      return this.getValue(el);
    },
  });

  Shiny.inputBindings.register(binding, "calcite.calciteTileGroup");
})();
