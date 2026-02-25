// Custom Shiny input binding for calcite-panel
(function () {
  const binding = new Shiny.InputBinding();

  $.extend(binding, {
    find: function (scope) {
      return $(scope).find("calcite-panel");
    },

    getId: function (el) {
      return el.id;
    },

    getValue: function (el) {
      return {
        closable: el.closable,
        closed: el.closed,
        collapsed: el.collapsed,
        collapseDirection: el.collapseDirection,
        collapsible: el.collapsible,
        description: el.description,
        disabled: el.disabled,
        heading: el.heading,
        headingLevel: el.headingLevel,
        icon: el.icon,
        iconFlipRtl: el.iconFlipRtl,
        loading: el.loading,
        menuOpen: el.menuOpen,
        menuPlacement: el.menuPlacement,
        overlayPositioning: el.overlayPositioning,
        scale: el.scale,
      };
    },

    setValue: function (el, data) {
      Object.entries(data).forEach(([key, value]) => {
        el[key] = value;
      });
      $(el).trigger("calcitePanelInputBinding:updated");
    },

    subscribe: function (el, callback) {
      // Wait for component to be ready, then initialize
      const initializeValue = function () {
        const initialValue = binding.getValue(el);
        Shiny.setInputValue(el.id, initialValue);
      };

      if (el.componentOnReady) {
        el.componentOnReady().then(initializeValue);
      } else {
        // Fallback: wait a bit for component to initialize
        setTimeout(initializeValue, 100);
      }

      // Listen for panel close event
      $(el).on("calcitePanelClose.calcitePanelInputBinding", function () {
        const currentValue = binding.getValue(el);
        Shiny.setInputValue(el.id, currentValue, { priority: "event" });

        callback(true);
      });

      // Listen for panel collapse event
      $(el).on("calcitePanelCollapse.calcitePanelInputBinding", function () {
        const currentValue = binding.getValue(el);
        Shiny.setInputValue(el.id, currentValue, { priority: "event" });

        callback(true);
      });

      // Listen for panel expand event
      $(el).on("calcitePanelExpand.calcitePanelInputBinding", function () {
        const currentValue = binding.getValue(el);
        Shiny.setInputValue(el.id, currentValue, { priority: "event" });

        callback(true);
      });

      // Listen for panel scroll event
      $(el).on("calcitePanelScroll.calcitePanelInputBinding", function () {
        const currentValue = binding.getValue(el);
        Shiny.setInputValue(el.id, currentValue, { priority: "event" });

        callback(true);
      });

      // Listen for panel toggle event
      $(el).on("calcitePanelToggle.calcitePanelInputBinding", function () {
        const currentValue = binding.getValue(el);
        Shiny.setInputValue(el.id, currentValue, { priority: "event" });

        callback(true);
      });

      // Listen for update events (from server)
      $(el).on("calcitePanelInputBinding:updated", function () {
        const currentValue = binding.getValue(el);
        Shiny.setInputValue(el.id, currentValue);

        callback(false);
      });
    },

    unsubscribe: function (el) {
      $(el).off(".calcitePanelInputBinding");
    },

    receiveMessage: function (el, data) {
      this.setValue(el, data);
    },

    getState: function (el) {
      return this.getValue(el);
    },
  });

  Shiny.inputBindings.register(binding, "calcite.calcitePanel");
})();
