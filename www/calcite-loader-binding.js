var calciteLoaderInputBinding = new Shiny.InputBinding();

$.extend(calciteLoaderInputBinding, {

  // Locate the calcite-loader elements in the Shiny app's scope
  find: function(scope) {
    return $(scope).find('calcite-loader');
  },

  // Retrieve the element's ID
  getId: function(el) {
    return el.id;
  },

  // Retrieve the value property of the calcite-loader element
  getValue: function(el) {
    return {
      text: el.getAttribute('text') || null,
      value: el.getAttribute('value') || null
    };
  },

  // Set the text and value properties of the calcite-loader element
  setValue: function(el, data) {
    if (data.hasOwnProperty('text')) {
      el.setAttribute('text', data.text);
    }
    if (data.hasOwnProperty('value')) {
      el.setAttribute('value', data.value);
    }
    $(el).trigger('calciteLoaderInputBinding:updated');
  },

  // Subscribe to any changes in the calcite-loader element (if needed in the future)
  subscribe: function(el, callback) {
    $(el).on('calciteLoaderInputBinding:updated', function() {
      Shiny.setInputValue(el.id + "_text", el.getAttribute('text'), { priority: "event" });
      Shiny.setInputValue(el.id + "_value", el.getAttribute('value'), { priority: "event" });
      callback(false);
    });
  },

  // Unsubscribe from changes in the calcite-loader element
  unsubscribe: function(el) {
    $(el).off('.calciteLoaderInputBinding');
  },

  // Allow the server to send updates to the text and value properties
  receiveMessage: function(el, data) {
    if (data.hasOwnProperty('text')) {
      el.setAttribute('text', data.text);
    }
    if (data.hasOwnProperty('value')) {
      el.setAttribute('value', data.value);
    }
    $(el).trigger('calciteLoaderInputBinding:updated');
  },

  // Provide a snapshot of the input's state
  getState: function(el) {
    return {
      text: el.getAttribute('text'),
      value: el.getAttribute('value')
    };
  }
});

// Register the input binding
Shiny.inputBindings.register(calciteLoaderInputBinding, 'shiny.calciteLoader');
