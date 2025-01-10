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
            Shiny.setInputValue(`${el.id}_${key}`, { values: value });
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
          Shiny.setInputValue(`${el.id}_${key}`, { values: value });
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


// Component: calcite-accordion-item
createCalciteInputBinding("calciteAccordionItem", "calcite-accordion-item", ["description", "expanded", "heading", "iconEnd", "iconFlipRtl", "iconStart"], [])

// Component: calcite-accordion
createCalciteInputBinding("calciteAccordion", "calcite-accordion", ["appearance", "iconPosition", "iconType", "scale", "selectionMode"], [])

// Component: calcite-action-bar
createCalciteInputBinding("calciteActionBar", "calcite-action-bar", ["actionsEndGroupLabel", "expandDisabled", "expanded", "layout", "messageOverrides", "overflowActionsDisabled", "overlayPositioning", "position", "scale"], ["calciteActionBarToggle"])

// Component: calcite-action-group
createCalciteInputBinding("calciteActionGroup", "calcite-action-group", ["columns", "expanded", "label", "layout", "menuFlipPlacements", "menuOpen", "menuPlacement", "messageOverrides", "overlayPositioning", "scale"], [])

// Component: calcite-action-menu
createCalciteInputBinding("calciteActionMenu", "calcite-action-menu", ["appearance", "expanded", "flipPlacements", "label (required)", "open", "overlayPositioning", "placement", "scale"], ["calciteActionMenuOpen"])

// Component: calcite-action-pad
createCalciteInputBinding("calciteActionPad", "calcite-action-pad", ["actionsEndGroupLabel", "expandDisabled", "expanded", "layout", "messageOverrides", "overlayPositioning", "position", "scale"], ["calciteActionPadToggle"])

// Component: calcite-action
createCalciteInputBinding("calciteAction", "calcite-action", ["active", "alignment", "appearance", "compact", "disabled", "icon", "iconFlipRtl", "indicator", "label", "loading", "messageOverrides", "scale", "text (required)", "textEnabled"], [])

// Component: calcite-alert
createCalciteInputBinding("calciteAlert", "calcite-alert", ["autoClose", "autoCloseDuration", "icon", "iconFlipRtl", "kind", "label (required)", "messageOverrides", "numberingSystem", "open", "placement", "queue", "scale"], ["calciteAlertBeforeClose", "calciteAlertBeforeOpen", "calciteAlertClose", "calciteAlertOpen"])

// Component: calcite-autocomplete-item-group
createCalciteInputBinding("calciteAutocompleteItemGroup", "calcite-autocomplete-item-group", [], [])

// Component: calcite-autocomplete-item
createCalciteInputBinding("calciteAutocompleteItem", "calcite-autocomplete-item", [], [])

// Component: calcite-autocomplete
createCalciteInputBinding("calciteAutocomplete", "calcite-autocomplete", [], [])

// Component: calcite-avatar
createCalciteInputBinding("calciteAvatar", "calcite-avatar", ["fullName", "label", "scale", "thumbnail", "userId", "username"], [])

// Component: calcite-block-section
createCalciteInputBinding("calciteBlockSection", "calcite-block-section", ["iconEnd", "iconFlipRtl", "iconStart", "messageOverrides", "open", "status", "text", "toggleDisplay"], ["calciteBlockSectionToggle"])

// Component: calcite-block
createCalciteInputBinding("calciteBlock", "calcite-block", ["collapsible", "description", "disabled", "dragHandle", "heading (required)", "headingLevel", "iconEnd", "iconFlipRtl", "iconStart", "loading", "menuFlipPlacements", "menuPlacement", "messageOverrides", "open", "overlayPositioning", "status"], ["calciteBlockBeforeClose", "calciteBlockBeforeOpen", "calciteBlockClose", "calciteBlockOpen", "calciteBlockToggle"])

// Component: calcite-button
createCalciteInputBinding("calciteButton", "calcite-button", ["alignment", "appearance", "disabled", "download", "form", "href", "iconEnd", "iconFlipRtl", "iconStart", "kind", "label", "loading", "messageOverrides", "name", "rel", "round", "scale", "splitChild", "target", "type", "width"], [])

// Component: calcite-card-group
createCalciteInputBinding("calciteCardGroup", "calcite-card-group", ["disabled", "label (required)", "selectedItems", "selectionMode"], ["calciteCardGroupSelect"])

// Component: calcite-card
createCalciteInputBinding("calciteCard", "calcite-card", ["disabled", "label", "loading", "messageOverrides", "selectable", "selected", "thumbnailPosition"], ["calciteCardSelect"])

// Component: calcite-carousel-item
createCalciteInputBinding("calciteCarouselItem", "calcite-carousel-item", ["label (required)", "selected"], [])

// Component: calcite-carousel
createCalciteInputBinding("calciteCarousel", "calcite-carousel", ["arrowType", "autoplay", "autoplayDuration", "controlOverlay", "disabled", "label (required)", "messageOverrides", "selectedItem"], ["calciteCarouselChange", "calciteCarouselPause", "calciteCarouselPlay", "calciteCarouselResume", "calciteCarouselStop"])

// Component: calcite-checkbox
createCalciteInputBinding("calciteCheckbox", "calcite-checkbox", ["checked", "disabled", "form", "guid", "indeterminate", "label", "name", "required", "scale", "status", "validity", "value"], ["calciteCheckboxChange"])

// Component: calcite-chip-group
createCalciteInputBinding("calciteChipGroup", "calcite-chip-group", ["disabled", "label (required)", "scale", "selectedItems", "selectionMode"], ["calciteChipGroupSelect"])

// Component: calcite-chip
createCalciteInputBinding("calciteChip", "calcite-chip", ["appearance", "closable", "closed", "disabled", "icon", "iconFlipRtl", "kind", "label", "messageOverrides", "scale", "selected", "value (required)"], ["calciteChipClose", "calciteChipSelect"])

// Component: calcite-color-picker-hex-input
createCalciteInputBinding("calciteColorPickerHexInput", "calcite-color-picker-hex-input", ["allowEmpty", "alphaChannel", "hexLabel", "numberingSystem", "scale", "value"], ["calciteColorPickerHexInputChange"])

// Component: calcite-color-picker-swatch
createCalciteInputBinding("calciteColorPickerSwatch", "calcite-color-picker-swatch", ["active", "color", "scale"], [])

// Component: calcite-color-picker
createCalciteInputBinding("calciteColorPicker", "calcite-color-picker", ["allowEmpty", "alphaChannel", "channelsDisabled", "clearable", "disabled", "format", "hexDisabled", "hideChannels", "hideHex", "hideSaved", "messageOverrides", "numberingSystem", "savedDisabled", "scale", "storageId", "value"], ["calciteColorPickerChange", "calciteColorPickerInput"])

// Component: calcite-combobox-item-group
createCalciteInputBinding("calciteComboboxItemGroup", "calcite-combobox-item-group", ["ancestors", "label (required)"], [])

// Component: calcite-combobox-item
createCalciteInputBinding("calciteComboboxItem", "calcite-combobox-item", ["active", "ancestors", "description", "disabled", "filterDisabled", "guid", "heading", "icon", "iconFlipRtl", "label", "metadata", "selected", "shortHeading", "textLabel (required)", "value (required)"], ["calciteComboboxItemChange"])

// Component: calcite-combobox
createCalciteInputBinding("calciteCombobox", "calcite-combobox", ["allowCustomValues", "clearDisabled", "disabled", "filterText", "filteredItems", "flipPlacements", "form", "label (required)", "maxItems", "messageOverrides", "name", "open", "overlayPositioning", "placeholder", "placeholderIcon", "placeholderIconFlipRtl", "readOnly", "required", "scale", "selectedItems", "selectionDisplay", "selectionMode", "status", "validationIcon", "validationMessage", "validity", "value"], ["calciteComboboxBeforeClose", "calciteComboboxBeforeOpen", "calciteComboboxChange", "calciteComboboxChipClose", "calciteComboboxClose", "calciteComboboxFilterChange", "calciteComboboxOpen"])

// Component: calcite-date-picker-day
createCalciteInputBinding("calciteDatePickerDay", "calcite-date-picker-day", ["active", "currentMonth", "day (required)", "disabled", "endOfRange", "highlighted", "range", "rangeHover", "scale", "selected", "startOfRange", "value"], ["calciteInternalDaySelect"])

// Component: calcite-date-picker-month-header
createCalciteInputBinding("calciteDatePickerMonthHeader", "calcite-date-picker-month-header", ["activeDate", "headingLevel", "localeData", "max", "min", "monthStyle", "scale", "selectedDate"], [])

// Component: calcite-date-picker-month
createCalciteInputBinding("calciteDatePickerMonth", "calcite-date-picker-month", ["activeDate", "endDate", "headingLevel", "hoverRange", "max", "min", "monthStyle", "range", "scale", "selectedDate", "startDate"], [])

// Component: calcite-date-picker
createCalciteInputBinding("calciteDatePicker", "calcite-date-picker", ["activeDate", "activeRange", "headingLevel", "layout", "max", "maxAsDate", "messageOverrides", "min", "minAsDate", "monthStyle", "numberingSystem", "proximitySelectionDisabled", "range", "scale", "value", "valueAsDate"], ["calciteDatePickerChange", "calciteDatePickerRangeChange"])

// Component: calcite-dialog
createCalciteInputBinding("calciteDialog", "calcite-dialog", ["beforeClose", "closeDisabled", "description", "dragEnabled", "escapeDisabled", "heading", "headingLevel", "kind", "loading", "menuOpen", "messageOverrides", "modal", "open", "outsideCloseDisabled", "overlayPositioning", "placement", "resizable", "scale", "widthScale"], ["calciteDialogBeforeClose", "calciteDialogBeforeOpen", "calciteDialogClose", "calciteDialogOpen", "calciteDialogScroll"])

// Component: calcite-dropdown-group
createCalciteInputBinding("calciteDropdownGroup", "calcite-dropdown-group", ["groupTitle", "selectionMode"], [])

// Component: calcite-dropdown-item
createCalciteInputBinding("calciteDropdownItem", "calcite-dropdown-item", ["disabled", "href", "iconEnd", "iconFlipRtl", "iconStart", "label", "rel", "selected", "target"], ["calciteDropdownItemSelect"])

// Component: calcite-dropdown
createCalciteInputBinding("calciteDropdown", "calcite-dropdown", ["closeOnSelectDisabled", "disabled", "flipPlacements", "maxItems", "open", "overlayPositioning", "placement", "scale", "selectedItems", "type", "widthScale"], ["calciteDropdownBeforeClose", "calciteDropdownBeforeOpen", "calciteDropdownClose", "calciteDropdownOpen", "calciteDropdownSelect"])

// Component: calcite-fab
createCalciteInputBinding("calciteFab", "calcite-fab", ["appearance", "disabled", "icon", "iconFlipRtl", "kind", "label", "loading", "scale", "text", "textEnabled"], [])

// Component: calcite-filter
createCalciteInputBinding("calciteFilter", "calcite-filter", ["disabled", "filterProps", "filteredItems", "items", "messageOverrides", "placeholder", "scale", "value"], ["calciteFilterChange"])

// Component: calcite-flow-item
createCalciteInputBinding("calciteFlowItem", "calcite-flow-item", ["beforeBack", "beforeClose", "closable", "closed", "collapsed", "collapsible", "description", "disabled", "heading", "headingLevel", "loading", "menuOpen", "messageOverrides", "overlayPositioning", "scale"], ["calciteFlowItemBack", "calciteFlowItemClose", "calciteFlowItemScroll", "calciteFlowItemToggle"])

// Component: calcite-flow
createCalciteInputBinding("calciteFlow", "calcite-flow", [], [])

// Component: calcite-functional
createCalciteInputBinding("calciteFunctional", "calcite-functional", [], [])

// Component: calcite-graph
createCalciteInputBinding("calciteGraph", "calcite-graph", ["colorStops", "data", "highlightMax", "highlightMin", "max (required)", "min (required)"], [])

// Component: calcite-handle
createCalciteInputBinding("calciteHandle", "calcite-handle", ["disabled", "dragHandle", "messageOverrides", "selected"], ["calciteHandleChange", "calciteHandleNudge"])

// Component: calcite-icon
createCalciteInputBinding("calciteIcon", "calcite-icon", ["flipRtl", "icon", "scale", "textLabel"], [])

// Component: calcite-inline-editable
createCalciteInputBinding("calciteInlineEditable", "calcite-inline-editable", ["afterConfirm", "controls", "disabled", "editingEnabled", "loading", "messageOverrides", "scale"], ["calciteInlineEditableEditCancel", "calciteInlineEditableEditConfirm"])

// Component: calcite-input-date-picker
createCalciteInputBinding("calciteInputDatePicker", "calcite-input-date-picker", ["disabled", "flipPlacements", "focusTrapDisabled", "form", "headingLevel", "layout", "max", "maxAsDate", "messageOverrides", "min", "minAsDate", "monthStyle", "name", "numberingSystem", "open", "overlayPositioning", "placement", "proximitySelectionDisabled", "range", "readOnly", "required", "scale", "status", "validationIcon", "validationMessage", "validity", "value", "valueAsDate"], ["calciteInputDatePickerBeforeClose", "calciteInputDatePickerBeforeOpen", "calciteInputDatePickerChange", "calciteInputDatePickerClose", "calciteInputDatePickerOpen"])

// Component: calcite-input-message
createCalciteInputBinding("calciteInputMessage", "calcite-input-message", ["icon", "iconFlipRtl", "scale", "status"], [])

// Component: calcite-input-number
createCalciteInputBinding("calciteInputNumber", "calcite-input-number", ["alignment", "autocomplete", "autofocus", "clearable", "disabled", "form", "groupSeparator", "icon", "iconFlipRtl", "integer", "label", "loading", "max", "maxLength", "messageOverrides", "min", "minLength", "name", "numberButtonType", "numberingSystem", "placeholder", "prefixText", "readOnly", "required", "scale", "status", "step", "suffixText", "validationIcon", "validationMessage", "validity", "value"], ["calciteInputNumberChange", "calciteInputNumberInput"])

// Component: calcite-input-text
createCalciteInputBinding("calciteInputText", "calcite-input-text", ["alignment", "autocomplete", "autofocus", "clearable", "disabled", "form", "icon", "iconFlipRtl", "label", "loading", "maxLength", "messageOverrides", "minLength", "name", "pattern", "placeholder", "prefixText", "readOnly", "required", "scale", "status", "suffixText", "validationIcon", "validationMessage", "validity", "value"], ["calciteInputTextChange", "calciteInputTextInput"])

// Component: calcite-input-time-picker
createCalciteInputBinding("calciteInputTimePicker", "calcite-input-time-picker", ["disabled", "focusTrapDisabled", "form", "max", "messageOverrides", "min", "name", "numberingSystem", "open", "overlayPositioning", "placement", "readOnly", "required", "scale", "status", "step", "validationIcon", "validationMessage", "validity", "value"], ["calciteInputTimePickerBeforeClose", "calciteInputTimePickerBeforeOpen", "calciteInputTimePickerChange", "calciteInputTimePickerClose", "calciteInputTimePickerOpen"])

// Component: calcite-input-time-zone
createCalciteInputBinding("calciteInputTimeZone", "calcite-input-time-zone", ["clearable", "disabled", "form", "maxItems", "messageOverrides", "mode", "name", "offsetStyle", "open", "overlayPositioning", "readOnly", "referenceDate", "scale", "status", "validationIcon", "validationMessage", "validity", "value"], ["calciteInputTimeZoneBeforeClose", "calciteInputTimeZoneBeforeOpen", "calciteInputTimeZoneChange", "calciteInputTimeZoneClose", "calciteInputTimeZoneOpen"])

// Component: calcite-input
createCalciteInputBinding("calciteInput", "calcite-input", ["accept", "alignment", "autocomplete", "autofocus", "clearable", "disabled", "files", "form", "groupSeparator", "icon", "iconFlipRtl", "label", "loading", "max", "maxLength", "messageOverrides", "min", "minLength", "multiple", "name", "numberButtonType", "numberingSystem", "pattern", "placeholder", "prefixText", "readOnly", "required", "scale", "status", "step", "suffixText", "type", "validationIcon", "validationMessage", "validity", "value"], ["calciteInputChange", "calciteInputInput"])

// Component: calcite-label
createCalciteInputBinding("calciteLabel", "calcite-label", ["alignment", "for", "layout", "scale"], [])

// Component: calcite-link
createCalciteInputBinding("calciteLink", "calcite-link", ["disabled", "download", "href", "iconEnd", "iconFlipRtl", "iconStart", "rel", "target"], [])

// Component: calcite-list-item-group
createCalciteInputBinding("calciteListItemGroup", "calcite-list-item-group", ["disabled", "heading"], ["calciteInternalListItemGroupDefaultSlotChange"])

// Component: calcite-list-item
createCalciteInputBinding("calciteListItem", "calcite-list-item", ["closable", "closed", "description", "disabled", "dragDisabled", "dragSelected", "label", "messageOverrides", "metadata", "open", "selected", "unavailable", "value"], ["calciteListItemClose", "calciteListItemDragHandleChange", "calciteListItemSelect", "calciteListItemToggle"])

// Component: calcite-list
createCalciteInputBinding("calciteList", "calcite-list", ["canPull", "canPut", "disabled", "dragEnabled", "filterEnabled", "filterPlaceholder", "filterProps", "filterText", "filteredData", "filteredItems", "group", "interactionMode", "label", "loading", "messageOverrides", "numberingSystem", "selectedItems", "selectionAppearance", "selectionMode"], ["calciteInternalListDefaultSlotChange", "calciteListChange", "calciteListDragEnd", "calciteListDragStart", "calciteListFilter", "calciteListOrderChange"])

// Component: calcite-loader
createCalciteInputBinding("calciteLoader", "calcite-loader", ["inline", "label (required)", "scale", "text", "type", "value"], [])

// Component: calcite-menu-item
createCalciteInputBinding("calciteMenuItem", "calcite-menu-item", ["active", "breadcrumb", "href", "iconEnd", "iconFlipRtl", "iconStart", "label (required)", "messageOverrides", "open", "rel", "target", "text"], ["calciteMenuItemSelect"])

// Component: calcite-menu
createCalciteInputBinding("calciteMenu", "calcite-menu", ["label (required)", "layout", "messageOverrides"], [])

// Component: calcite-meter
createCalciteInputBinding("calciteMeter", "calcite-meter", ["appearance", "disabled", "fillType", "form", "groupSeparator", "high", "label (required)", "low", "max", "min", "name", "numberingSystem", "rangeLabelType", "rangeLabels", "scale", "unitLabel", "value", "valueLabel", "valueLabelType"], [])

// Component: calcite-modal
createCalciteInputBinding("calciteModal", "calcite-modal", ["beforeClose", "closeButtonDisabled", "docked", "escapeDisabled", "focusTrapDisabled", "fullscreen", "kind", "messageOverrides", "open", "outsideCloseDisabled", "scale", "widthScale"], ["calciteModalBeforeClose", "calciteModalBeforeOpen", "calciteModalClose", "calciteModalOpen"])

// Component: calcite-navigation-logo
createCalciteInputBinding("calciteNavigationLogo", "calcite-navigation-logo", ["active", "description", "heading", "headingLevel", "href", "icon", "iconFlipRtl", "label", "rel", "target", "thumbnail"], [])

// Component: calcite-navigation-user
createCalciteInputBinding("calciteNavigationUser", "calcite-navigation-user", ["active", "fullName", "label", "textDisabled", "thumbnail", "userId", "username"], [])

// Component: calcite-navigation
createCalciteInputBinding("calciteNavigation", "calcite-navigation", ["label", "navigationAction"], ["calciteNavigationActionSelect"])

// Component: calcite-notice
createCalciteInputBinding("calciteNotice", "calcite-notice", ["closable", "icon", "iconFlipRtl", "kind", "messageOverrides", "open", "scale", "width"], ["calciteNoticeBeforeClose", "calciteNoticeBeforeOpen", "calciteNoticeClose", "calciteNoticeOpen"])

// Component: calcite-option-group
createCalciteInputBinding("calciteOptionGroup", "calcite-option-group", ["disabled", "label (required)"], [])

// Component: calcite-option
createCalciteInputBinding("calciteOption", "calcite-option", ["disabled", "label", "selected", "value"], [])

// Component: calcite-pagination
createCalciteInputBinding("calcitePagination", "calcite-pagination", ["groupSeparator", "messageOverrides", "numberingSystem", "pageSize", "scale", "startItem", "totalItems"], ["calcitePaginationChange"])

// Component: calcite-panel
createCalciteInputBinding("calcitePanel", "calcite-panel", ["beforeClose", "closable", "closed", "collapsed", "collapsible", "description", "disabled", "heading", "headingLevel", "loading", "menuFlipPlacements", "menuOpen", "menuPlacement", "messageOverrides", "overlayPositioning", "scale"], ["calcitePanelClose", "calcitePanelScroll", "calcitePanelToggle"])

// Component: calcite-popover
createCalciteInputBinding("calcitePopover", "calcite-popover", ["autoClose", "closable", "flipDisabled", "flipPlacements", "focusTrapDisabled", "heading", "headingLevel", "label (required)", "messageOverrides", "offsetDistance", "offsetSkidding", "open", "overlayPositioning", "placement", "pointerDisabled", "referenceElement (required)", "scale", "triggerDisabled"], ["calcitePopoverBeforeClose", "calcitePopoverBeforeOpen", "calcitePopoverClose", "calcitePopoverOpen"])

// Component: calcite-progress
createCalciteInputBinding("calciteProgress", "calcite-progress", ["label", "reversed", "text", "type", "value"], [])

// Component: calcite-radio-button-group
createCalciteInputBinding("calciteRadioButtonGroup", "calcite-radio-button-group", ["disabled", "layout", "name (required)", "required", "scale", "selectedItem", "status", "validationIcon", "validationMessage"], ["calciteRadioButtonGroupChange"])

// Component: calcite-radio-button
createCalciteInputBinding("calciteRadioButton", "calcite-radio-button", ["checked", "disabled", "form", "guid", "name", "required", "scale", "value (required)"], ["calciteRadioButtonChange"])

// Component: calcite-rating
createCalciteInputBinding("calciteRating", "calcite-rating", ["average", "count", "disabled", "form", "messageOverrides", "name", "readOnly", "scale", "showChip", "value"], ["calciteRatingChange"])

// Component: calcite-scrim
createCalciteInputBinding("calciteScrim", "calcite-scrim", ["loading", "messageOverrides"], [])

// Component: calcite-segmented-control-item
createCalciteInputBinding("calciteSegmentedControlItem", "calcite-segmented-control-item", ["checked", "iconEnd", "iconFlipRtl", "iconStart", "value"], [])

// Component: calcite-segmented-control
createCalciteInputBinding("calciteSegmentedControl", "calcite-segmented-control", ["appearance", "disabled", "form", "layout", "name", "required", "scale", "selectedItem", "status", "validationIcon", "validationMessage", "validity", "value", "width"], ["calciteSegmentedControlChange"])

// Component: calcite-select
createCalciteInputBinding("calciteSelect", "calcite-select", ["disabled", "form", "label (required)", "name", "required", "scale", "selectedOption", "status", "validationIcon", "validationMessage", "validity", "value", "width"], ["calciteSelectChange"])

// Component: calcite-sheet
createCalciteInputBinding("calciteSheet", "calcite-sheet", ["beforeClose", "displayMode", "escapeDisabled", "focusTrapDisabled", "heightScale", "label (required)", "open", "outsideCloseDisabled", "position", "widthScale"], ["calciteSheetBeforeClose", "calciteSheetBeforeOpen", "calciteSheetClose", "calciteSheetOpen"])

// Component: calcite-shell-center-row
createCalciteInputBinding("calciteShellCenterRow", "calcite-shell-center-row", ["detached", "heightScale", "position"], [])

// Component: calcite-shell-panel
createCalciteInputBinding("calciteShellPanel", "calcite-shell-panel", ["collapsed", "detached", "detachedHeightScale", "displayMode", "heightScale", "layout", "messageOverrides", "position", "resizable", "widthScale"], [])

// Component: calcite-shell
createCalciteInputBinding("calciteShell", "calcite-shell", ["contentBehind"], [])

// Component: calcite-slider
createCalciteInputBinding("calciteSlider", "calcite-slider", ["disabled", "fillPlacement", "form", "groupSeparator", "hasHistogram", "histogram", "histogramStops", "labelFormatter", "labelHandles", "labelTicks", "max", "maxLabel", "maxValue", "min", "minLabel", "minValue", "mirrored", "name", "numberingSystem", "pageStep", "precise", "required", "scale", "snap", "step", "ticks", "value"], ["calciteSliderChange", "calciteSliderInput"])

// Component: calcite-sort-handle
createCalciteInputBinding("calciteSortHandle", "calcite-sort-handle", [], [])

// Component: calcite-sortable-list
createCalciteInputBinding("calciteSortableList", "calcite-sortable-list", ["canPull", "canPut", "disabled", "dragSelector", "group", "handleSelector", "layout", "loading"], ["calciteListOrderChange"])

// Component: calcite-split-button
createCalciteInputBinding("calciteSplitButton", "calcite-split-button", ["appearance", "disabled", "dropdownIconType", "dropdownLabel", "flipPlacements", "kind", "loading", "overlayPositioning", "placement", "primaryIconEnd", "primaryIconFlipRtl", "primaryIconStart", "primaryLabel", "primaryText", "scale", "width"], ["calciteSplitButtonPrimaryClick", "calciteSplitButtonSecondaryClick"])

// Component: calcite-stack
createCalciteInputBinding("calciteStack", "calcite-stack", ["disabled"], [])

// Component: calcite-stepper-item
createCalciteInputBinding("calciteStepperItem", "calcite-stepper-item", ["complete", "description", "disabled", "error", "heading", "iconFlipRtl", "messageOverrides", "selected"], ["calciteStepperItemSelect"])

// Component: calcite-stepper
createCalciteInputBinding("calciteStepper", "calcite-stepper", ["icon", "layout", "messageOverrides", "numbered", "numberingSystem", "scale", "selectedItem"], ["calciteStepperChange", "calciteStepperItemChange"])

// Component: calcite-switch
createCalciteInputBinding("calciteSwitch", "calcite-switch", ["checked", "disabled", "form", "label", "name", "scale", "value"], ["calciteSwitchChange"])

// Component: calcite-tab-nav
createCalciteInputBinding("calciteTabNav", "calcite-tab-nav", ["messageOverrides", "selectedTitle", "storageId", "syncId"], ["calciteTabChange"])

// Component: calcite-tab-title
createCalciteInputBinding("calciteTabTitle", "calcite-tab-title", ["closable", "closed", "disabled", "iconEnd", "iconFlipRtl", "iconStart", "messageOverrides", "selected", "tab"], ["calciteTabsActivate", "calciteTabsClose"])

// Component: calcite-tab
createCalciteInputBinding("calciteTab", "calcite-tab", ["selected", "tab"], [])

// Component: calcite-table-cell
createCalciteInputBinding("calciteTableCell", "calcite-table-cell", ["alignment", "colSpan", "messageOverrides", "rowSpan"], [])

// Component: calcite-table-header
createCalciteInputBinding("calciteTableHeader", "calcite-table-header", ["alignment", "colSpan", "description", "heading", "messageOverrides", "rowSpan"], [])

// Component: calcite-table-row
createCalciteInputBinding("calciteTableRow", "calcite-table-row", ["alignment", "disabled", "selected"], ["calciteTableRowSelect"])

// Component: calcite-table
createCalciteInputBinding("calciteTable", "calcite-table", ["bordered", "caption (required)", "groupSeparator", "interactionMode", "layout", "messageOverrides", "numbered", "numberingSystem", "pageSize", "scale", "selectedItems", "selectionDisplay", "selectionMode", "striped", "zebra"], ["calciteTablePageChange", "calciteTableSelect"])

// Component: calcite-tabs
createCalciteInputBinding("calciteTabs", "calcite-tabs", ["bordered", "layout", "position", "scale"], [])

// Component: calcite-text-area
createCalciteInputBinding("calciteTextArea", "calcite-text-area", ["columns", "disabled", "form", "groupSeparator", "label", "maxLength", "messageOverrides", "minLength", "name", "numberingSystem", "placeholder", "readOnly", "required", "resize", "rows", "scale", "status", "validationIcon", "validationMessage", "validity", "value", "wrap"], ["calciteTextAreaChange", "calciteTextAreaInput"])

// Component: calcite-tile-group
createCalciteInputBinding("calciteTileGroup", "calcite-tile-group", ["alignment", "disabled", "label (required)", "layout", "scale", "selectedItems", "selectionAppearance", "selectionMode"], ["calciteTileGroupSelect"])

// Component: calcite-tile-select-group
createCalciteInputBinding("calciteTileSelectGroup", "calcite-tile-select-group", ["disabled", "layout"], [])

// Component: calcite-tile-select
createCalciteInputBinding("calciteTileSelect", "calcite-tile-select", ["checked", "description", "disabled", "heading", "icon", "iconFlipRtl", "inputAlignment", "inputEnabled", "name", "type", "value", "width"], ["calciteTileSelectChange"])

// Component: calcite-tile
createCalciteInputBinding("calciteTile", "calcite-tile", ["active", "alignment", "description", "disabled", "embed", "heading", "href", "icon", "iconFlipRtl", "label", "scale", "selected"], ["calciteTileSelect"])

// Component: calcite-time-picker
createCalciteInputBinding("calciteTimePicker", "calcite-time-picker", ["messageOverrides", "numberingSystem", "scale", "step", "value"], [])

// Component: calcite-tip-group
createCalciteInputBinding("calciteTipGroup", "calcite-tip-group", ["groupTitle"], [])

// Component: calcite-tip-manager
createCalciteInputBinding("calciteTipManager", "calcite-tip-manager", ["closed", "headingLevel", "messageOverrides"], ["calciteTipManagerClose"])

// Component: calcite-tip
createCalciteInputBinding("calciteTip", "calcite-tip", ["closeDisabled", "closed", "heading", "headingLevel", "messageOverrides", "selected"], ["calciteTipDismiss"])

// Component: calcite-tooltip
createCalciteInputBinding("calciteTooltip", "calcite-tooltip", ["closeOnClick", "label", "offsetDistance", "offsetSkidding", "open", "overlayPositioning", "placement", "referenceElement"], ["calciteTooltipBeforeClose", "calciteTooltipBeforeOpen", "calciteTooltipClose", "calciteTooltipOpen"])

// Component: calcite-tree-item
createCalciteInputBinding("calciteTreeItem", "calcite-tree-item", ["disabled", "expanded", "iconFlipRtl", "iconStart", "label", "selected"], [])

// Component: calcite-tree
createCalciteInputBinding("calciteTree", "calcite-tree", ["lines", "scale", "selectedItems", "selectionMode"], ["calciteTreeSelect"])


