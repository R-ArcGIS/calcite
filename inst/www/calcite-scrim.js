// Custom Shiny input binding for calcite-scrim
(function () {
  const binding = new Shiny.InputBinding();

  $.extend(binding, {
    find: function (scope) {
      return $(scope).find("calcite-scrim[id]");
    },

    getId: function (el) {
      return el.id;
    },

    getValue: function (el) {
      return {
        loading: el.loading ?? false,
      };
    },

    setValue: function (el, data) {
      const value = Array.isArray(data) ? data[0] : data;
      Object.entries(value).forEach(([key, val]) => {
        el[key] = val;
      });
      $(el).trigger("calciteScrimInputBinding:updated");
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

      $(el).on("calciteScrimInputBinding:updated", function () {
        const currentValue = binding.getValue(el);
        Shiny.setInputValue(el.id, currentValue);
        callback(false);
      });
    },

    unsubscribe: function (el) {
      $(el).off(".calciteScrimInputBinding");
    },

    receiveMessage: function (el, data) {
      this.setValue(el, data);
    },

    getState: function (el) {
      return this.getValue(el);
    },
  });

  Shiny.inputBindings.register(binding, "calcite.calciteScrim");
})();
