// Custom Shiny input binding for calcite-option
// Note: calcite-option is typically used within calcite-select
// and doesn't usually need independent binding, but we provide it for completeness
(function () {
  const binding = new Shiny.InputBinding();

  $.extend(binding, {
    find: function (scope) {
      return $(scope).find("calcite-option");
    },

    getId: function (el) {
      return el.id;
    },

    getValue: function (el) {
      return {
        label: el.label,
        value: el.value,
        disabled: el.disabled,
        selected: el.selected,
      };
    },

    setValue: function (el, data) {
      Object.entries(data).forEach(([key, value]) => {
        el[key] = value;
      });
      $(el).trigger("calciteOptionInputBinding:updated");
    },

    subscribe: function (el, callback) {
      // Listen for property changes
      $(el).on("calciteOptionInputBinding:updated", function () {
        callback(false);
      });
    },

    unsubscribe: function (el) {
      $(el).off(".calciteOptionInputBinding");
    },

    receiveMessage: function (el, data) {
      this.setValue(el, data);
    },

    getState: function (el) {
      return this.getValue(el);
    },
  });

  Shiny.inputBindings.register(binding, "calcite.calciteOption");
})();
