import $ from 'jquery';
import 'shiny';

$(document).on("click", "button.calciteBinding", (evt) => {
  // evt.target is the button that was clicked
  var el = $(evt.target);

  // Set the button's text to its current value plus 1
  el.text(parseInt(el.text()) + 1);

  // Raise an event to signal that the value changed
  el.trigger("change");
});

var calciteBinding = new Shiny.InputBinding();

$.extend(calciteBinding, {
  find: (scope) => {
    return $(scope).find(".calciteBinding");
  },
  getValue: (el) => {
    return parseInt($(el).text());
  },
  setValue: (el, value) => {
    $(el).text(value);
  },
  subscribe: (el, callback) => {
    $(el).on("change.calciteBinding", function(e) {
      callback();
    });
  },
  unsubscribe: (el) => {
    $(el).off(".calciteBinding");
  }
});

Shiny.inputBindings.register(calciteBinding, "calcite.calciteBinding");
