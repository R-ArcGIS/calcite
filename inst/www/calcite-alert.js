// Custom Shiny input binding for calcite-alert
(function () {
  const binding = new Shiny.InputBinding();

  $.extend(binding, {
    find: function (scope) {
      return $(scope).find("calcite-alert");
    },

    getId: function (el) {
      return el.id;
    },

    getValue: function (el) {
      return {
        autoClose: el.autoClose,
        autoCloseDuration: el.autoCloseDuration,
        icon: el.icon,
        iconFlipRtl: el.iconFlipRtl,
        kind: el.kind,
        label: el.label,
        numberingSystem: el.numberingSystem,
        open: el.open,
        placement: el.placement,
        queue: el.queue,
        scale: el.scale,
      };
    },

    setValue: function (el, data) {
      Object.entries(data).forEach(([key, value]) => {
        el[key] = value;
      });
      $(el).trigger("calciteAlertInputBinding:updated");
    },

    initialize: function (el) {
      const currentValue = this.getValue(el);
      Shiny.setInputValue(el.id, currentValue);
    },

    subscribe: function (el, callback) {
      // Listen for alert before close event
      $(el).on("calciteAlertBeforeClose.calciteAlertInputBinding", function () {
        const currentValue = binding.getValue(el);
        Shiny.setInputValue(el.id, currentValue, { priority: "event" });
        callback(true);
      });

      // Listen for alert before open event
      $(el).on("calciteAlertBeforeOpen.calciteAlertInputBinding", function () {
        const currentValue = binding.getValue(el);
        Shiny.setInputValue(el.id, currentValue, { priority: "event" });
        callback(true);
      });

      // Listen for alert close event
      $(el).on("calciteAlertClose.calciteAlertInputBinding", function () {
        const currentValue = binding.getValue(el);
        Shiny.setInputValue(el.id, currentValue, { priority: "event" });
        callback(true);
      });

      // Listen for alert open event
      $(el).on("calciteAlertOpen.calciteAlertInputBinding", function () {
        const currentValue = binding.getValue(el);
        Shiny.setInputValue(el.id, currentValue, { priority: "event" });
        callback(true);
      });

      // Listen for update events (from server)
      $(el).on("calciteAlertInputBinding:updated", function () {
        const currentValue = binding.getValue(el);
        Shiny.setInputValue(el.id, currentValue);
        callback(false);
      });
    },

    unsubscribe: function (el) {
      $(el).off(".calciteAlertInputBinding");
    },

    receiveMessage: function (el, data) {
      this.setValue(el, data);
    },

    getState: function (el) {
      return this.getValue(el);
    },
  });

  Shiny.inputBindings.register(binding, "calcite.calciteAlert");
})();
