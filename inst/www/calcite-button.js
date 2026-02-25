// Custom Shiny input binding for calcite-button
(function () {
  const binding = new Shiny.InputBinding();

  $.extend(binding, {
    find: function (scope) {
      return $(scope).find("calcite-button");
    },

    getId: function (el) {
      return el.id;
    },

    getValue: function (el) {
      // Initialize click counter if needed
      if (el._clickCount === undefined) {
        el._clickCount = 0;
      }

      return {
        alignment: el.alignment,
        appearance: el.appearance,
        disabled: el.disabled,
        download: el.download,
        form: el.form,
        href: el.href,
        iconEnd: el.iconEnd,
        iconFlipRtl: el.iconFlipRtl,
        iconStart: el.iconStart,
        kind: el.kind,
        label: el.label,
        loading: el.loading,
        name: el.name,
        rel: el.rel,
        round: el.round,
        scale: el.scale,
        splitChild: el.splitChild,
        target: el.target,
        type: el.type,
        width: el.width,
        clicks: el._clickCount,
      };
    },

    setValue: function (el, data) {
      Object.entries(data).forEach(([key, value]) => {
        if (key !== "clicks") {
          el[key] = value;
        }
      });
      $(el).trigger("calciteButtonInputBinding:updated");
    },

    subscribe: function (el, callback) {
      // Listen for click events
      $(el).on("click.calciteButtonInputBinding", function () {
        // Increment click counter
        el._clickCount = (el._clickCount || 0) + 1;

        const currentValue = binding.getValue(el);

        // Send to Shiny with priority event
        // This creates input$id as a list with all properties accessible as input$id$property
        Shiny.setInputValue(el.id, currentValue, { priority: "event" });

        callback(true);
      });

      // Listen for update events (from server)
      $(el).on("calciteButtonInputBinding:updated", function () {
        const currentValue = binding.getValue(el);

        // Update the input value without priority
        Shiny.setInputValue(el.id, currentValue);

        callback(false);
      });
    },

    unsubscribe: function (el) {
      $(el).off(".calciteButtonInputBinding");
    },

    receiveMessage: function (el, data) {
      this.setValue(el, data);
    },

    getState: function (el) {
      return this.getValue(el);
    },
  });

  Shiny.inputBindings.register(binding, "calcite.calciteButton");
})();
