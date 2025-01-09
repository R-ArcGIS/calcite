// // Create a custom input binding for the calcite-meter component
// var calciteMeterInputBinding = new Shiny.InputBinding();

// $.extend(calciteMeterInputBinding, {
//   // Find the calcite-meter elements in the DOM
//   find: function (scope) {
//     return $(scope).find('calcite-meter');
//   },

//   // Get the component ID
//   getId: function (el) {
//     return el.id;
//   },

//   // Get the component's current state as a dictionary
//   getValue: function (el) {
//     return {
//       appearance: el.getAttribute('appearance'),
//       disabled: el.disabled,
//       fillType: el.getAttribute('fill-type'),
//       form: el.getAttribute('form'),
//       groupSeparator: el.getAttribute('group-separator'),
//       high: el.high,
//       label: el.getAttribute('label'),
//       low: el.low,
//       max: el.max,
//       min: el.min,
//       name: el.getAttribute('name'),
//       numberingSystem: el.getAttribute('numbering-system'),
//       rangeLabels: el.getAttribute('range-labels'),
//       rangeLabelType: el.getAttribute('range-label-type'),
//       scale: el.getAttribute('scale'),
//       unitLabel: el.getAttribute('unit-label'),
//       value: el.value,
//       valueLabel: el.getAttribute('value-label'),
//       valueLabelType: el.getAttribute('value-label-type'),
//       currentPercent: el.getAttribute('current-percent'),
//       effectiveLocale: el.getAttribute('effective-locale'),
//       highActive: el.getAttribute('high-active') === 'true',
//       highPercent: el.getAttribute('high-percent'),
//       lowActive: el.getAttribute('low-active') === 'true',
//       lowPercent: el.getAttribute('low-percent')
//     };
//   },

//   // Set component properties from a dictionary
//   setValue: function (el, data) {
//     for (const [key, value] of Object.entries(data)) {
//       if (key === 'disabled') {
//         el.disabled = value;
//       } else if (['high', 'low', 'max', 'min', 'value'].includes(key)) {
//         el[key] = value; // Directly set numeric/string properties
//       } else {
//         // Convert camelCase to kebab-case for HTML attributes
//         el.setAttribute(key.replace(/([A-Z])/g, '-$1').toLowerCase(), value);
//       }
//     }
//     $(el).trigger('calciteMeterInputBinding:updated');
//   },

//   // Subscribe to events for value changes
//   subscribe: function (el, callback) {
//     $(el).on('change.calciteMeterInputBinding input.calciteMeterInputBinding', function () {
//       callback(true);
//     });

//     $(el).on('calciteMeterInputBinding:updated', function () {
//       callback(false);
//     });
//   },

//   // Unsubscribe from events
//   unsubscribe: function (el) {
//     $(el).off('.calciteMeterInputBinding');
//   },

//   // Receive messages from the server to update properties
//   receiveMessage: function (el, data) {
//     this.setValue(el, data);
//   },

//   // Get the full state of the component
//   getState: function (el) {
//     return this.getValue(el);
//   }
// });

// // Register the custom input binding
// Shiny.inputBindings.register(calciteMeterInputBinding, 'shiny.calciteMeter');

function createCalciteInputBinding(componentNameCamel, componentNameKebab, properties, events) {
  const binding = new Shiny.InputBinding();

  $.extend(binding, {
    // Find all instances of the component in the scope
    find: function (scope) {
      return $(scope).find(componentNameKebab);
    },

    // Get the element's ID
    getId: function (el) {
      return el.id;
    },

    // Collect all properties into a dictionary
    getValue: function (el) {
      const values = {};
      properties.forEach((prop) => {
        values[prop] = el[prop] ?? el.getAttribute(prop); // Fallback to attribute if property is undefined
      });
      return values;
    },

    // Set multiple properties at once
    setValue: function (el, data) {
      Object.entries(data).forEach(([key, value]) => {
        if (properties.includes(key)) {
          el[key] = value;
        }
      });
      $(el).trigger(`${componentNameCamel}InputBinding:updated`);
    },

    // Subscribe to relevant events and update Shiny inputs
    subscribe: function (el, callback) {
      events.forEach((event) => {
        $(el).on(`${event}.${componentNameCamel}InputBinding`, function () {
          const currentValue = binding.getValue(el);

          // Set the full dictionary in Shiny
          Shiny.setInputValue(el.id, currentValue);

          // Set individual properties in Shiny
          for (const [key, value] of Object.entries(currentValue)) {
            Shiny.setInputValue(`${el.id}_${key}`, value);
          }
          callback(true);
        });
      });

      $(el).on(`${componentNameCamel}InputBinding:updated`, function () {
        const currentValue = binding.getValue(el);

        // Set the full dictionary in Shiny
        Shiny.setInputValue(el.id, currentValue);

        // Set individual properties in Shiny
        for (const [key, value] of Object.entries(currentValue)) {
          Shiny.setInputValue(`${el.id}_${key}`, value);
        }
        callback(false);
      });
    },

    // Unsubscribe from events
    unsubscribe: function (el) {
      $(el).off(`.${componentNameCamel}InputBinding`);
    },

    // Allow server-to-client messages to update properties
    receiveMessage: function (el, data) {
      binding.setValue(el, data);
    },

    // Provide a snapshot of the component's state
    getState: function (el) {
      return binding.getValue(el);
    }
  });

  // Register the input binding
  Shiny.inputBindings.register(binding, `shiny.${componentNameCamel}`);
}


createCalciteInputBinding(
  "calciteMeter", // camel-case name
  "calcite-meter", // kebab-case name
  [
    "appearance",
    "disabled",
    "fillType",
    "form",
    "groupSeparator",
    "high",
    "label",
    "low",
    "max",
    "min",
    "name",
    "numberingSystem",
    "rangeLabels",
    "rangeLabelType",
    "scale",
    "unitLabel",
    "value",
    "valueLabel",
    "valueLabelType",
    "currentPercent",
    "effectiveLocale",
    "highActive",
    "highPercent",
    "lowActive",
    "lowPercent"
  ], // properties
  ["calciteMeterChange", "calciteMeterUpdate"] // events
);

