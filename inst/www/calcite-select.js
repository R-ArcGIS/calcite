// Custom Shiny input binding for calcite-select
(function() {
  const binding = new Shiny.InputBinding();

  $.extend(binding, {
    find: function(scope) {
      return $(scope).find("calcite-select");
    },

    getId: function(el) {
      return el.id;
    },

    getValue: function(el) {
      return {
        value: el.value,
        disabled: el.disabled,
        form: el.form,
        label: el.label,
        labelText: el.labelText,
        name: el.name,
        required: el.required,
        scale: el.scale,
        status: el.status,
        validationIcon: el.validationIcon,
        validationMessage: el.validationMessage,
        width: el.width,
        selectedOption: el.selectedOption ? {
          label: el.selectedOption.label,
          value: el.selectedOption.value,
          disabled: el.selectedOption.disabled,
          selected: el.selectedOption.selected
        } : null
      };
    },

    setValue: function(el, data) {
      Object.entries(data).forEach(([key, value]) => {
        el[key] = value;
      });
      $(el).trigger("calciteSelectInputBinding:updated");
    },

    subscribe: function(el, callback) {
      // Listen for calciteSelectChange event
      $(el).on("calciteSelectChange.calciteSelectInputBinding", function(e) {
        callback(true);
      });

      // Listen for update events (from server)
      $(el).on("calciteSelectInputBinding:updated", function() {
        callback(false);
      });
    },

    unsubscribe: function(el) {
      $(el).off(".calciteSelectInputBinding");
    },

    receiveMessage: function(el, data) {
      this.setValue(el, data);
    },

    getState: function(el) {
      return this.getValue(el);
    }
  });

  Shiny.inputBindings.register(binding, "calcite.calciteSelect");
})();
