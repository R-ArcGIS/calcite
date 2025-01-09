var calciteFilterInputBinding = new Shiny.InputBinding();

$.extend(calciteFilterInputBinding, {

  // Locate the calcite-filter elements in the Shiny app's scope
  find: function(scope) {
    return $(scope).find('calcite-filter');
  },

  // Retrieve the element's ID
  getId: function(el) {
    return el.id;
  },

  // Retrieve the value property of the calcite-filter element
  getValue: function(el) {
    return {
      value: el.value,
      items: el.items,  // Include the items property
      filteredItems: el.filteredItems // Include the filteredItems property
    };
  },

  setValue: function(el, data) {
    if (data.hasOwnProperty('value')) el.value = data.value;
    if (data.hasOwnProperty('placeholder')) el.placeholder = data.placeholder;
    if (data.hasOwnProperty('disabled')) el.disabled = data.disabled;
    if (data.hasOwnProperty('scale')) el.setAttribute('scale', data.scale);
    if (data.hasOwnProperty('filterProps')) el.filterProps = data.filterProps;
    if (data.hasOwnProperty('messageOverrides')) el.messageOverrides = data.messageOverrides;
    if (data.hasOwnProperty('items')) el.items = data.items;
    $(el).trigger('calciteFilterInputBinding:updated');
  },

  subscribe: function(el, callback) {
    // Whenever the component changes, send individual properties to Shiny
    $(el).on('calciteFilterChange.calciteFilterInputBinding', function() {
      Shiny.setInputValue(el.id + "_value", el.value); // The filter text
      Shiny.setInputValue(el.id + "_items", el.items); // The items array
      Shiny.setInputValue(el.id + "_filteredItems", el.filteredItems); // The filtered items array
      callback(true); // Notify Shiny that the value has changed
    });

    $(el).on('calciteFilterInputBinding:updated', function() {
      Shiny.setInputValue(el.id + "_value", el.value, { priority: "event" });
      Shiny.setInputValue(el.id + "_items", el.items, { priority: "event" });
      Shiny.setInputValue(el.id + "_filtered_items", el.filteredItems, { priority: "event" });
      callback(false);
    });
  },

  // Unsubscribe from changes in the calcite-filter element
  unsubscribe: function(el) {
    $(el).off('.calciteFilterInputBinding');
  },

  // Allow the server to send updates to the input
  receiveMessage: function(el, data) {
    if (data.hasOwnProperty('value')) {
      this.setValue(el, data.value);
    }
    if (data.hasOwnProperty('placeholder')) {
      el.placeholder = data.placeholder;
    }
    if (data.hasOwnProperty('disabled')) {
      el.disabled = data.disabled;
    }
    if (data.hasOwnProperty('scale')) {
      el.setAttribute('scale', data.scale);
    }
    if (data.hasOwnProperty('filterProps')) {
      el.filterProps = data.filterProps;
    }
    if (data.hasOwnProperty('messageOverrides')) {
      el.messageOverrides = data.messageOverrides;
    }
    if (data.hasOwnProperty('items')) {
      el.items = data.items;
    }
    $(el).trigger('calciteFilterInputBinding:updated');
  },

  // Provide a snapshot of the input's state
  getState: function(el) {
    return {
      value: el.value,
      placeholder: el.placeholder,
      disabled: el.disabled,
      scale: el.getAttribute('scale'),
      filterProps: el.filterProps,
      messageOverrides: el.messageOverrides,
      items: el.items
    };
  }
});

Shiny.inputBindings.register(calciteFilterInputBinding, 'shiny.calciteFilter');

