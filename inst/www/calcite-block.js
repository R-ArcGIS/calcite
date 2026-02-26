// Custom Shiny input binding for calcite-block
(function () {
  const binding = new Shiny.InputBinding();

  $.extend(binding, {
    find: function (scope) {
      return $(scope).find("calcite-block");
    },

    getId: function (el) {
      return el.id;
    },

    getValue: function (el) {
      return {
        expanded: el.expanded,
        collapsible: el.collapsible,
        disabled: el.disabled,
        loading: el.loading,
        heading: el.heading,
        description: el.description,
        iconStart: el.iconStart,
        iconEnd: el.iconEnd,
        iconFlipRtl: el.iconFlipRtl,
        scale: el.scale,
        headingLevel: el.headingLevel,
        label: el.label,
        dragDisabled: el.dragDisabled,
        sortHandleOpen: el.sortHandleOpen,
        menuPlacement: el.menuPlacement,
        overlayPositioning: el.overlayPositioning,
      };
    },

    setValue: function (el, data) {
      Object.entries(data).forEach(([key, value]) => {
        el[key] = value;
      });
      $(el).trigger("calciteBlockInputBinding:updated");
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

      // Listen for block open event (after animation complete)
      $(el).on("calciteBlockOpen.calciteBlockInputBinding", function () {
        const currentValue = binding.getValue(el);
        Shiny.setInputValue(el.id, currentValue, { priority: "event" });

        callback(true);
      });

      // Listen for block close event (after animation complete)
      $(el).on("calciteBlockClose.calciteBlockInputBinding", function () {
        const currentValue = binding.getValue(el);
        Shiny.setInputValue(el.id, currentValue, { priority: "event" });

        callback(true);
      });

      // Listen for update events (from server)
      $(el).on("calciteBlockInputBinding:updated", function () {
        const currentValue = binding.getValue(el);
        Shiny.setInputValue(el.id, currentValue);

        callback(false);
      });
    },

    unsubscribe: function (el) {
      $(el).off(".calciteBlockInputBinding");
    },

    receiveMessage: function (el, data) {
      this.setValue(el, data);
    },

    getState: function (el) {
      return this.getValue(el);
    },
  });

  Shiny.inputBindings.register(binding, "calcite.calciteBlock");
})();
