// Custom Shiny input binding for calcite-input (type="file")
(function () {
  const binding = new Shiny.InputBinding();

  $.extend(binding, {
    find: function (scope) {
      return $(scope).find("calcite-input[type='file']");
    },

    getId: function (el) {
      return el.id;
    },

    getValue: function (el) {
      // Serialize FileList into an array of file metadata
      const fileList = el.files;
      const files = fileList
        ? Array.from(fileList).map(function (f) {
            return {
              name: f.name,
              size: f.size,
              type: f.type,
              lastModified: f.lastModified,
            };
          })
        : [];

      return {
        files: files,
        accept: el.accept,
        multiple: el.multiple,
        disabled: el.disabled,
        loading: el.loading,
        name: el.name,
        required: el.required,
        scale: el.scale,
        status: el.status,
      };
    },

    setValue: function (el, data) {
      Object.entries(data).forEach(([key, value]) => {
        if (key !== "files") {
          el[key] = value;
        }
      });
      $(el).trigger("calciteInputFileInputBinding:updated");
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

      // Fire when a file is selected
      $(el).on(
        "calciteInputChange.calciteInputFileInputBinding",
        function () {
          const currentValue = binding.getValue(el);
          Shiny.setInputValue(el.id, currentValue, { priority: "event" });
          callback(true);
        }
      );

      $(el).on("calciteInputFileInputBinding:updated", function () {
        const currentValue = binding.getValue(el);
        Shiny.setInputValue(el.id, currentValue);
        callback(false);
      });
    },

    unsubscribe: function (el) {
      $(el).off(".calciteInputFileInputBinding");
    },

    receiveMessage: function (el, data) {
      this.setValue(el, data);
    },

    getState: function (el) {
      return this.getValue(el);
    },
  });

  Shiny.inputBindings.register(binding, "calcite.calciteInputFile");
})();
