// Custom Shiny input binding for calcite-notice
(function () {
  const binding = new Shiny.InputBinding();

  $.extend(binding, {
    find: function (scope) {
      return $(scope).find("calcite-notice");
    },

    getId: function (el) {
      return el.id;
    },

    getValue: function (el) {
      return {
        open: el.open,
        closable: el.closable,
        icon: el.icon,
        iconFlipRtl: el.iconFlipRtl,
        kind: el.kind,
        scale: el.scale,
        width: el.width,
      };
    },

    setValue: function (el, data) {
      Object.entries(data).forEach(([key, value]) => {
        el[key] = value;
      });
      $(el).trigger("calciteNoticeInputBinding:updated");
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

      // Listen for notice open event (after animation complete)
      $(el).on("calciteNoticeOpen.calciteNoticeInputBinding", function () {
        const currentValue = binding.getValue(el);
        Shiny.setInputValue(el.id, currentValue, { priority: "event" });

        callback(true);
      });

      // Listen for notice close event (after animation complete)
      $(el).on("calciteNoticeClose.calciteNoticeInputBinding", function () {
        const currentValue = binding.getValue(el);
        Shiny.setInputValue(el.id, currentValue, { priority: "event" });

        callback(true);
      });

      // Listen for update events (from server)
      $(el).on("calciteNoticeInputBinding:updated", function () {
        const currentValue = binding.getValue(el);
        Shiny.setInputValue(el.id, currentValue);

        callback(false);
      });
    },

    unsubscribe: function (el) {
      $(el).off(".calciteNoticeInputBinding");
    },

    receiveMessage: function (el, data) {
      this.setValue(el, data);
    },

    getState: function (el) {
      return this.getValue(el);
    },
  });

  Shiny.inputBindings.register(binding, "calcite.calciteNotice");
})();
