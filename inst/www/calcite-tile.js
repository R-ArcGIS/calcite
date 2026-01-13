// Custom Shiny input binding for calcite-tile
(function() {
  const binding = new Shiny.InputBinding();

  $.extend(binding, {
    find: function(scope) {
      return $(scope).find("calcite-tile");
    },

    getId: function(el) {
      return el.id;
    },

    getValue: function(el) {
      return {
        active: el.active,
        selected: el.selected,
        disabled: el.disabled,
        heading: el.heading,
        description: el.description,
        icon: el.icon,
        href: el.href,
        alignment: el.alignment,
        scale: el.scale,
        iconFlipRtl: el.iconFlipRtl,
        label: el.label
      };
    },

    setValue: function(el, data) {
      Object.entries(data).forEach(([key, value]) => {
        el[key] = value;
      });
      $(el).trigger("calciteTileInputBinding:updated");
    },

    subscribe: function(el, callback) {
      // Listen for click events on the tile
      $(el).on("click.calciteTileInputBinding", function() {
        const currentValue = binding.getValue(el);
        Shiny.setInputValue(el.id, currentValue, {priority: "event"});

        callback(true);
      });

      // Listen for update events (from server)
      $(el).on("calciteTileInputBinding:updated", function() {
        const currentValue = binding.getValue(el);
        Shiny.setInputValue(el.id, currentValue);

        callback(false);
      });
    },

    unsubscribe: function(el) {
      $(el).off(".calciteTileInputBinding");
    },

    receiveMessage: function(el, data) {
      this.setValue(el, data);
    },

    getState: function(el) {
      return this.getValue(el);
    }
  });

  Shiny.inputBindings.register(binding, "calcite.calciteTile");
})();
