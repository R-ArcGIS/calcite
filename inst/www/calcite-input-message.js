// Custom Shiny input binding for calcite-input-message
(function() {
  const binding = new Shiny.InputBinding();

  $.extend(binding, {
    find: function(scope) {
      return $(scope).find("calcite-input-message");
    },

    getId: function(el) {
      return el.id;
    },

    getValue: function(el) {
      return {
        status: el.status,
        icon: el.icon,
        iconFlipRtl: el.iconFlipRtl,
        scale: el.scale
      };
    },

    setValue: function(el, data) {
      Object.entries(data).forEach(([key, value]) => {
        el[key] = value;
      });
      $(el).trigger("calciteInputMessageInputBinding:updated");
    },

    subscribe: function(el, callback) {
      // Listen for update events (from server)
      $(el).on("calciteInputMessageInputBinding:updated", function() {
        callback(false);
      });
    },

    unsubscribe: function(el) {
      $(el).off(".calciteInputMessageInputBinding");
    },

    receiveMessage: function(el, data) {
      this.setValue(el, data);
    },

    getState: function(el) {
      return this.getValue(el);
    }
  });

  Shiny.inputBindings.register(binding, "calcite.calciteInputMessage");
})();
