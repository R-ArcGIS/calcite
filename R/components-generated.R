#' @export
#' @rdname components
calciteIcon <- function(id, ..., .noWS = NULL, .renderHook = NULL) {

  dots <- rlang::dots_list(...)
  dots_names <- names(dots)
  known_properties <- c("icon", "flip-rtl", "scale", "text-label", "path-data", "visible")
  valid_names <- dots_names %in% c("", known_properties)
  bad_names <- dots_names[!valid_names]

  if (!all(valid_names)) {
    cli::cli_abort(
      c(
        "Unexpected attribute{?s}: {.code {bad_names}}",
        "i" = "expected one of {.var {known_properties}}"
      )
    )
  }

  htmltools::tag("calcite-icon", c(id = id, dots), .noWS = .noWS, .renderHook = .renderHook)
}
#' @export
#' @rdname components
calciteList <- function(id, ..., .noWS = NULL, .renderHook = NULL) {

  dots <- rlang::dots_list(...)
  dots_names <- names(dots)
  known_properties <- c(
  "disabled", "can-pull", "can-put", "drag-enabled", "group", "filter-enabled",
  "filtered-items", "filtered-data", "filter-placeholder", "filter-text",
  "label", "loading", "message-overrides", "messages", "numbering-system",
  "openable", "selected-items", "selection-mode", "selection-appearance",
  "effective-locale", "default-messages", "assistive-text", "data-for-filter",
  "has-filter-actions-end", "has-filter-actions-start", "has-filter-no-results",
  "set-focus"
)
  valid_names <- dots_names %in% c("", known_properties)
  bad_names <- dots_names[!valid_names]

  if (!all(valid_names)) {
    cli::cli_abort(
      c(
        "Unexpected attribute{?s}: {.code {bad_names}}",
        "i" = "expected one of {.var {known_properties}}"
      )
    )
  }

  htmltools::tag("calcite-list", c(id = id, dots), .noWS = .noWS, .renderHook = .renderHook)
}
#' @export
#' @rdname components
calciteValueList <- function(id, ..., .noWS = NULL, .renderHook = NULL) {

  dots <- rlang::dots_list(...)
  dots_names <- names(dots)
  known_properties <- c(
  "disabled", "can-pull", "can-put", "drag-enabled", "filtered-items",
  "filtered-data", "filter-enabled", "filter-placeholder", "filter-text",
  "group", "loading", "multiple", "selection-follows-focus",
  "message-overrides", "messages", "data-for-filter", "default-messages",
  "effective-locale", "selected-values", "get-selected-items", "set-focus"
)
  valid_names <- dots_names %in% c("", known_properties)
  bad_names <- dots_names[!valid_names]

  if (!all(valid_names)) {
    cli::cli_abort(
      c(
        "Unexpected attribute{?s}: {.code {bad_names}}",
        "i" = "expected one of {.var {known_properties}}"
      )
    )
  }

  htmltools::tag("calcite-value-list", c(id = id, dots), .noWS = .noWS, .renderHook = .renderHook)
}
#' @export
#' @rdname components
calciteBlock <- function(id, ..., .noWS = NULL, .renderHook = NULL) {

  dots <- rlang::dots_list(...)
  dots_names <- names(dots)
  known_properties <- c(
  "collapsible", "disabled", "drag-handle", "heading", "heading-level",
  "loading", "open", "status", "description", "messages", "message-overrides",
  "overlay-positioning", "effective-locale", "default-messages", "set-focus"
)
  valid_names <- dots_names %in% c("", known_properties)
  bad_names <- dots_names[!valid_names]

  if (!all(valid_names)) {
    cli::cli_abort(
      c(
        "Unexpected attribute{?s}: {.code {bad_names}}",
        "i" = "expected one of {.var {known_properties}}"
      )
    )
  }

  htmltools::tag("calcite-block", c(id = id, dots), .noWS = .noWS, .renderHook = .renderHook)
}
#' @export
#' @rdname components
calciteInputDatePicker <- function(id, ..., .noWS = NULL, .renderHook = NULL) {

  dots <- rlang::dots_list(...)
  dots_names <- names(dots)
  known_properties <- c(
  "disabled", "focus-trap-disabled", "form", "read-only", "value",
  "flip-placements", "heading-level", "value-as-date", "message-overrides",
  "messages", "min-as-date", "max-as-date", "min", "max", "open",
  "validation-message", "validation-icon", "name", "numbering-system", "scale",
  "status", "placement", "range", "required", "overlay-positioning",
  "proximity-selection-disabled", "layout", "date-picker-active-date",
  "default-messages", "effective-locale", "focused-input", "locale-data",
  "set-focus", "reposition"
)
  valid_names <- dots_names %in% c("", known_properties)
  bad_names <- dots_names[!valid_names]

  if (!all(valid_names)) {
    cli::cli_abort(
      c(
        "Unexpected attribute{?s}: {.code {bad_names}}",
        "i" = "expected one of {.var {known_properties}}"
      )
    )
  }

  htmltools::tag("calcite-input-date-picker", c(id = id, dots), .noWS = .noWS, .renderHook = .renderHook)
}
#' @export
#' @rdname components
calciteAction <- function(id, ..., .noWS = NULL, .renderHook = NULL) {

  dots <- rlang::dots_list(...)
  dots_names <- names(dots)
  known_properties <- c(
  "active", "alignment", "appearance", "compact", "disabled", "icon",
  "icon-flip-rtl", "indicator", "label", "loading", "scale", "text",
  "text-enabled", "messages", "message-overrides", "effective-locale",
  "default-messages", "set-focus"
)
  valid_names <- dots_names %in% c("", known_properties)
  bad_names <- dots_names[!valid_names]

  if (!all(valid_names)) {
    cli::cli_abort(
      c(
        "Unexpected attribute{?s}: {.code {bad_names}}",
        "i" = "expected one of {.var {known_properties}}"
      )
    )
  }

  htmltools::tag("calcite-action", c(id = id, dots), .noWS = .noWS, .renderHook = .renderHook)
}
#' @export
#' @rdname components
calciteActionMenu <- function(id, ..., .noWS = NULL, .renderHook = NULL) {

  dots <- rlang::dots_list(...)
  dots_names <- names(dots)
  known_properties <- c(
  "appearance", "expanded", "flip-placements", "label", "open",
  "overlay-positioning", "placement", "scale", "menu-button-el",
  "active-menu-item-index", "set-focus"
)
  valid_names <- dots_names %in% c("", known_properties)
  bad_names <- dots_names[!valid_names]

  if (!all(valid_names)) {
    cli::cli_abort(
      c(
        "Unexpected attribute{?s}: {.code {bad_names}}",
        "i" = "expected one of {.var {known_properties}}"
      )
    )
  }

  htmltools::tag("calcite-action-menu", c(id = id, dots), .noWS = .noWS, .renderHook = .renderHook)
}
#' @export
#' @rdname components
calciteFlowItem <- function(id, ..., .noWS = NULL, .renderHook = NULL) {

  dots <- rlang::dots_list(...)
  dots_names <- names(dots)
  known_properties <- c(
  "closable", "closed", "collapsed", "collapse-direction", "collapsible",
  "before-back", "description", "disabled", "heading", "heading-level",
  "loading", "menu-open", "message-overrides", "messages",
  "overlay-positioning", "show-back-button", "default-messages",
  "effective-locale", "set-focus", "scroll-content-to"
)
  valid_names <- dots_names %in% c("", known_properties)
  bad_names <- dots_names[!valid_names]

  if (!all(valid_names)) {
    cli::cli_abort(
      c(
        "Unexpected attribute{?s}: {.code {bad_names}}",
        "i" = "expected one of {.var {known_properties}}"
      )
    )
  }

  htmltools::tag("calcite-flow-item", c(id = id, dots), .noWS = .noWS, .renderHook = .renderHook)
}
#' @export
#' @rdname components
calciteNavigation <- function(id, ..., .noWS = NULL, .renderHook = NULL) {

  dots <- rlang::dots_list(...)
  dots_names <- names(dots)
  known_properties <- c(
  "label", "navigation-action", "logo-slot-has-elements",
  "navigation-action-slot-has-elements",
  "primary-content-center-slot-has-elements",
  "primary-content-end-slot-has-elements",
  "primary-content-start-slot-has-elements", "progress-slot-has-element",
  "secondary-slot-has-elements", "tertiary-slot-has-elements",
  "user-slot-has-elements", "set-focus"
)
  valid_names <- dots_names %in% c("", known_properties)
  bad_names <- dots_names[!valid_names]

  if (!all(valid_names)) {
    cli::cli_abort(
      c(
        "Unexpected attribute{?s}: {.code {bad_names}}",
        "i" = "expected one of {.var {known_properties}}"
      )
    )
  }

  htmltools::tag("calcite-navigation", c(id = id, dots), .noWS = .noWS, .renderHook = .renderHook)
}
#' @export
#' @rdname components
calciteTip <- function(id, ..., .noWS = NULL, .renderHook = NULL) {

  dots <- rlang::dots_list(...)
  dots_names <- names(dots)
  known_properties <- c(
  "closed", "close-disabled", "heading", "heading-level", "selected",
  "messages", "message-overrides", "default-messages", "effective-locale"
)
  valid_names <- dots_names %in% c("", known_properties)
  bad_names <- dots_names[!valid_names]

  if (!all(valid_names)) {
    cli::cli_abort(
      c(
        "Unexpected attribute{?s}: {.code {bad_names}}",
        "i" = "expected one of {.var {known_properties}}"
      )
    )
  }

  htmltools::tag("calcite-tip", c(id = id, dots), .noWS = .noWS, .renderHook = .renderHook)
}
#' @export
#' @rdname components
calciteActionBar <- function(id, ..., .noWS = NULL, .renderHook = NULL) {

  dots <- rlang::dots_list(...)
  dots_names <- names(dots)
  known_properties <- c(
  "actions-end-group-label", "expand-disabled", "expanded", "layout",
  "overflow-actions-disabled", "overlay-positioning", "position", "scale",
  "messages", "message-overrides", "effective-locale", "has-actions-end",
  "has-bottom-actions", "expand-tooltip", "default-messages",
  "overflow-actions", "set-focus"
)
  valid_names <- dots_names %in% c("", known_properties)
  bad_names <- dots_names[!valid_names]

  if (!all(valid_names)) {
    cli::cli_abort(
      c(
        "Unexpected attribute{?s}: {.code {bad_names}}",
        "i" = "expected one of {.var {known_properties}}"
      )
    )
  }

  htmltools::tag("calcite-action-bar", c(id = id, dots), .noWS = .noWS, .renderHook = .renderHook)
}
#' @export
#' @rdname components
calciteActionPad <- function(id, ..., .noWS = NULL, .renderHook = NULL) {

  dots <- rlang::dots_list(...)
  dots_names <- names(dots)
  known_properties <- c(
  "actions-end-group-label", "expand-disabled", "expanded", "layout",
  "position", "scale", "messages", "message-overrides", "overlay-positioning",
  "expand-tooltip", "effective-locale", "default-messages", "set-focus"
)
  valid_names <- dots_names %in% c("", known_properties)
  bad_names <- dots_names[!valid_names]

  if (!all(valid_names)) {
    cli::cli_abort(
      c(
        "Unexpected attribute{?s}: {.code {bad_names}}",
        "i" = "expected one of {.var {known_properties}}"
      )
    )
  }

  htmltools::tag("calcite-action-pad", c(id = id, dots), .noWS = .noWS, .renderHook = .renderHook)
}
#' @export
#' @rdname components
calciteInputTimeZone <- function(id, ..., .noWS = NULL, .renderHook = NULL) {

  dots <- rlang::dots_list(...)
  dots_names <- names(dots)
  known_properties <- c(
  "disabled", "form", "max-items", "messages", "message-overrides", "mode",
  "validation-message", "validation-icon", "name", "open",
  "overlay-positioning", "reference-date", "required", "scale", "status",
  "value", "default-messages", "effective-locale", "set-focus"
)
  valid_names <- dots_names %in% c("", known_properties)
  bad_names <- dots_names[!valid_names]

  if (!all(valid_names)) {
    cli::cli_abort(
      c(
        "Unexpected attribute{?s}: {.code {bad_names}}",
        "i" = "expected one of {.var {known_properties}}"
      )
    )
  }

  htmltools::tag("calcite-input-time-zone", c(id = id, dots), .noWS = .noWS, .renderHook = .renderHook)
}
#' @export
#' @rdname components
calciteTable <- function(id, ..., .noWS = NULL, .renderHook = NULL) {

  dots <- rlang::dots_list(...)
  dots_names <- names(dots)
  known_properties <- c(
  "bordered", "caption", "group-separator", "interaction-mode", "layout",
  "numbered", "numbering-system", "page-size", "scale", "selection-mode",
  "zebra", "striped", "selected-items", "messages", "message-overrides",
  "col-count", "page-start-row", "selected-count", "read-cell-contents-to-at",
  "default-messages", "effective-locale"
)
  valid_names <- dots_names %in% c("", known_properties)
  bad_names <- dots_names[!valid_names]

  if (!all(valid_names)) {
    cli::cli_abort(
      c(
        "Unexpected attribute{?s}: {.code {bad_names}}",
        "i" = "expected one of {.var {known_properties}}"
      )
    )
  }

  htmltools::tag("calcite-table", c(id = id, dots), .noWS = .noWS, .renderHook = .renderHook)
}
#' @export
#' @rdname components
calciteStepper <- function(id, ..., .noWS = NULL, .renderHook = NULL) {

  dots <- rlang::dots_list(...)
  dots_names <- names(dots)
  known_properties <- c(
  "icon", "layout", "numbered", "scale", "messages", "numbering-system",
  "selected-item", "message-overrides", "default-messages", "effective-locale",
  "current-active-position", "next-step", "prev-step", "go-to-step",
  "start-step", "end-step"
)
  valid_names <- dots_names %in% c("", known_properties)
  bad_names <- dots_names[!valid_names]

  if (!all(valid_names)) {
    cli::cli_abort(
      c(
        "Unexpected attribute{?s}: {.code {bad_names}}",
        "i" = "expected one of {.var {known_properties}}"
      )
    )
  }

  htmltools::tag("calcite-stepper", c(id = id, dots), .noWS = .noWS, .renderHook = .renderHook)
}
#' @export
#' @rdname components
calciteSplitButton <- function(id, ..., .noWS = NULL, .renderHook = NULL) {

  dots <- rlang::dots_list(...)
  dots_names <- names(dots)
  known_properties <- c(
  "appearance", "kind", "disabled", "active", "dropdown-icon-type",
  "dropdown-label", "loading", "overlay-positioning", "primary-icon-end",
  "primary-icon-flip-rtl", "primary-icon-start", "primary-label",
  "primary-text", "scale", "width", "set-focus"
)
  valid_names <- dots_names %in% c("", known_properties)
  bad_names <- dots_names[!valid_names]

  if (!all(valid_names)) {
    cli::cli_abort(
      c(
        "Unexpected attribute{?s}: {.code {bad_names}}",
        "i" = "expected one of {.var {known_properties}}"
      )
    )
  }

  htmltools::tag("calcite-split-button", c(id = id, dots), .noWS = .noWS, .renderHook = .renderHook)
}
#' @export
#' @rdname components
calciteSegmentedControl <- function(id, ..., .noWS = NULL, .renderHook = NULL) {

  dots <- rlang::dots_list(...)
  dots_names <- names(dots)
  known_properties <- c(
  "appearance", "disabled", "form", "required", "name", "layout", "scale",
  "value", "selected-item", "status", "validation-message", "validation-icon",
  "width", "set-focus"
)
  valid_names <- dots_names %in% c("", known_properties)
  bad_names <- dots_names[!valid_names]

  if (!all(valid_names)) {
    cli::cli_abort(
      c(
        "Unexpected attribute{?s}: {.code {bad_names}}",
        "i" = "expected one of {.var {known_properties}}"
      )
    )
  }

  htmltools::tag("calcite-segmented-control", c(id = id, dots), .noWS = .noWS, .renderHook = .renderHook)
}
#' @export
#' @rdname components
calciteCheckbox <- function(id, ..., .noWS = NULL, .renderHook = NULL) {

  dots <- rlang::dots_list(...)
  dots_names <- names(dots)
  known_properties <- c(
  "checked", "disabled", "form", "guid", "hovered", "indeterminate", "label",
  "name", "required", "scale", "status", "value", "set-focus"
)
  valid_names <- dots_names %in% c("", known_properties)
  bad_names <- dots_names[!valid_names]

  if (!all(valid_names)) {
    cli::cli_abort(
      c(
        "Unexpected attribute{?s}: {.code {bad_names}}",
        "i" = "expected one of {.var {known_properties}}"
      )
    )
  }

  htmltools::tag("calcite-checkbox", c(id = id, dots), .noWS = .noWS, .renderHook = .renderHook)
}
#' @export
#' @rdname components
calciteCard <- function(id, ..., .noWS = NULL, .renderHook = NULL) {

  dots <- rlang::dots_list(...)
  dots_names <- names(dots)
  known_properties <- c(
  "loading", "thumbnail-position", "disabled", "label", "selectable",
  "selected", "messages", "selection-mode", "message-overrides",
  "effective-locale", "default-messages", "has-content", "set-focus"
)
  valid_names <- dots_names %in% c("", known_properties)
  bad_names <- dots_names[!valid_names]

  if (!all(valid_names)) {
    cli::cli_abort(
      c(
        "Unexpected attribute{?s}: {.code {bad_names}}",
        "i" = "expected one of {.var {known_properties}}"
      )
    )
  }

  htmltools::tag("calcite-card", c(id = id, dots), .noWS = .noWS, .renderHook = .renderHook)
}
#' @export
#' @rdname components
calciteTileSelect <- function(id, ..., .noWS = NULL, .renderHook = NULL) {

  dots <- rlang::dots_list(...)
  dots_names <- names(dots)
  known_properties <- c(
  "checked", "description", "disabled", "heading", "icon", "icon-flip-rtl",
  "name", "input-enabled", "input-alignment", "type", "value", "width",
  "focused", "set-focus"
)
  valid_names <- dots_names %in% c("", known_properties)
  bad_names <- dots_names[!valid_names]

  if (!all(valid_names)) {
    cli::cli_abort(
      c(
        "Unexpected attribute{?s}: {.code {bad_names}}",
        "i" = "expected one of {.var {known_properties}}"
      )
    )
  }

  htmltools::tag("calcite-tile-select", c(id = id, dots), .noWS = .noWS, .renderHook = .renderHook)
}
#' @export
#' @rdname components
calciteFab <- function(id, ..., .noWS = NULL, .renderHook = NULL) {

  dots <- rlang::dots_list(...)
  dots_names <- names(dots)
  known_properties <- c(
  "appearance", "kind", "disabled", "icon", "icon-flip-rtl", "label", "loading",
  "scale", "text", "text-enabled", "set-focus"
)
  valid_names <- dots_names %in% c("", known_properties)
  bad_names <- dots_names[!valid_names]

  if (!all(valid_names)) {
    cli::cli_abort(
      c(
        "Unexpected attribute{?s}: {.code {bad_names}}",
        "i" = "expected one of {.var {known_properties}}"
      )
    )
  }

  htmltools::tag("calcite-fab", c(id = id, dots), .noWS = .noWS, .renderHook = .renderHook)
}
#' @export
#' @rdname components
calciteInlineEditable <- function(id, ..., .noWS = NULL, .renderHook = NULL) {

  dots <- rlang::dots_list(...)
  dots_names <- names(dots)
  known_properties <- c(
  "disabled", "editing-enabled", "loading", "controls", "scale",
  "after-confirm", "messages", "message-overrides", "default-messages",
  "effective-locale", "set-focus"
)
  valid_names <- dots_names %in% c("", known_properties)
  bad_names <- dots_names[!valid_names]

  if (!all(valid_names)) {
    cli::cli_abort(
      c(
        "Unexpected attribute{?s}: {.code {bad_names}}",
        "i" = "expected one of {.var {known_properties}}"
      )
    )
  }

  htmltools::tag("calcite-inline-editable", c(id = id, dots), .noWS = .noWS, .renderHook = .renderHook)
}
#' @export
#' @rdname components
calciteModal <- function(id, ..., .noWS = NULL, .renderHook = NULL) {

  dots <- rlang::dots_list(...)
  dots_names <- names(dots)
  known_properties <- c(
  "open", "opened", "before-close", "close-button-disabled",
  "focus-trap-disabled", "outside-close-disabled", "docked", "escape-disabled",
  "scale", "width-scale", "fullscreen", "kind", "messages", "message-overrides",
  "slotted-in-shell", "css-width", "css-height", "has-footer",
  "has-content-top", "has-content-bottom", "effective-locale",
  "default-messages", "set-focus", "update-focus-trap-elements",
  "scroll-content"
)
  valid_names <- dots_names %in% c("", known_properties)
  bad_names <- dots_names[!valid_names]

  if (!all(valid_names)) {
    cli::cli_abort(
      c(
        "Unexpected attribute{?s}: {.code {bad_names}}",
        "i" = "expected one of {.var {known_properties}}"
      )
    )
  }

  htmltools::tag("calcite-modal", c(id = id, dots), .noWS = .noWS, .renderHook = .renderHook)
}
#' @export
#' @rdname components
calciteTableRow <- function(id, ..., .noWS = NULL, .renderHook = NULL) {

  dots <- rlang::dots_list(...)
  dots_names <- names(dots)
  known_properties <- c(
  "alignment", "disabled", "selected", "cell-count", "interaction-mode",
  "last-visible-row", "row-type", "numbered", "position-section",
  "position-section-localized", "position-all", "read-cell-contents-to-at",
  "scale", "selection-mode", "selected-row-count",
  "selected-row-count-localized", "body-row-count", "effective-locale"
)
  valid_names <- dots_names %in% c("", known_properties)
  bad_names <- dots_names[!valid_names]

  if (!all(valid_names)) {
    cli::cli_abort(
      c(
        "Unexpected attribute{?s}: {.code {bad_names}}",
        "i" = "expected one of {.var {known_properties}}"
      )
    )
  }

  htmltools::tag("calcite-table-row", c(id = id, dots), .noWS = .noWS, .renderHook = .renderHook)
}
#' @export
#' @rdname components
calciteSelect <- function(id, ..., .noWS = NULL, .renderHook = NULL) {

  dots <- rlang::dots_list(...)
  dots_names <- names(dots)
  known_properties <- c(
  "disabled", "form", "label", "validation-message", "validation-icon", "name",
  "required", "scale", "status", "value", "selected-option", "width",
  "set-focus"
)
  valid_names <- dots_names %in% c("", known_properties)
  bad_names <- dots_names[!valid_names]

  if (!all(valid_names)) {
    cli::cli_abort(
      c(
        "Unexpected attribute{?s}: {.code {bad_names}}",
        "i" = "expected one of {.var {known_properties}}"
      )
    )
  }

  htmltools::tag("calcite-select", c(id = id, dots), .noWS = .noWS, .renderHook = .renderHook)
}
#' @export
#' @rdname components
calciteTreeItem <- function(id, ..., .noWS = NULL, .renderHook = NULL) {

  dots <- rlang::dots_list(...)
  dots_names <- names(dots)
  known_properties <- c(
  "disabled", "expanded", "icon-flip-rtl", "icon-start", "selected",
  "parent-expanded", "depth", "has-children", "lines", "scale", "indeterminate",
  "selection-mode", "has-end-actions", "update-after-initial-render"
)
  valid_names <- dots_names %in% c("", known_properties)
  bad_names <- dots_names[!valid_names]

  if (!all(valid_names)) {
    cli::cli_abort(
      c(
        "Unexpected attribute{?s}: {.code {bad_names}}",
        "i" = "expected one of {.var {known_properties}}"
      )
    )
  }

  htmltools::tag("calcite-tree-item", c(id = id, dots), .noWS = .noWS, .renderHook = .renderHook)
}
#' @export
#' @rdname components
calciteAlert <- function(id, ..., .noWS = NULL, .renderHook = NULL) {

  dots <- rlang::dots_list(...)
  dots_names <- names(dots)
  known_properties <- c(
  "open", "auto-close", "auto-close-duration", "kind", "icon", "icon-flip-rtl",
  "label", "numbering-system", "placement", "scale", "messages",
  "message-overrides", "slotted-in-shell", "default-messages",
  "effective-locale", "number-string-formatter", "has-end-actions", "queue",
  "queue-length", "queued", "set-focus"
)
  valid_names <- dots_names %in% c("", known_properties)
  bad_names <- dots_names[!valid_names]

  if (!all(valid_names)) {
    cli::cli_abort(
      c(
        "Unexpected attribute{?s}: {.code {bad_names}}",
        "i" = "expected one of {.var {known_properties}}"
      )
    )
  }

  htmltools::tag("calcite-alert", c(id = id, dots), .noWS = .noWS, .renderHook = .renderHook)
}
#' @export
#' @rdname components
calciteRadioButtonGroup <- function(id, ..., .noWS = NULL, .renderHook = NULL) {

  dots <- rlang::dots_list(...)
  dots_names <- names(dots)
  known_properties <- c(
  "disabled", "layout", "name", "required", "selected-item", "scale", "status",
  "validation-message", "validation-icon", "radio-buttons", "set-focus"
)
  valid_names <- dots_names %in% c("", known_properties)
  bad_names <- dots_names[!valid_names]

  if (!all(valid_names)) {
    cli::cli_abort(
      c(
        "Unexpected attribute{?s}: {.code {bad_names}}",
        "i" = "expected one of {.var {known_properties}}"
      )
    )
  }

  htmltools::tag("calcite-radio-button-group", c(id = id, dots), .noWS = .noWS, .renderHook = .renderHook)
}
#' @export
#' @rdname components
calciteRating <- function(id, ..., .noWS = NULL, .renderHook = NULL) {

  dots <- rlang::dots_list(...)
  dots_names <- names(dots)
  known_properties <- c(
  "average", "count", "disabled", "form", "messages", "message-overrides",
  "name", "read-only", "required", "scale", "show-chip", "value",
  "effective-locale", "default-messages", "hover-value", "set-focus"
)
  valid_names <- dots_names %in% c("", known_properties)
  bad_names <- dots_names[!valid_names]

  if (!all(valid_names)) {
    cli::cli_abort(
      c(
        "Unexpected attribute{?s}: {.code {bad_names}}",
        "i" = "expected one of {.var {known_properties}}"
      )
    )
  }

  htmltools::tag("calcite-rating", c(id = id, dots), .noWS = .noWS, .renderHook = .renderHook)
}
#' @export
#' @rdname components
calciteSheet <- function(id, ..., .noWS = NULL, .renderHook = NULL) {

  dots <- rlang::dots_list(...)
  dots_names <- names(dots)
  known_properties <- c(
  "before-close", "display-mode", "escape-disabled", "height-scale",
  "focus-trap-disabled", "label", "open", "opened", "outside-close-disabled",
  "position", "slotted-in-shell", "width-scale", "set-focus",
  "update-focus-trap-elements"
)
  valid_names <- dots_names %in% c("", known_properties)
  bad_names <- dots_names[!valid_names]

  if (!all(valid_names)) {
    cli::cli_abort(
      c(
        "Unexpected attribute{?s}: {.code {bad_names}}",
        "i" = "expected one of {.var {known_properties}}"
      )
    )
  }

  htmltools::tag("calcite-sheet", c(id = id, dots), .noWS = .noWS, .renderHook = .renderHook)
}
#' @export
#' @rdname components
calciteTextArea <- function(id, ..., .noWS = NULL, .renderHook = NULL) {

  dots <- rlang::dots_list(...)
  dots_names <- names(dots)
  known_properties <- c(
  "autofocus", "columns", "disabled", "form", "group-separator", "label",
  "min-length", "max-length", "messages", "validation-message",
  "validation-icon", "name", "numbering-system", "placeholder", "read-only",
  "required", "resize", "rows", "scale", "status", "value", "wrap",
  "message-overrides", "default-messages", "end-slot-has-elements",
  "start-slot-has-elements", "effective-locale", "set-focus", "select-text"
)
  valid_names <- dots_names %in% c("", known_properties)
  bad_names <- dots_names[!valid_names]

  if (!all(valid_names)) {
    cli::cli_abort(
      c(
        "Unexpected attribute{?s}: {.code {bad_names}}",
        "i" = "expected one of {.var {known_properties}}"
      )
    )
  }

  htmltools::tag("calcite-text-area", c(id = id, dots), .noWS = .noWS, .renderHook = .renderHook)
}
#' @export
#' @rdname components
calciteTile <- function(id, ..., .noWS = NULL, .renderHook = NULL) {

  dots <- rlang::dots_list(...)
  dots_names <- names(dots)
  known_properties <- c(
  "active", "alignment", "description", "disabled", "embed", "focused",
  "heading", "href", "icon", "icon-flip-rtl", "scale"
)
  valid_names <- dots_names %in% c("", known_properties)
  bad_names <- dots_names[!valid_names]

  if (!all(valid_names)) {
    cli::cli_abort(
      c(
        "Unexpected attribute{?s}: {.code {bad_names}}",
        "i" = "expected one of {.var {known_properties}}"
      )
    )
  }

  htmltools::tag("calcite-tile", c(id = id, dots), .noWS = .noWS, .renderHook = .renderHook)
}
#' @export
#' @rdname components
calciteAccordionItem <- function(id, ..., .noWS = NULL, .renderHook = NULL) {

  dots <- rlang::dots_list(...)
  dots_names <- names(dots)
  known_properties <- c(
  "expanded", "heading", "description", "icon-start", "icon-end",
  "icon-flip-rtl", "icon-position", "icon-type", "accordion-parent", "scale"
)
  valid_names <- dots_names %in% c("", known_properties)
  bad_names <- dots_names[!valid_names]

  if (!all(valid_names)) {
    cli::cli_abort(
      c(
        "Unexpected attribute{?s}: {.code {bad_names}}",
        "i" = "expected one of {.var {known_properties}}"
      )
    )
  }

  htmltools::tag("calcite-accordion-item", c(id = id, dots), .noWS = .noWS, .renderHook = .renderHook)
}
#' @export
#' @rdname components
calciteNotice <- function(id, ..., .noWS = NULL, .renderHook = NULL) {

  dots <- rlang::dots_list(...)
  dots_names <- names(dots)
  known_properties <- c(
  "open", "kind", "closable", "icon", "icon-flip-rtl", "scale", "width",
  "messages", "message-overrides", "effective-locale", "default-messages",
  "set-focus"
)
  valid_names <- dots_names %in% c("", known_properties)
  bad_names <- dots_names[!valid_names]

  if (!all(valid_names)) {
    cli::cli_abort(
      c(
        "Unexpected attribute{?s}: {.code {bad_names}}",
        "i" = "expected one of {.var {known_properties}}"
      )
    )
  }

  htmltools::tag("calcite-notice", c(id = id, dots), .noWS = .noWS, .renderHook = .renderHook)
}
#' @export
#' @rdname components
calciteShell <- function(id, ..., .noWS = NULL, .renderHook = NULL) {

  dots <- rlang::dots_list(...)
  dots_names <- names(dots)
  known_properties <- c(
  "content-behind", "has-header", "has-footer", "has-alerts", "has-modals",
  "has-sheets", "panel-is-resizing"
)
  valid_names <- dots_names %in% c("", known_properties)
  bad_names <- dots_names[!valid_names]

  if (!all(valid_names)) {
    cli::cli_abort(
      c(
        "Unexpected attribute{?s}: {.code {bad_names}}",
        "i" = "expected one of {.var {known_properties}}"
      )
    )
  }

  htmltools::tag("calcite-shell", c(id = id, dots), .noWS = .noWS, .renderHook = .renderHook)
}
#' @export
#' @rdname components
calciteCardGroup <- function(id, ..., .noWS = NULL, .renderHook = NULL) {

  dots <- rlang::dots_list(...)
  dots_names <- names(dots)
  known_properties <- c("disabled", "label", "selection-mode", "selected-items", "set-focus")
  valid_names <- dots_names %in% c("", known_properties)
  bad_names <- dots_names[!valid_names]

  if (!all(valid_names)) {
    cli::cli_abort(
      c(
        "Unexpected attribute{?s}: {.code {bad_names}}",
        "i" = "expected one of {.var {known_properties}}"
      )
    )
  }

  htmltools::tag("calcite-card-group", c(id = id, dots), .noWS = .noWS, .renderHook = .renderHook)
}
#' @export
#' @rdname components
calciteChipGroup <- function(id, ..., .noWS = NULL, .renderHook = NULL) {

  dots <- rlang::dots_list(...)
  dots_names <- names(dots)
  known_properties <- c("disabled", "label", "scale", "selection-mode", "selected-items", "set-focus")
  valid_names <- dots_names %in% c("", known_properties)
  bad_names <- dots_names[!valid_names]

  if (!all(valid_names)) {
    cli::cli_abort(
      c(
        "Unexpected attribute{?s}: {.code {bad_names}}",
        "i" = "expected one of {.var {known_properties}}"
      )
    )
  }

  htmltools::tag("calcite-chip-group", c(id = id, dots), .noWS = .noWS, .renderHook = .renderHook)
}
#' @export
#' @rdname components
calciteFlow <- function(id, ..., .noWS = NULL, .renderHook = NULL) {

  dots <- rlang::dots_list(...)
  dots_names <- names(dots)
  known_properties <- c(
  "custom-item-selectors", "flow-direction", "item-count", "items", "back",
  "set-focus"
)
  valid_names <- dots_names %in% c("", known_properties)
  bad_names <- dots_names[!valid_names]

  if (!all(valid_names)) {
    cli::cli_abort(
      c(
        "Unexpected attribute{?s}: {.code {bad_names}}",
        "i" = "expected one of {.var {known_properties}}"
      )
    )
  }

  htmltools::tag("calcite-flow", c(id = id, dots), .noWS = .noWS, .renderHook = .renderHook)
}
#' @export
#' @rdname components
calciteMeter <- function(id, ..., .noWS = NULL, .renderHook = NULL) {

  dots <- rlang::dots_list(...)
  dots_names <- names(dots)
  known_properties <- c(
  "appearance", "disabled", "fill-type", "form", "group-separator", "high",
  "label", "low", "max", "min", "name", "numbering-system", "range-labels",
  "range-label-type", "scale", "unit-label", "value", "value-label",
  "value-label-type", "current-percent", "effective-locale", "high-active",
  "high-percent", "low-active", "low-percent"
)
  valid_names <- dots_names %in% c("", known_properties)
  bad_names <- dots_names[!valid_names]

  if (!all(valid_names)) {
    cli::cli_abort(
      c(
        "Unexpected attribute{?s}: {.code {bad_names}}",
        "i" = "expected one of {.var {known_properties}}"
      )
    )
  }

  htmltools::tag("calcite-meter", c(id = id, dots), .noWS = .noWS, .renderHook = .renderHook)
}
#' @export
#' @rdname components
calciteSortableList <- function(id, ..., .noWS = NULL, .renderHook = NULL) {

  dots <- rlang::dots_list(...)
  dots_names <- names(dots)
  known_properties <- c(
  "can-pull", "can-put", "drag-selector", "group", "handle-selector", "layout",
  "disabled", "loading"
)
  valid_names <- dots_names %in% c("", known_properties)
  bad_names <- dots_names[!valid_names]

  if (!all(valid_names)) {
    cli::cli_abort(
      c(
        "Unexpected attribute{?s}: {.code {bad_names}}",
        "i" = "expected one of {.var {known_properties}}"
      )
    )
  }

  htmltools::tag("calcite-sortable-list", c(id = id, dots), .noWS = .noWS, .renderHook = .renderHook)
}
#' @export
#' @rdname components
calciteTileGroup <- function(id, ..., .noWS = NULL, .renderHook = NULL) {

  dots <- rlang::dots_list(...)
  dots_names <- names(dots)
  known_properties <- c("disabled", "layout", "scale")
  valid_names <- dots_names %in% c("", known_properties)
  bad_names <- dots_names[!valid_names]

  if (!all(valid_names)) {
    cli::cli_abort(
      c(
        "Unexpected attribute{?s}: {.code {bad_names}}",
        "i" = "expected one of {.var {known_properties}}"
      )
    )
  }

  htmltools::tag("calcite-tile-group", c(id = id, dots), .noWS = .noWS, .renderHook = .renderHook)
}
#' @export
#' @rdname components
calciteTooltip <- function(id, ..., .noWS = NULL, .renderHook = NULL) {

  dots <- rlang::dots_list(...)
  dots_names <- names(dots)
  known_properties <- c(
  "close-on-click", "label", "offset-distance", "offset-skidding", "open",
  "overlay-positioning", "placement", "reference-element",
  "effective-reference-element", "floating-layout", "reposition"
)
  valid_names <- dots_names %in% c("", known_properties)
  bad_names <- dots_names[!valid_names]

  if (!all(valid_names)) {
    cli::cli_abort(
      c(
        "Unexpected attribute{?s}: {.code {bad_names}}",
        "i" = "expected one of {.var {known_properties}}"
      )
    )
  }

  htmltools::tag("calcite-tooltip", c(id = id, dots), .noWS = .noWS, .renderHook = .renderHook)
}
#' @export
#' @rdname components
calcitePickList <- function(id, ..., .noWS = NULL, .renderHook = NULL) {

  dots <- rlang::dots_list(...)
  dots_names <- names(dots)
  known_properties <- c(
  "disabled", "filtered-items", "filtered-data", "filter-enabled",
  "filter-placeholder", "filter-text", "heading-level", "loading", "multiple",
  "selection-follows-focus", "selected-values", "data-for-filter",
  "get-selected-items", "set-focus"
)
  valid_names <- dots_names %in% c("", known_properties)
  bad_names <- dots_names[!valid_names]

  if (!all(valid_names)) {
    cli::cli_abort(
      c(
        "Unexpected attribute{?s}: {.code {bad_names}}",
        "i" = "expected one of {.var {known_properties}}"
      )
    )
  }

  htmltools::tag("calcite-pick-list", c(id = id, dots), .noWS = .noWS, .renderHook = .renderHook)
}
#' @export
#' @rdname components
calciteInputTimePicker <- function(id, ..., .noWS = NULL, .renderHook = NULL) {

  dots <- rlang::dots_list(...)
  dots_names <- names(dots)
  known_properties <- c(
  "open", "disabled", "focus-trap-disabled", "form", "read-only",
  "message-overrides", "messages", "validation-message", "validation-icon",
  "name", "numbering-system", "required", "scale", "status",
  "overlay-positioning", "placement", "step", "value", "default-messages",
  "effective-locale", "set-focus", "reposition"
)
  valid_names <- dots_names %in% c("", known_properties)
  bad_names <- dots_names[!valid_names]

  if (!all(valid_names)) {
    cli::cli_abort(
      c(
        "Unexpected attribute{?s}: {.code {bad_names}}",
        "i" = "expected one of {.var {known_properties}}"
      )
    )
  }

  htmltools::tag("calcite-input-time-picker", c(id = id, dots), .noWS = .noWS, .renderHook = .renderHook)
}
#' @export
#' @rdname components
calcitePanel <- function(id, ..., .noWS = NULL, .renderHook = NULL) {

  dots <- rlang::dots_list(...)
  dots_names <- names(dots)
  known_properties <- c(
  "closed", "disabled", "closable", "collapsed", "collapse-direction",
  "collapsible", "heading-level", "loading", "heading", "description",
  "menu-open", "message-overrides", "messages", "overlay-positioning",
  "has-start-actions", "has-end-actions", "has-menu-items",
  "has-header-content", "has-action-bar", "has-footer-content",
  "has-footer-actions", "has-fab", "default-messages", "effective-locale",
  "show-header-content", "set-focus", "scroll-content-to"
)
  valid_names <- dots_names %in% c("", known_properties)
  bad_names <- dots_names[!valid_names]

  if (!all(valid_names)) {
    cli::cli_abort(
      c(
        "Unexpected attribute{?s}: {.code {bad_names}}",
        "i" = "expected one of {.var {known_properties}}"
      )
    )
  }

  htmltools::tag("calcite-panel", c(id = id, dots), .noWS = .noWS, .renderHook = .renderHook)
}
#' @export
#' @rdname components
calciteMenuItem <- function(id, ..., .noWS = NULL, .renderHook = NULL) {

  dots <- rlang::dots_list(...)
  dots_names <- names(dots)
  known_properties <- c(
  "active", "breadcrumb", "href", "icon-end", "icon-flip-rtl", "icon-start",
  "is-top-level-item", "label", "layout", "message-overrides", "messages",
  "open", "rel", "target", "text", "top-level-menu-layout", "default-messages",
  "effective-locale", "has-submenu", "submenu-items", "set-focus"
)
  valid_names <- dots_names %in% c("", known_properties)
  bad_names <- dots_names[!valid_names]

  if (!all(valid_names)) {
    cli::cli_abort(
      c(
        "Unexpected attribute{?s}: {.code {bad_names}}",
        "i" = "expected one of {.var {known_properties}}"
      )
    )
  }

  htmltools::tag("calcite-menu-item", c(id = id, dots), .noWS = .noWS, .renderHook = .renderHook)
}
#' @export
#' @rdname components
calciteDropdownItem <- function(id, ..., .noWS = NULL, .renderHook = NULL) {

  dots <- rlang::dots_list(...)
  dots_names <- names(dots)
  known_properties <- c(
  "disabled", "href", "icon-flip-rtl", "icon-start", "icon-end", "label", "rel",
  "selected", "target", "selection-mode", "scale", "set-focus"
)
  valid_names <- dots_names %in% c("", known_properties)
  bad_names <- dots_names[!valid_names]

  if (!all(valid_names)) {
    cli::cli_abort(
      c(
        "Unexpected attribute{?s}: {.code {bad_names}}",
        "i" = "expected one of {.var {known_properties}}"
      )
    )
  }

  htmltools::tag("calcite-dropdown-item", c(id = id, dots), .noWS = .noWS, .renderHook = .renderHook)
}
#' @export
#' @rdname components
calciteSlider <- function(id, ..., .noWS = NULL, .renderHook = NULL) {

  dots <- rlang::dots_list(...)
  dots_names <- names(dots)
  known_properties <- c(
  "disabled", "form", "group-separator", "has-histogram", "histogram",
  "histogram-stops", "label-handles", "label-ticks", "max", "max-label",
  "max-value", "min", "min-label", "min-value", "mirrored", "name",
  "numbering-system", "page-step", "precise", "required", "snap", "step",
  "ticks", "value", "scale", "effective-locale", "min-max-value-range",
  "min-value-drag-range", "max-value-drag-range", "tick-values", "set-focus"
)
  valid_names <- dots_names %in% c("", known_properties)
  bad_names <- dots_names[!valid_names]

  if (!all(valid_names)) {
    cli::cli_abort(
      c(
        "Unexpected attribute{?s}: {.code {bad_names}}",
        "i" = "expected one of {.var {known_properties}}"
      )
    )
  }

  htmltools::tag("calcite-slider", c(id = id, dots), .noWS = .noWS, .renderHook = .renderHook)
}
#' @export
#' @rdname components
calciteAvatar <- function(id, ..., .noWS = NULL, .renderHook = NULL) {

  dots <- rlang::dots_list(...)
  dots_names <- names(dots)
  known_properties <- c(
  "scale", "thumbnail", "full-name", "username", "user-id", "label",
  "thumbnail-failed-to-load"
)
  valid_names <- dots_names %in% c("", known_properties)
  bad_names <- dots_names[!valid_names]

  if (!all(valid_names)) {
    cli::cli_abort(
      c(
        "Unexpected attribute{?s}: {.code {bad_names}}",
        "i" = "expected one of {.var {known_properties}}"
      )
    )
  }

  htmltools::tag("calcite-avatar", c(id = id, dots), .noWS = .noWS, .renderHook = .renderHook)
}
#' @export
#' @rdname components
calciteLink <- function(id, ..., .noWS = NULL, .renderHook = NULL) {

  dots <- rlang::dots_list(...)
  dots_names <- names(dots)
  known_properties <- c(
  "disabled", "download", "href", "icon-end", "icon-flip-rtl", "icon-start",
  "rel", "target", "set-focus"
)
  valid_names <- dots_names %in% c("", known_properties)
  bad_names <- dots_names[!valid_names]

  if (!all(valid_names)) {
    cli::cli_abort(
      c(
        "Unexpected attribute{?s}: {.code {bad_names}}",
        "i" = "expected one of {.var {known_properties}}"
      )
    )
  }

  htmltools::tag("calcite-link", c(id = id, dots), .noWS = .noWS, .renderHook = .renderHook)
}
#' @export
#' @rdname components
calcitePagination <- function(id, ..., .noWS = NULL, .renderHook = NULL) {

  dots <- rlang::dots_list(...)
  dots_names <- names(dots)
  known_properties <- c(
  "group-separator", "messages", "message-overrides", "numbering-system",
  "page-size", "scale", "start-item", "total-items", "default-messages",
  "effective-locale", "max-items", "total-pages", "last-start-item",
  "is-xx-small", "set-focus", "next-page", "previous-page"
)
  valid_names <- dots_names %in% c("", known_properties)
  bad_names <- dots_names[!valid_names]

  if (!all(valid_names)) {
    cli::cli_abort(
      c(
        "Unexpected attribute{?s}: {.code {bad_names}}",
        "i" = "expected one of {.var {known_properties}}"
      )
    )
  }

  htmltools::tag("calcite-pagination", c(id = id, dots), .noWS = .noWS, .renderHook = .renderHook)
}
#' @export
#' @rdname components
calciteRadioButton <- function(id, ..., .noWS = NULL, .renderHook = NULL) {

  dots <- rlang::dots_list(...)
  dots_names <- names(dots)
  known_properties <- c(
  "checked", "disabled", "focused", "form", "guid", "hovered", "label", "name",
  "required", "scale", "value", "set-focus", "emit-checked-change"
)
  valid_names <- dots_names %in% c("", known_properties)
  bad_names <- dots_names[!valid_names]

  if (!all(valid_names)) {
    cli::cli_abort(
      c(
        "Unexpected attribute{?s}: {.code {bad_names}}",
        "i" = "expected one of {.var {known_properties}}"
      )
    )
  }

  htmltools::tag("calcite-radio-button", c(id = id, dots), .noWS = .noWS, .renderHook = .renderHook)
}
#' @export
#' @rdname components
calciteStack <- function(id, ..., .noWS = NULL, .renderHook = NULL) {

  dots <- rlang::dots_list(...)
  dots_names <- names(dots)
  known_properties <- c(
  "disabled", "has-actions-start", "has-actions-end", "has-content-start",
  "has-content-end"
)
  valid_names <- dots_names %in% c("", known_properties)
  bad_names <- dots_names[!valid_names]

  if (!all(valid_names)) {
    cli::cli_abort(
      c(
        "Unexpected attribute{?s}: {.code {bad_names}}",
        "i" = "expected one of {.var {known_properties}}"
      )
    )
  }

  htmltools::tag("calcite-stack", c(id = id, dots), .noWS = .noWS, .renderHook = .renderHook)
}
#' @export
#' @rdname components
calciteSwitch <- function(id, ..., .noWS = NULL, .renderHook = NULL) {

  dots <- rlang::dots_list(...)
  dots_names <- names(dots)
  known_properties <- c("disabled", "form", "label", "name", "scale", "checked", "value", "set-focus")
  valid_names <- dots_names %in% c("", known_properties)
  bad_names <- dots_names[!valid_names]

  if (!all(valid_names)) {
    cli::cli_abort(
      c(
        "Unexpected attribute{?s}: {.code {bad_names}}",
        "i" = "expected one of {.var {known_properties}}"
      )
    )
  }

  htmltools::tag("calcite-switch", c(id = id, dots), .noWS = .noWS, .renderHook = .renderHook)
}
#' @export
#' @rdname components
calciteInputNumber <- function(id, ..., .noWS = NULL, .renderHook = NULL) {

  dots <- rlang::dots_list(...)
  dots_names <- names(dots)
  known_properties <- c(
  "alignment", "autofocus", "clearable", "disabled", "form", "group-separator",
  "icon", "icon-flip-rtl", "integer", "label", "loading", "numbering-system",
  "locale-format", "max", "min", "max-length", "min-length",
  "validation-message", "validation-icon", "name", "number-button-type",
  "placeholder", "prefix-text", "read-only", "required", "scale", "status",
  "step", "autocomplete", "input-mode", "enter-key-hint", "suffix-text",
  "editing-enabled", "value", "messages", "message-overrides",
  "effective-locale", "default-messages", "displayed-value",
  "slotted-action-el-disabled-internally", "set-focus", "select-text"
)
  valid_names <- dots_names %in% c("", known_properties)
  bad_names <- dots_names[!valid_names]

  if (!all(valid_names)) {
    cli::cli_abort(
      c(
        "Unexpected attribute{?s}: {.code {bad_names}}",
        "i" = "expected one of {.var {known_properties}}"
      )
    )
  }

  htmltools::tag("calcite-input-number", c(id = id, dots), .noWS = .noWS, .renderHook = .renderHook)
}
#' @export
#' @rdname components
calciteLabel <- function(id, ..., .noWS = NULL, .renderHook = NULL) {

  dots <- rlang::dots_list(...)
  dots_names <- names(dots)
  known_properties <- c("alignment", "for", "scale", "layout")
  valid_names <- dots_names %in% c("", known_properties)
  bad_names <- dots_names[!valid_names]

  if (!all(valid_names)) {
    cli::cli_abort(
      c(
        "Unexpected attribute{?s}: {.code {bad_names}}",
        "i" = "expected one of {.var {known_properties}}"
      )
    )
  }

  htmltools::tag("calcite-label", c(id = id, dots), .noWS = .noWS, .renderHook = .renderHook)
}
#' @export
#' @rdname components
calciteTabNav <- function(id, ..., .noWS = NULL, .renderHook = NULL) {

  dots <- rlang::dots_list(...)
  dots_names <- names(dots)
  known_properties <- c(
  "storage-id", "sync-id", "selected-title", "scale", "layout", "position",
  "bordered", "indicator-offset", "indicator-width", "messages",
  "message-overrides", "default-messages", "effective-locale",
  "has-overflowing-start-tab-title", "has-overflowing-end-tab-title",
  "selected-tab-id"
)
  valid_names <- dots_names %in% c("", known_properties)
  bad_names <- dots_names[!valid_names]

  if (!all(valid_names)) {
    cli::cli_abort(
      c(
        "Unexpected attribute{?s}: {.code {bad_names}}",
        "i" = "expected one of {.var {known_properties}}"
      )
    )
  }

  htmltools::tag("calcite-tab-nav", c(id = id, dots), .noWS = .noWS, .renderHook = .renderHook)
}
#' @export
#' @rdname components
calciteColorPicker <- function(id, ..., .noWS = NULL, .renderHook = NULL) {

  dots <- rlang::dots_list(...)
  dots_names <- names(dots)
  known_properties <- c(
  "allow-empty", "alpha-channel", "channels-disabled", "clearable", "color",
  "disabled", "format", "hide-channels", "hex-disabled", "hide-hex",
  "hide-saved", "saved-disabled", "scale", "storage-id", "message-overrides",
  "numbering-system", "value", "messages", "default-messages", "channel-mode",
  "channels", "dimensions", "effective-locale", "saved-colors",
  "color-field-scope-top", "color-field-scope-left", "hue-scope-left",
  "opacity-scope-left", "scope-orientation", "set-focus"
)
  valid_names <- dots_names %in% c("", known_properties)
  bad_names <- dots_names[!valid_names]

  if (!all(valid_names)) {
    cli::cli_abort(
      c(
        "Unexpected attribute{?s}: {.code {bad_names}}",
        "i" = "expected one of {.var {known_properties}}"
      )
    )
  }

  htmltools::tag("calcite-color-picker", c(id = id, dots), .noWS = .noWS, .renderHook = .renderHook)
}
#' @export
#' @rdname components
calciteActionGroup <- function(id, ..., .noWS = NULL, .renderHook = NULL) {

  dots <- rlang::dots_list(...)
  dots_names <- names(dots)
  known_properties <- c(
  "expanded", "label", "layout", "columns", "menu-open", "overlay-positioning",
  "scale", "messages", "message-overrides", "effective-locale",
  "default-messages", "has-menu-actions", "set-focus"
)
  valid_names <- dots_names %in% c("", known_properties)
  bad_names <- dots_names[!valid_names]

  if (!all(valid_names)) {
    cli::cli_abort(
      c(
        "Unexpected attribute{?s}: {.code {bad_names}}",
        "i" = "expected one of {.var {known_properties}}"
      )
    )
  }

  htmltools::tag("calcite-action-group", c(id = id, dots), .noWS = .noWS, .renderHook = .renderHook)
}
#' @export
#' @rdname components
calciteTableHeader <- function(id, ..., .noWS = NULL, .renderHook = NULL) {

  dots <- rlang::dots_list(...)
  dots_names <- names(dots)
  known_properties <- c(
  "alignment", "col-span", "description", "heading", "row-span",
  "interaction-mode", "last-cell", "number-cell", "parent-row-alignment",
  "parent-row-is-selected", "parent-row-type", "position-in-row", "scale",
  "selected-row-count", "selected-row-count-localized", "selection-cell",
  "selection-mode", "body-row-count", "messages", "message-overrides",
  "default-messages", "focused", "screen-reader-text", "effective-locale",
  "set-focus"
)
  valid_names <- dots_names %in% c("", known_properties)
  bad_names <- dots_names[!valid_names]

  if (!all(valid_names)) {
    cli::cli_abort(
      c(
        "Unexpected attribute{?s}: {.code {bad_names}}",
        "i" = "expected one of {.var {known_properties}}"
      )
    )
  }

  htmltools::tag("calcite-table-header", c(id = id, dots), .noWS = .noWS, .renderHook = .renderHook)
}
#' @export
#' @rdname components
calciteHandle <- function(id, ..., .noWS = NULL, .renderHook = NULL) {

  dots <- rlang::dots_list(...)
  dots_names <- names(dots)
  known_properties <- c(
  "selected", "disabled", "drag-handle", "messages", "set-position", "set-size",
  "label", "blur-unselect-disabled", "message-overrides", "effective-locale",
  "default-messages", "set-focus"
)
  valid_names <- dots_names %in% c("", known_properties)
  bad_names <- dots_names[!valid_names]

  if (!all(valid_names)) {
    cli::cli_abort(
      c(
        "Unexpected attribute{?s}: {.code {bad_names}}",
        "i" = "expected one of {.var {known_properties}}"
      )
    )
  }

  htmltools::tag("calcite-handle", c(id = id, dots), .noWS = .noWS, .renderHook = .renderHook)
}
#' @export
#' @rdname components
calciteComboboxItemGroup <- function(id, ..., .noWS = NULL, .renderHook = NULL) {

  dots <- rlang::dots_list(...)
  dots_names <- names(dots)
  known_properties <- c("after-empty-group", "ancestors", "label", "scale")
  valid_names <- dots_names %in% c("", known_properties)
  bad_names <- dots_names[!valid_names]

  if (!all(valid_names)) {
    cli::cli_abort(
      c(
        "Unexpected attribute{?s}: {.code {bad_names}}",
        "i" = "expected one of {.var {known_properties}}"
      )
    )
  }

  htmltools::tag("calcite-combobox-item-group", c(id = id, dots), .noWS = .noWS, .renderHook = .renderHook)
}
#' @export
#' @rdname components
calciteInput <- function(id, ..., .noWS = NULL, .renderHook = NULL) {

  dots <- rlang::dots_list(...)
  dots_names <- names(dots)
  known_properties <- c(
  "alignment", "autofocus", "clearable", "disabled", "form", "group-separator",
  "icon", "icon-flip-rtl", "label", "loading", "numbering-system",
  "locale-format", "max", "min", "max-length", "min-length",
  "validation-message", "validation-icon", "name", "number-button-type",
  "placeholder", "prefix-text", "read-only", "required", "scale", "status",
  "step", "autocomplete", "pattern", "accept", "multiple", "input-mode",
  "enter-key-hint", "suffix-text", "editing-enabled", "type", "value", "files",
  "messages", "message-overrides", "default-messages", "effective-locale",
  "displayed-value", "slotted-action-el-disabled-internally", "set-focus",
  "select-text"
)
  valid_names <- dots_names %in% c("", known_properties)
  bad_names <- dots_names[!valid_names]

  if (!all(valid_names)) {
    cli::cli_abort(
      c(
        "Unexpected attribute{?s}: {.code {bad_names}}",
        "i" = "expected one of {.var {known_properties}}"
      )
    )
  }

  htmltools::tag("calcite-input", c(id = id, dots), .noWS = .noWS, .renderHook = .renderHook)
}
#' @export
#' @rdname components
calciteFilter <- function(id, ..., .noWS = NULL, .renderHook = NULL) {

  dots <- rlang::dots_list(...)
  dots_names <- names(dots)
  known_properties <- c(
  "items", "disabled", "filtered-items", "placeholder", "scale", "value",
  "messages", "message-overrides", "effective-locale", "default-messages",
  "filter", "set-focus"
)
  valid_names <- dots_names %in% c("", known_properties)
  bad_names <- dots_names[!valid_names]

  if (!all(valid_names)) {
    cli::cli_abort(
      c(
        "Unexpected attribute{?s}: {.code {bad_names}}",
        "i" = "expected one of {.var {known_properties}}"
      )
    )
  }

  htmltools::tag("calcite-filter", c(id = id, dots), .noWS = .noWS, .renderHook = .renderHook)
}
#' @export
#' @rdname components
calciteInputText <- function(id, ..., .noWS = NULL, .renderHook = NULL) {

  dots <- rlang::dots_list(...)
  dots_names <- names(dots)
  known_properties <- c(
  "alignment", "autofocus", "clearable", "disabled", "form", "icon",
  "icon-flip-rtl", "label", "loading", "max-length", "min-length",
  "validation-message", "validation-icon", "name", "placeholder", "prefix-text",
  "read-only", "required", "scale", "status", "autocomplete", "input-mode",
  "enter-key-hint", "pattern", "suffix-text", "editing-enabled", "value",
  "messages", "message-overrides", "effective-locale", "default-messages",
  "slotted-action-el-disabled-internally", "set-focus", "select-text"
)
  valid_names <- dots_names %in% c("", known_properties)
  bad_names <- dots_names[!valid_names]

  if (!all(valid_names)) {
    cli::cli_abort(
      c(
        "Unexpected attribute{?s}: {.code {bad_names}}",
        "i" = "expected one of {.var {known_properties}}"
      )
    )
  }

  htmltools::tag("calcite-input-text", c(id = id, dots), .noWS = .noWS, .renderHook = .renderHook)
}
#' @export
#' @rdname components
calciteChip <- function(id, ..., .noWS = NULL, .renderHook = NULL) {

  dots <- rlang::dots_list(...)
  dots_names <- names(dots)
  known_properties <- c(
  "disabled", "appearance", "kind", "closable", "icon", "icon-flip-rtl",
  "scale", "label", "value", "closed", "selection-mode", "selected",
  "message-overrides", "messages", "interactive", "default-messages",
  "effective-locale", "has-text", "has-image", "set-focus"
)
  valid_names <- dots_names %in% c("", known_properties)
  bad_names <- dots_names[!valid_names]

  if (!all(valid_names)) {
    cli::cli_abort(
      c(
        "Unexpected attribute{?s}: {.code {bad_names}}",
        "i" = "expected one of {.var {known_properties}}"
      )
    )
  }

  htmltools::tag("calcite-chip", c(id = id, dots), .noWS = .noWS, .renderHook = .renderHook)
}
#' @export
#' @rdname components
calciteButton <- function(id, ..., .noWS = NULL, .renderHook = NULL) {

  dots <- rlang::dots_list(...)
  dots_names <- names(dots)
  known_properties <- c(
  "alignment", "appearance", "label", "kind", "disabled", "form", "download",
  "href", "icon-end", "icon-flip-rtl", "icon-start", "loading", "name", "rel",
  "round", "scale", "split-child", "target", "type", "width", "messages",
  "message-overrides", "has-content", "has-loader", "effective-locale",
  "default-messages", "tooltip-text", "set-focus"
)
  valid_names <- dots_names %in% c("", known_properties)
  bad_names <- dots_names[!valid_names]

  if (!all(valid_names)) {
    cli::cli_abort(
      c(
        "Unexpected attribute{?s}: {.code {bad_names}}",
        "i" = "expected one of {.var {known_properties}}"
      )
    )
  }

  htmltools::tag("calcite-button", c(id = id, dots), .noWS = .noWS, .renderHook = .renderHook)
}
#' @export
#' @rdname components
calciteDatePicker <- function(id, ..., .noWS = NULL, .renderHook = NULL) {

  dots <- rlang::dots_list(...)
  dots_names <- names(dots)
  known_properties <- c(
  "active-date", "active-range", "value", "heading-level", "value-as-date",
  "min-as-date", "max-as-date", "min", "max", "numbering-system", "scale",
  "range", "proximity-selection-disabled", "message-overrides", "messages",
  "active-end-date", "active-start-date", "date-time-format",
  "default-messages", "effective-locale", "end-as-date", "hover-range",
  "locale-data", "most-recent-range-value", "start-as-date", "set-focus",
  "reset"
)
  valid_names <- dots_names %in% c("", known_properties)
  bad_names <- dots_names[!valid_names]

  if (!all(valid_names)) {
    cli::cli_abort(
      c(
        "Unexpected attribute{?s}: {.code {bad_names}}",
        "i" = "expected one of {.var {known_properties}}"
      )
    )
  }

  htmltools::tag("calcite-date-picker", c(id = id, dots), .noWS = .noWS, .renderHook = .renderHook)
}
#' @export
#' @rdname components
calciteScrim <- function(id, ..., .noWS = NULL, .renderHook = NULL) {

  dots <- rlang::dots_list(...)
  dots_names <- names(dots)
  known_properties <- c(
  "loading", "messages", "message-overrides", "loader-scale",
  "default-messages", "effective-locale", "has-content"
)
  valid_names <- dots_names %in% c("", known_properties)
  bad_names <- dots_names[!valid_names]

  if (!all(valid_names)) {
    cli::cli_abort(
      c(
        "Unexpected attribute{?s}: {.code {bad_names}}",
        "i" = "expected one of {.var {known_properties}}"
      )
    )
  }

  htmltools::tag("calcite-scrim", c(id = id, dots), .noWS = .noWS, .renderHook = .renderHook)
}
#' @export
#' @rdname components
calciteProgress <- function(id, ..., .noWS = NULL, .renderHook = NULL) {

  dots <- rlang::dots_list(...)
  dots_names <- names(dots)
  known_properties <- c("type", "value", "label", "text", "reversed")
  valid_names <- dots_names %in% c("", known_properties)
  bad_names <- dots_names[!valid_names]

  if (!all(valid_names)) {
    cli::cli_abort(
      c(
        "Unexpected attribute{?s}: {.code {bad_names}}",
        "i" = "expected one of {.var {known_properties}}"
      )
    )
  }

  htmltools::tag("calcite-progress", c(id = id, dots), .noWS = .noWS, .renderHook = .renderHook)
}
#' @export
#' @rdname components
calciteInputMessage <- function(id, ..., .noWS = NULL, .renderHook = NULL) {

  dots <- rlang::dots_list(...)
  dots_names <- names(dots)
  known_properties <- c("icon", "icon-flip-rtl", "scale", "status")
  valid_names <- dots_names %in% c("", known_properties)
  bad_names <- dots_names[!valid_names]

  if (!all(valid_names)) {
    cli::cli_abort(
      c(
        "Unexpected attribute{?s}: {.code {bad_names}}",
        "i" = "expected one of {.var {known_properties}}"
      )
    )
  }

  htmltools::tag("calcite-input-message", c(id = id, dots), .noWS = .noWS, .renderHook = .renderHook)
}
#' @export
#' @rdname components
calciteLoader <- function(id, ..., .noWS = NULL, .renderHook = NULL) {

  dots <- rlang::dots_list(...)
  dots_names <- names(dots)
  known_properties <- c("inline", "label", "scale", "type", "value", "text")
  valid_names <- dots_names %in% c("", known_properties)
  bad_names <- dots_names[!valid_names]

  if (!all(valid_names)) {
    cli::cli_abort(
      c(
        "Unexpected attribute{?s}: {.code {bad_names}}",
        "i" = "expected one of {.var {known_properties}}"
      )
    )
  }

  htmltools::tag("calcite-loader", c(id = id, dots), .noWS = .noWS, .renderHook = .renderHook)
}
#' @export
#' @rdname components
calcitePopover <- function(id, ..., .noWS = NULL, .renderHook = NULL) {

  dots <- rlang::dots_list(...)
  dots_names <- names(dots)
  known_properties <- c(
  "auto-close", "closable", "flip-disabled", "focus-trap-disabled",
  "pointer-disabled", "flip-placements", "heading", "heading-level", "label",
  "message-overrides", "messages", "offset-distance", "offset-skidding", "open",
  "overlay-positioning", "placement", "reference-element", "scale",
  "trigger-disabled", "effective-locale", "floating-layout",
  "effective-reference-element", "default-messages", "reposition", "set-focus",
  "update-focus-trap-elements"
)
  valid_names <- dots_names %in% c("", known_properties)
  bad_names <- dots_names[!valid_names]

  if (!all(valid_names)) {
    cli::cli_abort(
      c(
        "Unexpected attribute{?s}: {.code {bad_names}}",
        "i" = "expected one of {.var {known_properties}}"
      )
    )
  }

  htmltools::tag("calcite-popover", c(id = id, dots), .noWS = .noWS, .renderHook = .renderHook)
}