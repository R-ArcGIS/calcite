// Custom Shiny input binding for calcite-input (type="file")
// Works by syncing with a hidden native file input that Shiny handles
(function () {
  const binding = new Shiny.InputBinding();

  $.extend(binding, {
    find: function (scope) {
      return $(scope).find("calcite-input[type='file'][data-input-id]");
    },

    getId: function (el) {
      return el.getAttribute("data-input-id");
    },

    getValue: function (el) {
      // Value comes from the hidden native input, not this element
      return null;
    },

    setValue: function (el, data) {
      // Not supported
    },

    subscribe: function (el, callback) {
      const inputId = el.getAttribute("data-input-id");
      const hiddenInput = document.getElementById(inputId);

      if (!hiddenInput) {
        console.error("Hidden input not found for", inputId);
        return;
      }

      let lastFileList = null;

      const transferFiles = function() {
        const files = el.files;

        // Prevent duplicate uploads by checking if files actually changed
        if (files === lastFileList) {
          return;
        }
        lastFileList = files;

        if (files && files.length > 0) {
          try {
            hiddenInput.files = files;
            $(hiddenInput).trigger("change");
          } catch (e) {
            console.error("Unable to transfer files:", e);
          }
        } else {
          hiddenInput.value = "";
          $(hiddenInput).trigger("change");
        }
      };

      // Only listen to calciteInputInput for immediate response
      $(el).on("calciteInputInput.calciteInputFileInputBinding", transferFiles);
    },

    unsubscribe: function (el) {
      $(el).off(".calciteInputFileInputBinding");
    },

    receiveMessage: function (el, data) {
      // Not supported
    },

    getState: function (el) {
      return null;
    },
  });

  Shiny.inputBindings.register(binding, "calcite.calciteInputFile");
})();
