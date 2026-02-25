// Custom Shiny input binding for calcite-action-bar
(function() {
  const binding = new Shiny.InputBinding();

  $.extend(binding, {
    find: function(scope) {
      return $(scope).find("calcite-action-bar[id]");
    },

    getId: function(el) {
      return el.id;
    },

    getValue: function(el) {
      const actions = el.querySelectorAll("calcite-action");
      let selected = null;
      actions.forEach(function(action) {
        if (action.active) {
          selected = action.text || action.getAttribute("text");
        }
      });
      return selected;
    },

    subscribe: function(el, callback) {
      const initializeValue = function() {
        const initialValue = binding.getValue(el);
        Shiny.setInputValue(el.id, initialValue);
      };

      if (el.componentOnReady) {
        el.componentOnReady().then(initializeValue);
      } else {
        setTimeout(initializeValue, 100);
      }

      $(el).on("click.calciteActionBarInputBinding", "calcite-action", function() {
        const clickedAction = this;
        const value = clickedAction.text || clickedAction.getAttribute("text");
        console.log("[action-bar] click:", value);

        // Manage active state in JS — no server round-trip needed
        el.querySelectorAll("calcite-action").forEach(function(action) {
          if (!action.id) action.active = action === clickedAction;
        });

        Shiny.setInputValue(el.id, value, { priority: "event" });
        callback(true);
      });
    },

    unsubscribe: function(el) {
      $(el).off(".calciteActionBarInputBinding");
    },

    receiveMessage: function(el, data) {
      console.log("[action-bar] receiveMessage:", data);
      // update_calcite() wraps value in a list, so data arrives as an array
      const value = Array.isArray(data) ? data[0] : data;
      if (typeof value === "string") {
        const actions = el.querySelectorAll("calcite-action");
        actions.forEach(function(action) {
          action.active = (action.text || action.getAttribute("text")) === value;
        });
      }
    },

    getState: function(el) {
      return this.getValue(el);
    }
  });

  Shiny.inputBindings.register(binding, "calcite.calciteActionBar");
})();
