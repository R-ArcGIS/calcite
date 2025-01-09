#' @export
#' @rdname components
calcite_icon <- function(..., .noWS = NULL, .renderHook = NULL) {

  # dots <- rlang::dots_list(...)
  # dots_names <- names(dots)
  known_properties <- c("icon", "flip-rtl", "scale", "text-label", "path-data", "visible", "icon", "scale")
  # valid_names <- dots_names %in% c("", known_properties)
  # bad_names <- dots_names[!valid_names]

  # if (!all(valid_names)) {
  #   cli::cli_abort(
  #     c(
  #       "Unexpected attribute{?s}: {.code {bad_names}}",
  #       "i" = "expected one of {.var {known_properties}}"
  #     )
  #   )
  # }

  contents <- rlang::dots_list(...)
  htmltools::attachDependencies(
    htmltools::tag("calcite-icon", contents, .noWS = .noWS, .renderHook = .renderHook),
    calcite_dependency()
  )
}
#' @export
#' @rdname components
calcite_list <- function(..., .noWS = NULL, .renderHook = NULL) {

  # dots <- rlang::dots_list(...)
  # dots_names <- names(dots)
  known_properties <- c(
  "disabled", "can-pull", "can-put", "drag-enabled", "group", "filter-enabled",
  "filtered-items", "filtered-data", "filter-placeholder", "filter-text",
  "label", "loading", "message-overrides", "messages", "numbering-system",
  "openable", "selected-items", "selection-mode", "selection-appearance",
  "effective-locale", "default-messages", "assistive-text", "data-for-filter",
  "has-filter-actions-end", "has-filter-actions-start", "has-filter-no-results",
  "set-focus", "filter-text", "message-overrides", "filter-enabled", "group",
  "drag-enabled", "selection-mode", "selection-appearance", "effective-locale"
)
  # valid_names <- dots_names %in% c("", known_properties)
  # bad_names <- dots_names[!valid_names]

  # if (!all(valid_names)) {
  #   cli::cli_abort(
  #     c(
  #       "Unexpected attribute{?s}: {.code {bad_names}}",
  #       "i" = "expected one of {.var {known_properties}}"
  #     )
  #   )
  # }

  contents <- rlang::dots_list(...)
  htmltools::attachDependencies(
    htmltools::tag("calcite-list", contents, .noWS = .noWS, .renderHook = .renderHook),
    calcite_dependency()
  )
}
#' @export
#' @rdname components
calcite_list_item <- function(..., .noWS = NULL, .renderHook = NULL) {

  # dots <- rlang::dots_list(...)
  # dots_names <- names(dots)
  known_properties <- c(
  "active", "closable", "closed", "description", "disabled", "drag-disabled",
  "drag-handle", "drag-selected", "filter-hidden", "label", "metadata", "open",
  "set-size", "set-position", "selected", "value", "selection-mode",
  "selection-appearance", "message-overrides", "messages", "effective-locale",
  "default-messages", "level", "visual-level", "parent-list-el", "openable",
  "has-actions-start", "has-actions-end", "has-custom-content",
  "has-content-start", "has-content-end", "has-content-bottom", "set-focus",
  "active", "closed", "disabled", "selected", "message-overrides",
  "effective-locale"
)
  # valid_names <- dots_names %in% c("", known_properties)
  # bad_names <- dots_names[!valid_names]

  # if (!all(valid_names)) {
  #   cli::cli_abort(
  #     c(
  #       "Unexpected attribute{?s}: {.code {bad_names}}",
  #       "i" = "expected one of {.var {known_properties}}"
  #     )
  #   )
  # }

  contents <- rlang::dots_list(...)
  htmltools::attachDependencies(
    htmltools::tag("calcite-list-item", contents, .noWS = .noWS, .renderHook = .renderHook),
    calcite_dependency()
  )
}
#' @export
#' @rdname components
calcite_list_item_group <- function(..., .noWS = NULL, .renderHook = NULL) {

  # dots <- rlang::dots_list(...)
  # dots_names <- names(dots)
  known_properties <- c("disabled", "filter-hidden", "heading", "visual-level")
  # valid_names <- dots_names %in% c("", known_properties)
  # bad_names <- dots_names[!valid_names]

  # if (!all(valid_names)) {
  #   cli::cli_abort(
  #     c(
  #       "Unexpected attribute{?s}: {.code {bad_names}}",
  #       "i" = "expected one of {.var {known_properties}}"
  #     )
  #   )
  # }

  contents <- rlang::dots_list(...)
  htmltools::attachDependencies(
    htmltools::tag("calcite-list-item-group", contents, .noWS = .noWS, .renderHook = .renderHook),
    calcite_dependency()
  )
}
#' @export
#' @rdname components
calcite_value_list <- function(..., .noWS = NULL, .renderHook = NULL) {

  # dots <- rlang::dots_list(...)
  # dots_names <- names(dots)
  known_properties <- c(
  "disabled", "can-pull", "can-put", "drag-enabled", "filtered-items",
  "filtered-data", "filter-enabled", "filter-placeholder", "filter-text",
  "group", "loading", "multiple", "selection-follows-focus",
  "message-overrides", "messages", "data-for-filter", "default-messages",
  "effective-locale", "selected-values", "get-selected-items", "set-focus",
  "message-overrides", "effective-locale"
)
  # valid_names <- dots_names %in% c("", known_properties)
  # bad_names <- dots_names[!valid_names]

  # if (!all(valid_names)) {
  #   cli::cli_abort(
  #     c(
  #       "Unexpected attribute{?s}: {.code {bad_names}}",
  #       "i" = "expected one of {.var {known_properties}}"
  #     )
  #   )
  # }

  contents <- rlang::dots_list(...)
  htmltools::attachDependencies(
    htmltools::tag("calcite-value-list", contents, .noWS = .noWS, .renderHook = .renderHook),
    calcite_dependency()
  )
}
#' @export
#' @rdname components
calcite_value_list_item <- function(..., .noWS = NULL, .renderHook = NULL) {

  # dots <- rlang::dots_list(...)
  # dots_names <- names(dots)
  known_properties <- c(
  "description", "disabled", "deselect-disabled", "non-interactive",
  "handle-activated", "icon", "icon-flip-rtl", "label", "metadata", "removable",
  "selected", "value", "toggle-selected", "set-focus"
)
  # valid_names <- dots_names %in% c("", known_properties)
  # bad_names <- dots_names[!valid_names]

  # if (!all(valid_names)) {
  #   cli::cli_abort(
  #     c(
  #       "Unexpected attribute{?s}: {.code {bad_names}}",
  #       "i" = "expected one of {.var {known_properties}}"
  #     )
  #   )
  # }

  contents <- rlang::dots_list(...)
  htmltools::attachDependencies(
    htmltools::tag("calcite-value-list-item", contents, .noWS = .noWS, .renderHook = .renderHook),
    calcite_dependency()
  )
}
#' @export
#' @rdname components
calcite_block <- function(..., .noWS = NULL, .renderHook = NULL) {

  # dots <- rlang::dots_list(...)
  # dots_names <- names(dots)
  known_properties <- c(
  "collapsible", "disabled", "drag-handle", "heading", "heading-level",
  "loading", "open", "status", "description", "messages", "message-overrides",
  "overlay-positioning", "effective-locale", "default-messages", "set-focus",
  "open", "message-overrides", "effective-locale"
)
  # valid_names <- dots_names %in% c("", known_properties)
  # bad_names <- dots_names[!valid_names]

  # if (!all(valid_names)) {
  #   cli::cli_abort(
  #     c(
  #       "Unexpected attribute{?s}: {.code {bad_names}}",
  #       "i" = "expected one of {.var {known_properties}}"
  #     )
  #   )
  # }

  contents <- rlang::dots_list(...)
  htmltools::attachDependencies(
    htmltools::tag("calcite-block", contents, .noWS = .noWS, .renderHook = .renderHook),
    calcite_dependency()
  )
}
#' @export
#' @rdname components
calcite_block_section <- function(..., .noWS = NULL, .renderHook = NULL) {

  # dots <- rlang::dots_list(...)
  # dots_names <- names(dots)
  known_properties <- c(
  "open", "status", "text", "toggle-display", "messages", "message-overrides",
  "effective-locale", "default-messages", "set-focus", "message-overrides",
  "effective-locale"
)
  # valid_names <- dots_names %in% c("", known_properties)
  # bad_names <- dots_names[!valid_names]

  # if (!all(valid_names)) {
  #   cli::cli_abort(
  #     c(
  #       "Unexpected attribute{?s}: {.code {bad_names}}",
  #       "i" = "expected one of {.var {known_properties}}"
  #     )
  #   )
  # }

  contents <- rlang::dots_list(...)
  htmltools::attachDependencies(
    htmltools::tag("calcite-block-section", contents, .noWS = .noWS, .renderHook = .renderHook),
    calcite_dependency()
  )
}
#' @export
#' @rdname components
calcite_input_date_picker <- function(..., .noWS = NULL, .renderHook = NULL) {

  # dots <- rlang::dots_list(...)
  # dots_names <- names(dots)
  known_properties <- c(
  "disabled", "focus-trap-disabled", "form", "read-only", "value",
  "flip-placements", "heading-level", "value-as-date", "message-overrides",
  "messages", "min-as-date", "max-as-date", "min", "max", "open",
  "validation-message", "validation-icon", "name", "numbering-system", "scale",
  "status", "placement", "range", "required", "overlay-positioning",
  "proximity-selection-disabled", "layout", "date-picker-active-date",
  "default-messages", "effective-locale", "focused-input", "locale-data",
  "set-focus", "reposition", "focus-trap-disabled", "disabled", "read-only",
  "value", "value-as-date", "flip-placements", "message-overrides", "min",
  "max", "open", "overlay-positioning", "layout", "focused-input",
  "effective-locale"
)
  # valid_names <- dots_names %in% c("", known_properties)
  # bad_names <- dots_names[!valid_names]

  # if (!all(valid_names)) {
  #   cli::cli_abort(
  #     c(
  #       "Unexpected attribute{?s}: {.code {bad_names}}",
  #       "i" = "expected one of {.var {known_properties}}"
  #     )
  #   )
  # }

  contents <- rlang::dots_list(...)
  htmltools::attachDependencies(
    htmltools::tag("calcite-input-date-picker", contents, .noWS = .noWS, .renderHook = .renderHook),
    calcite_dependency()
  )
}
#' @export
#' @rdname components
calcite_action <- function(..., .noWS = NULL, .renderHook = NULL) {

  # dots <- rlang::dots_list(...)
  # dots_names <- names(dots)
  known_properties <- c(
  "active", "alignment", "appearance", "compact", "disabled", "icon",
  "icon-flip-rtl", "indicator", "label", "loading", "scale", "text",
  "text-enabled", "messages", "message-overrides", "effective-locale",
  "default-messages", "set-focus", "message-overrides", "effective-locale"
)
  # valid_names <- dots_names %in% c("", known_properties)
  # bad_names <- dots_names[!valid_names]

  # if (!all(valid_names)) {
  #   cli::cli_abort(
  #     c(
  #       "Unexpected attribute{?s}: {.code {bad_names}}",
  #       "i" = "expected one of {.var {known_properties}}"
  #     )
  #   )
  # }

  contents <- rlang::dots_list(...)
  htmltools::attachDependencies(
    htmltools::tag("calcite-action", contents, .noWS = .noWS, .renderHook = .renderHook),
    calcite_dependency()
  )
}
#' @export
#' @rdname components
calcite_action_menu <- function(..., .noWS = NULL, .renderHook = NULL) {

  # dots <- rlang::dots_list(...)
  # dots_names <- names(dots)
  known_properties <- c(
  "appearance", "expanded", "flip-placements", "label", "open",
  "overlay-positioning", "placement", "scale", "menu-button-el",
  "active-menu-item-index", "set-focus", "expanded", "open",
  "active-menu-item-index"
)
  # valid_names <- dots_names %in% c("", known_properties)
  # bad_names <- dots_names[!valid_names]

  # if (!all(valid_names)) {
  #   cli::cli_abort(
  #     c(
  #       "Unexpected attribute{?s}: {.code {bad_names}}",
  #       "i" = "expected one of {.var {known_properties}}"
  #     )
  #   )
  # }

  contents <- rlang::dots_list(...)
  htmltools::attachDependencies(
    htmltools::tag("calcite-action-menu", contents, .noWS = .noWS, .renderHook = .renderHook),
    calcite_dependency()
  )
}
#' @export
#' @rdname components
calcite_flow_item <- function(..., .noWS = NULL, .renderHook = NULL) {

  # dots <- rlang::dots_list(...)
  # dots_names <- names(dots)
  known_properties <- c(
  "closable", "closed", "collapsed", "collapse-direction", "collapsible",
  "before-back", "description", "disabled", "heading", "heading-level",
  "loading", "menu-open", "message-overrides", "messages",
  "overlay-positioning", "show-back-button", "default-messages",
  "effective-locale", "set-focus", "scroll-content-to", "message-overrides",
  "effective-locale"
)
  # valid_names <- dots_names %in% c("", known_properties)
  # bad_names <- dots_names[!valid_names]

  # if (!all(valid_names)) {
  #   cli::cli_abort(
  #     c(
  #       "Unexpected attribute{?s}: {.code {bad_names}}",
  #       "i" = "expected one of {.var {known_properties}}"
  #     )
  #   )
  # }

  contents <- rlang::dots_list(...)
  htmltools::attachDependencies(
    htmltools::tag("calcite-flow-item", contents, .noWS = .noWS, .renderHook = .renderHook),
    calcite_dependency()
  )
}
#' @export
#' @rdname components
calcite_navigation <- function(..., .noWS = NULL, .renderHook = NULL) {

  # dots <- rlang::dots_list(...)
  # dots_names <- names(dots)
  known_properties <- c(
  "label", "navigation-action", "logo-slot-has-elements",
  "navigation-action-slot-has-elements",
  "primary-content-center-slot-has-elements",
  "primary-content-end-slot-has-elements",
  "primary-content-start-slot-has-elements", "progress-slot-has-element",
  "secondary-slot-has-elements", "tertiary-slot-has-elements",
  "user-slot-has-elements", "set-focus"
)
  # valid_names <- dots_names %in% c("", known_properties)
  # bad_names <- dots_names[!valid_names]

  # if (!all(valid_names)) {
  #   cli::cli_abort(
  #     c(
  #       "Unexpected attribute{?s}: {.code {bad_names}}",
  #       "i" = "expected one of {.var {known_properties}}"
  #     )
  #   )
  # }

  contents <- rlang::dots_list(...)
  htmltools::attachDependencies(
    htmltools::tag("calcite-navigation", contents, .noWS = .noWS, .renderHook = .renderHook),
    calcite_dependency()
  )
}
#' @export
#' @rdname components
calcite_navigation_user <- function(..., .noWS = NULL, .renderHook = NULL) {

  # dots <- rlang::dots_list(...)
  # dots_names <- names(dots)
  known_properties <- c(
  "active", "full-name", "label", "text-disabled", "thumbnail", "user-id",
  "username", "set-focus"
)
  # valid_names <- dots_names %in% c("", known_properties)
  # bad_names <- dots_names[!valid_names]

  # if (!all(valid_names)) {
  #   cli::cli_abort(
  #     c(
  #       "Unexpected attribute{?s}: {.code {bad_names}}",
  #       "i" = "expected one of {.var {known_properties}}"
  #     )
  #   )
  # }

  contents <- rlang::dots_list(...)
  htmltools::attachDependencies(
    htmltools::tag("calcite-navigation-user", contents, .noWS = .noWS, .renderHook = .renderHook),
    calcite_dependency()
  )
}
#' @export
#' @rdname components
calcite_navigation_logo <- function(..., .noWS = NULL, .renderHook = NULL) {

  # dots <- rlang::dots_list(...)
  # dots_names <- names(dots)
  known_properties <- c(
  "active", "href", "icon", "icon-flip-rtl", "label", "rel", "description",
  "target", "heading", "thumbnail", "set-focus"
)
  # valid_names <- dots_names %in% c("", known_properties)
  # bad_names <- dots_names[!valid_names]

  # if (!all(valid_names)) {
  #   cli::cli_abort(
  #     c(
  #       "Unexpected attribute{?s}: {.code {bad_names}}",
  #       "i" = "expected one of {.var {known_properties}}"
  #     )
  #   )
  # }

  contents <- rlang::dots_list(...)
  htmltools::attachDependencies(
    htmltools::tag("calcite-navigation-logo", contents, .noWS = .noWS, .renderHook = .renderHook),
    calcite_dependency()
  )
}
#' @export
#' @rdname components
calcite_tip <- function(..., .noWS = NULL, .renderHook = NULL) {

  # dots <- rlang::dots_list(...)
  # dots_names <- names(dots)
  known_properties <- c(
  "closed", "close-disabled", "heading", "heading-level", "selected",
  "messages", "message-overrides", "default-messages", "effective-locale",
  "message-overrides", "effective-locale"
)
  # valid_names <- dots_names %in% c("", known_properties)
  # bad_names <- dots_names[!valid_names]

  # if (!all(valid_names)) {
  #   cli::cli_abort(
  #     c(
  #       "Unexpected attribute{?s}: {.code {bad_names}}",
  #       "i" = "expected one of {.var {known_properties}}"
  #     )
  #   )
  # }

  contents <- rlang::dots_list(...)
  htmltools::attachDependencies(
    htmltools::tag("calcite-tip", contents, .noWS = .noWS, .renderHook = .renderHook),
    calcite_dependency()
  )
}
#' @export
#' @rdname components
calcite_tip_manager <- function(..., .noWS = NULL, .renderHook = NULL) {

  # dots <- rlang::dots_list(...)
  # dots_names <- names(dots)
  known_properties <- c(
  "closed", "heading-level", "messages", "message-overrides", "selected-index",
  "tips", "total", "direction", "group-title", "default-messages",
  "effective-locale", "next-tip", "previous-tip", "closed", "message-overrides",
  "selected-index", "effective-locale"
)
  # valid_names <- dots_names %in% c("", known_properties)
  # bad_names <- dots_names[!valid_names]

  # if (!all(valid_names)) {
  #   cli::cli_abort(
  #     c(
  #       "Unexpected attribute{?s}: {.code {bad_names}}",
  #       "i" = "expected one of {.var {known_properties}}"
  #     )
  #   )
  # }

  contents <- rlang::dots_list(...)
  htmltools::attachDependencies(
    htmltools::tag("calcite-tip-manager", contents, .noWS = .noWS, .renderHook = .renderHook),
    calcite_dependency()
  )
}
#' @export
#' @rdname components
calcite_tip_group <- function(..., .noWS = NULL, .renderHook = NULL) {

  # dots <- rlang::dots_list(...)
  # dots_names <- names(dots)
  known_properties <- "group-title"
  # valid_names <- dots_names %in% c("", known_properties)
  # bad_names <- dots_names[!valid_names]

  # if (!all(valid_names)) {
  #   cli::cli_abort(
  #     c(
  #       "Unexpected attribute{?s}: {.code {bad_names}}",
  #       "i" = "expected one of {.var {known_properties}}"
  #     )
  #   )
  # }

  contents <- rlang::dots_list(...)
  htmltools::attachDependencies(
    htmltools::tag("calcite-tip-group", contents, .noWS = .noWS, .renderHook = .renderHook),
    calcite_dependency()
  )
}
#' @export
#' @rdname components
calcite_action_bar <- function(..., .noWS = NULL, .renderHook = NULL) {

  # dots <- rlang::dots_list(...)
  # dots_names <- names(dots)
  known_properties <- c(
  "actions-end-group-label", "expand-disabled", "expanded", "layout",
  "overflow-actions-disabled", "overlay-positioning", "position", "scale",
  "messages", "message-overrides", "effective-locale", "has-actions-end",
  "has-bottom-actions", "expand-tooltip", "default-messages",
  "overflow-actions", "set-focus", "expand-disabled", "expanded", "layout",
  "overflow-actions-disabled", "message-overrides", "effective-locale"
)
  # valid_names <- dots_names %in% c("", known_properties)
  # bad_names <- dots_names[!valid_names]

  # if (!all(valid_names)) {
  #   cli::cli_abort(
  #     c(
  #       "Unexpected attribute{?s}: {.code {bad_names}}",
  #       "i" = "expected one of {.var {known_properties}}"
  #     )
  #   )
  # }

  contents <- rlang::dots_list(...)
  htmltools::attachDependencies(
    htmltools::tag("calcite-action-bar", contents, .noWS = .noWS, .renderHook = .renderHook),
    calcite_dependency()
  )
}
#' @export
#' @rdname components
calcite_action_pad <- function(..., .noWS = NULL, .renderHook = NULL) {

  # dots <- rlang::dots_list(...)
  # dots_names <- names(dots)
  known_properties <- c(
  "actions-end-group-label", "expand-disabled", "expanded", "layout",
  "position", "scale", "messages", "message-overrides", "overlay-positioning",
  "expand-tooltip", "effective-locale", "default-messages", "set-focus",
  "expanded", "layout", "message-overrides", "effective-locale"
)
  # valid_names <- dots_names %in% c("", known_properties)
  # bad_names <- dots_names[!valid_names]

  # if (!all(valid_names)) {
  #   cli::cli_abort(
  #     c(
  #       "Unexpected attribute{?s}: {.code {bad_names}}",
  #       "i" = "expected one of {.var {known_properties}}"
  #     )
  #   )
  # }

  contents <- rlang::dots_list(...)
  htmltools::attachDependencies(
    htmltools::tag("calcite-action-pad", contents, .noWS = .noWS, .renderHook = .renderHook),
    calcite_dependency()
  )
}
#' @export
#' @rdname components
calcite_input_time_zone <- function(..., .noWS = NULL, .renderHook = NULL) {

  # dots <- rlang::dots_list(...)
  # dots_names <- names(dots)
  known_properties <- c(
  "disabled", "form", "max-items", "messages", "message-overrides", "mode",
  "validation-message", "validation-icon", "name", "open",
  "overlay-positioning", "reference-date", "required", "scale", "status",
  "value", "default-messages", "effective-locale", "set-focus",
  "message-overrides", "messages", "mode", "reference-date", "value",
  "effective-locale"
)
  # valid_names <- dots_names %in% c("", known_properties)
  # bad_names <- dots_names[!valid_names]

  # if (!all(valid_names)) {
  #   cli::cli_abort(
  #     c(
  #       "Unexpected attribute{?s}: {.code {bad_names}}",
  #       "i" = "expected one of {.var {known_properties}}"
  #     )
  #   )
  # }

  contents <- rlang::dots_list(...)
  htmltools::attachDependencies(
    htmltools::tag("calcite-input-time-zone", contents, .noWS = .noWS, .renderHook = .renderHook),
    calcite_dependency()
  )
}
#' @export
#' @rdname components
calcite_table <- function(..., .noWS = NULL, .renderHook = NULL) {

  # dots <- rlang::dots_list(...)
  # dots_names <- names(dots)
  known_properties <- c(
  "bordered", "caption", "group-separator", "interaction-mode", "layout",
  "numbered", "numbering-system", "page-size", "scale", "selection-mode",
  "zebra", "striped", "selected-items", "messages", "message-overrides",
  "col-count", "page-start-row", "selected-count", "read-cell-contents-to-at",
  "default-messages", "effective-locale", "group-separator", "interaction-mode",
  "numbered", "numbering-system", "page-size", "scale", "selection-mode",
  "message-overrides", "effective-locale"
)
  # valid_names <- dots_names %in% c("", known_properties)
  # bad_names <- dots_names[!valid_names]

  # if (!all(valid_names)) {
  #   cli::cli_abort(
  #     c(
  #       "Unexpected attribute{?s}: {.code {bad_names}}",
  #       "i" = "expected one of {.var {known_properties}}"
  #     )
  #   )
  # }

  contents <- rlang::dots_list(...)
  htmltools::attachDependencies(
    htmltools::tag("calcite-table", contents, .noWS = .noWS, .renderHook = .renderHook),
    calcite_dependency()
  )
}
#' @export
#' @rdname components
calcite_stepper <- function(..., .noWS = NULL, .renderHook = NULL) {

  # dots <- rlang::dots_list(...)
  # dots_names <- names(dots)
  known_properties <- c(
  "icon", "layout", "numbered", "scale", "messages", "numbering-system",
  "selected-item", "message-overrides", "default-messages", "effective-locale",
  "current-active-position", "next-step", "prev-step", "go-to-step",
  "start-step", "end-step", "icon", "layout", "numbered", "scale",
  "numbering-system", "message-overrides", "effective-locale",
  "current-active-position"
)
  # valid_names <- dots_names %in% c("", known_properties)
  # bad_names <- dots_names[!valid_names]

  # if (!all(valid_names)) {
  #   cli::cli_abort(
  #     c(
  #       "Unexpected attribute{?s}: {.code {bad_names}}",
  #       "i" = "expected one of {.var {known_properties}}"
  #     )
  #   )
  # }

  contents <- rlang::dots_list(...)
  htmltools::attachDependencies(
    htmltools::tag("calcite-stepper", contents, .noWS = .noWS, .renderHook = .renderHook),
    calcite_dependency()
  )
}
#' @export
#' @rdname components
calcite_stepper_item <- function(..., .noWS = NULL, .renderHook = NULL) {

  # dots <- rlang::dots_list(...)
  # dots_names <- names(dots)
  known_properties <- c(
  "selected", "complete", "error", "disabled", "heading", "description",
  "icon-flip-rtl", "numbering-system", "icon", "layout", "messages", "numbered",
  "scale", "message-overrides", "default-messages", "effective-locale",
  "set-focus", "selected", "disabled", "message-overrides", "effective-locale"
)
  # valid_names <- dots_names %in% c("", known_properties)
  # bad_names <- dots_names[!valid_names]

  # if (!all(valid_names)) {
  #   cli::cli_abort(
  #     c(
  #       "Unexpected attribute{?s}: {.code {bad_names}}",
  #       "i" = "expected one of {.var {known_properties}}"
  #     )
  #   )
  # }

  contents <- rlang::dots_list(...)
  htmltools::attachDependencies(
    htmltools::tag("calcite-stepper-item", contents, .noWS = .noWS, .renderHook = .renderHook),
    calcite_dependency()
  )
}
#' @export
#' @rdname components
calcite_split_button <- function(..., .noWS = NULL, .renderHook = NULL) {

  # dots <- rlang::dots_list(...)
  # dots_names <- names(dots)
  known_properties <- c(
  "appearance", "kind", "disabled", "active", "dropdown-icon-type",
  "dropdown-label", "loading", "overlay-positioning", "primary-icon-end",
  "primary-icon-flip-rtl", "primary-icon-start", "primary-label",
  "primary-text", "scale", "width", "set-focus", "disabled", "active"
)
  # valid_names <- dots_names %in% c("", known_properties)
  # bad_names <- dots_names[!valid_names]

  # if (!all(valid_names)) {
  #   cli::cli_abort(
  #     c(
  #       "Unexpected attribute{?s}: {.code {bad_names}}",
  #       "i" = "expected one of {.var {known_properties}}"
  #     )
  #   )
  # }

  contents <- rlang::dots_list(...)
  htmltools::attachDependencies(
    htmltools::tag("calcite-split-button", contents, .noWS = .noWS, .renderHook = .renderHook),
    calcite_dependency()
  )
}
#' @export
#' @rdname components
calcite_segmented_control <- function(..., .noWS = NULL, .renderHook = NULL) {

  # dots <- rlang::dots_list(...)
  # dots_names <- names(dots)
  known_properties <- c(
  "appearance", "disabled", "form", "required", "name", "layout", "scale",
  "value", "selected-item", "status", "validation-message", "validation-icon",
  "width", "set-focus", "appearance", "layout", "scale", "value",
  "selected-item"
)
  # valid_names <- dots_names %in% c("", known_properties)
  # bad_names <- dots_names[!valid_names]

  # if (!all(valid_names)) {
  #   cli::cli_abort(
  #     c(
  #       "Unexpected attribute{?s}: {.code {bad_names}}",
  #       "i" = "expected one of {.var {known_properties}}"
  #     )
  #   )
  # }

  contents <- rlang::dots_list(...)
  htmltools::attachDependencies(
    htmltools::tag("calcite-segmented-control", contents, .noWS = .noWS, .renderHook = .renderHook),
    calcite_dependency()
  )
}
#' @export
#' @rdname components
calcite_segmented_control_item <- function(..., .noWS = NULL, .renderHook = NULL) {

  # dots <- rlang::dots_list(...)
  # dots_names <- names(dots)
  known_properties <- c(
  "checked", "icon-flip-rtl", "icon-start", "icon-end", "value", "appearance",
  "layout", "scale", "checked"
)
  # valid_names <- dots_names %in% c("", known_properties)
  # bad_names <- dots_names[!valid_names]

  # if (!all(valid_names)) {
  #   cli::cli_abort(
  #     c(
  #       "Unexpected attribute{?s}: {.code {bad_names}}",
  #       "i" = "expected one of {.var {known_properties}}"
  #     )
  #   )
  # }

  contents <- rlang::dots_list(...)
  htmltools::attachDependencies(
    htmltools::tag("calcite-segmented-control-item", contents, .noWS = .noWS, .renderHook = .renderHook),
    calcite_dependency()
  )
}
#' @export
#' @rdname components
calcite_checkbox <- function(..., .noWS = NULL, .renderHook = NULL) {

  # dots <- rlang::dots_list(...)
  # dots_names <- names(dots)
  known_properties <- c(
  "checked", "disabled", "form", "guid", "hovered", "indeterminate", "label",
  "name", "required", "scale", "status", "value", "set-focus"
)
  # valid_names <- dots_names %in% c("", known_properties)
  # bad_names <- dots_names[!valid_names]

  # if (!all(valid_names)) {
  #   cli::cli_abort(
  #     c(
  #       "Unexpected attribute{?s}: {.code {bad_names}}",
  #       "i" = "expected one of {.var {known_properties}}"
  #     )
  #   )
  # }

  contents <- rlang::dots_list(...)
  htmltools::attachDependencies(
    htmltools::tag("calcite-checkbox", contents, .noWS = .noWS, .renderHook = .renderHook),
    calcite_dependency()
  )
}
#' @export
#' @rdname components
calcite_card <- function(..., .noWS = NULL, .renderHook = NULL) {

  # dots <- rlang::dots_list(...)
  # dots_names <- names(dots)
  known_properties <- c(
  "loading", "thumbnail-position", "disabled", "label", "selectable",
  "selected", "messages", "selection-mode", "message-overrides",
  "effective-locale", "default-messages", "has-content", "set-focus",
  "message-overrides", "effective-locale"
)
  # valid_names <- dots_names %in% c("", known_properties)
  # bad_names <- dots_names[!valid_names]

  # if (!all(valid_names)) {
  #   cli::cli_abort(
  #     c(
  #       "Unexpected attribute{?s}: {.code {bad_names}}",
  #       "i" = "expected one of {.var {known_properties}}"
  #     )
  #   )
  # }

  contents <- rlang::dots_list(...)
  htmltools::attachDependencies(
    htmltools::tag("calcite-card", contents, .noWS = .noWS, .renderHook = .renderHook),
    calcite_dependency()
  )
}
#' @export
#' @rdname components
calcite_tile_select <- function(..., .noWS = NULL, .renderHook = NULL) {

  # dots <- rlang::dots_list(...)
  # dots_names <- names(dots)
  known_properties <- c(
  "checked", "description", "disabled", "heading", "icon", "icon-flip-rtl",
  "name", "input-enabled", "input-alignment", "type", "value", "width",
  "focused", "set-focus", "checked", "name"
)
  # valid_names <- dots_names %in% c("", known_properties)
  # bad_names <- dots_names[!valid_names]

  # if (!all(valid_names)) {
  #   cli::cli_abort(
  #     c(
  #       "Unexpected attribute{?s}: {.code {bad_names}}",
  #       "i" = "expected one of {.var {known_properties}}"
  #     )
  #   )
  # }

  contents <- rlang::dots_list(...)
  htmltools::attachDependencies(
    htmltools::tag("calcite-tile-select", contents, .noWS = .noWS, .renderHook = .renderHook),
    calcite_dependency()
  )
}
#' @export
#' @rdname components
calcite_tile_select_group <- function(..., .noWS = NULL, .renderHook = NULL) {

  # dots <- rlang::dots_list(...)
  # dots_names <- names(dots)
  known_properties <- c("disabled", "layout")
  # valid_names <- dots_names %in% c("", known_properties)
  # bad_names <- dots_names[!valid_names]

  # if (!all(valid_names)) {
  #   cli::cli_abort(
  #     c(
  #       "Unexpected attribute{?s}: {.code {bad_names}}",
  #       "i" = "expected one of {.var {known_properties}}"
  #     )
  #   )
  # }

  contents <- rlang::dots_list(...)
  htmltools::attachDependencies(
    htmltools::tag("calcite-tile-select-group", contents, .noWS = .noWS, .renderHook = .renderHook),
    calcite_dependency()
  )
}
#' @export
#' @rdname components
calcite_fab <- function(..., .noWS = NULL, .renderHook = NULL) {

  # dots <- rlang::dots_list(...)
  # dots_names <- names(dots)
  known_properties <- c(
  "appearance", "kind", "disabled", "icon", "icon-flip-rtl", "label", "loading",
  "scale", "text", "text-enabled", "set-focus"
)
  # valid_names <- dots_names %in% c("", known_properties)
  # bad_names <- dots_names[!valid_names]

  # if (!all(valid_names)) {
  #   cli::cli_abort(
  #     c(
  #       "Unexpected attribute{?s}: {.code {bad_names}}",
  #       "i" = "expected one of {.var {known_properties}}"
  #     )
  #   )
  # }

  contents <- rlang::dots_list(...)
  htmltools::attachDependencies(
    htmltools::tag("calcite-fab", contents, .noWS = .noWS, .renderHook = .renderHook),
    calcite_dependency()
  )
}
#' @export
#' @rdname components
calcite_inline_editable <- function(..., .noWS = NULL, .renderHook = NULL) {

  # dots <- rlang::dots_list(...)
  # dots_names <- names(dots)
  known_properties <- c(
  "disabled", "editing-enabled", "loading", "controls", "scale",
  "after-confirm", "messages", "message-overrides", "default-messages",
  "effective-locale", "set-focus", "disabled", "editing-enabled",
  "message-overrides", "effective-locale"
)
  # valid_names <- dots_names %in% c("", known_properties)
  # bad_names <- dots_names[!valid_names]

  # if (!all(valid_names)) {
  #   cli::cli_abort(
  #     c(
  #       "Unexpected attribute{?s}: {.code {bad_names}}",
  #       "i" = "expected one of {.var {known_properties}}"
  #     )
  #   )
  # }

  contents <- rlang::dots_list(...)
  htmltools::attachDependencies(
    htmltools::tag("calcite-inline-editable", contents, .noWS = .noWS, .renderHook = .renderHook),
    calcite_dependency()
  )
}
#' @export
#' @rdname components
calcite_modal <- function(..., .noWS = NULL, .renderHook = NULL) {

  # dots <- rlang::dots_list(...)
  # dots_names <- names(dots)
  known_properties <- c(
  "open", "opened", "before-close", "close-button-disabled",
  "focus-trap-disabled", "outside-close-disabled", "docked", "escape-disabled",
  "scale", "width-scale", "fullscreen", "kind", "messages", "message-overrides",
  "slotted-in-shell", "css-width", "css-height", "has-footer",
  "has-content-top", "has-content-bottom", "effective-locale",
  "default-messages", "set-focus", "update-focus-trap-elements",
  "scroll-content", "focus-trap-disabled", "message-overrides",
  "effective-locale", "open", "opened"
)
  # valid_names <- dots_names %in% c("", known_properties)
  # bad_names <- dots_names[!valid_names]

  # if (!all(valid_names)) {
  #   cli::cli_abort(
  #     c(
  #       "Unexpected attribute{?s}: {.code {bad_names}}",
  #       "i" = "expected one of {.var {known_properties}}"
  #     )
  #   )
  # }

  contents <- rlang::dots_list(...)
  htmltools::attachDependencies(
    htmltools::tag("calcite-modal", contents, .noWS = .noWS, .renderHook = .renderHook),
    calcite_dependency()
  )
}
#' @export
#' @rdname components
calcite_table_row <- function(..., .noWS = NULL, .renderHook = NULL) {

  # dots <- rlang::dots_list(...)
  # dots_names <- names(dots)
  known_properties <- c(
  "alignment", "disabled", "selected", "cell-count", "interaction-mode",
  "last-visible-row", "row-type", "numbered", "position-section",
  "position-section-localized", "position-all", "read-cell-contents-to-at",
  "scale", "selection-mode", "selected-row-count",
  "selected-row-count-localized", "body-row-count", "effective-locale",
  "body-row-count", "scale", "selected", "selected-row-count",
  "interaction-mode", "numbered", "selection-mode"
)
  # valid_names <- dots_names %in% c("", known_properties)
  # bad_names <- dots_names[!valid_names]

  # if (!all(valid_names)) {
  #   cli::cli_abort(
  #     c(
  #       "Unexpected attribute{?s}: {.code {bad_names}}",
  #       "i" = "expected one of {.var {known_properties}}"
  #     )
  #   )
  # }

  contents <- rlang::dots_list(...)
  htmltools::attachDependencies(
    htmltools::tag("calcite-table-row", contents, .noWS = .noWS, .renderHook = .renderHook),
    calcite_dependency()
  )
}
#' @export
#' @rdname components
calcite_select <- function(..., .noWS = NULL, .renderHook = NULL) {

  # dots <- rlang::dots_list(...)
  # dots_names <- names(dots)
  known_properties <- c(
  "disabled", "form", "label", "validation-message", "validation-icon", "name",
  "required", "scale", "status", "value", "selected-option", "width",
  "set-focus", "value", "selected-option"
)
  # valid_names <- dots_names %in% c("", known_properties)
  # bad_names <- dots_names[!valid_names]

  # if (!all(valid_names)) {
  #   cli::cli_abort(
  #     c(
  #       "Unexpected attribute{?s}: {.code {bad_names}}",
  #       "i" = "expected one of {.var {known_properties}}"
  #     )
  #   )
  # }

  contents <- rlang::dots_list(...)
  htmltools::attachDependencies(
    htmltools::tag("calcite-select", contents, .noWS = .noWS, .renderHook = .renderHook),
    calcite_dependency()
  )
}
#' @export
#' @rdname components
calcite_option <- function(..., .noWS = NULL, .renderHook = NULL) {

  # dots <- rlang::dots_list(...)
  # dots_names <- names(dots)
  known_properties <- rep(c("disabled", "label", "selected", "value"), 2)
  # valid_names <- dots_names %in% c("", known_properties)
  # bad_names <- dots_names[!valid_names]

  # if (!all(valid_names)) {
  #   cli::cli_abort(
  #     c(
  #       "Unexpected attribute{?s}: {.code {bad_names}}",
  #       "i" = "expected one of {.var {known_properties}}"
  #     )
  #   )
  # }

  contents <- rlang::dots_list(...)
  htmltools::attachDependencies(
    htmltools::tag("calcite-option", contents, .noWS = .noWS, .renderHook = .renderHook),
    calcite_dependency()
  )
}
#' @export
#' @rdname components
calcite_option_group <- function(..., .noWS = NULL, .renderHook = NULL) {

  # dots <- rlang::dots_list(...)
  # dots_names <- names(dots)
  known_properties <- rep(c("disabled", "label"), 2)
  # valid_names <- dots_names %in% c("", known_properties)
  # bad_names <- dots_names[!valid_names]

  # if (!all(valid_names)) {
  #   cli::cli_abort(
  #     c(
  #       "Unexpected attribute{?s}: {.code {bad_names}}",
  #       "i" = "expected one of {.var {known_properties}}"
  #     )
  #   )
  # }

  contents <- rlang::dots_list(...)
  htmltools::attachDependencies(
    htmltools::tag("calcite-option-group", contents, .noWS = .noWS, .renderHook = .renderHook),
    calcite_dependency()
  )
}
#' @export
#' @rdname components
calcite_tree_item <- function(..., .noWS = NULL, .renderHook = NULL) {

  # dots <- rlang::dots_list(...)
  # dots_names <- names(dots)
  known_properties <- c(
  "disabled", "expanded", "icon-flip-rtl", "icon-start", "selected",
  "parent-expanded", "depth", "has-children", "lines", "scale", "indeterminate",
  "selection-mode", "has-end-actions", "update-after-initial-render",
  "expanded", "selected", "selection-mode"
)
  # valid_names <- dots_names %in% c("", known_properties)
  # bad_names <- dots_names[!valid_names]

  # if (!all(valid_names)) {
  #   cli::cli_abort(
  #     c(
  #       "Unexpected attribute{?s}: {.code {bad_names}}",
  #       "i" = "expected one of {.var {known_properties}}"
  #     )
  #   )
  # }

  contents <- rlang::dots_list(...)
  htmltools::attachDependencies(
    htmltools::tag("calcite-tree-item", contents, .noWS = .noWS, .renderHook = .renderHook),
    calcite_dependency()
  )
}
#' @export
#' @rdname components
calcite_tree <- function(..., .noWS = NULL, .renderHook = NULL) {

  # dots <- rlang::dots_list(...)
  # dots_names <- names(dots)
  known_properties <- c("lines", "child", "scale", "selection-mode", "selected-items")
  # valid_names <- dots_names %in% c("", known_properties)
  # bad_names <- dots_names[!valid_names]

  # if (!all(valid_names)) {
  #   cli::cli_abort(
  #     c(
  #       "Unexpected attribute{?s}: {.code {bad_names}}",
  #       "i" = "expected one of {.var {known_properties}}"
  #     )
  #   )
  # }

  contents <- rlang::dots_list(...)
  htmltools::attachDependencies(
    htmltools::tag("calcite-tree", contents, .noWS = .noWS, .renderHook = .renderHook),
    calcite_dependency()
  )
}
#' @export
#' @rdname components
calcite_alert <- function(..., .noWS = NULL, .renderHook = NULL) {

  # dots <- rlang::dots_list(...)
  # dots_names <- names(dots)
  known_properties <- c(
  "open", "auto-close", "auto-close-duration", "kind", "icon", "icon-flip-rtl",
  "label", "numbering-system", "placement", "scale", "messages",
  "message-overrides", "slotted-in-shell", "default-messages",
  "effective-locale", "number-string-formatter", "has-end-actions", "queue",
  "queue-length", "queued", "set-focus", "open", "message-overrides",
  "auto-close-duration", "effective-locale", "numbering-system"
)
  # valid_names <- dots_names %in% c("", known_properties)
  # bad_names <- dots_names[!valid_names]

  # if (!all(valid_names)) {
  #   cli::cli_abort(
  #     c(
  #       "Unexpected attribute{?s}: {.code {bad_names}}",
  #       "i" = "expected one of {.var {known_properties}}"
  #     )
  #   )
  # }

  contents <- rlang::dots_list(...)
  htmltools::attachDependencies(
    htmltools::tag("calcite-alert", contents, .noWS = .noWS, .renderHook = .renderHook),
    calcite_dependency()
  )
}
#' @export
#' @rdname components
calcite_radio_button_group <- function(..., .noWS = NULL, .renderHook = NULL) {

  # dots <- rlang::dots_list(...)
  # dots_names <- names(dots)
  known_properties <- c(
  "disabled", "layout", "name", "required", "selected-item", "scale", "status",
  "validation-message", "validation-icon", "radio-buttons", "set-focus",
  "hidden", "disabled", "layout", "scale"
)
  # valid_names <- dots_names %in% c("", known_properties)
  # bad_names <- dots_names[!valid_names]

  # if (!all(valid_names)) {
  #   cli::cli_abort(
  #     c(
  #       "Unexpected attribute{?s}: {.code {bad_names}}",
  #       "i" = "expected one of {.var {known_properties}}"
  #     )
  #   )
  # }

  contents <- rlang::dots_list(...)
  htmltools::attachDependencies(
    htmltools::tag("calcite-radio-button-group", contents, .noWS = .noWS, .renderHook = .renderHook),
    calcite_dependency()
  )
}
#' @export
#' @rdname components
calcite_rating <- function(..., .noWS = NULL, .renderHook = NULL) {

  # dots <- rlang::dots_list(...)
  # dots_names <- names(dots)
  known_properties <- c(
  "average", "count", "disabled", "form", "messages", "message-overrides",
  "name", "read-only", "required", "scale", "show-chip", "value",
  "effective-locale", "default-messages", "hover-value", "set-focus",
  "message-overrides", "value", "effective-locale"
)
  # valid_names <- dots_names %in% c("", known_properties)
  # bad_names <- dots_names[!valid_names]

  # if (!all(valid_names)) {
  #   cli::cli_abort(
  #     c(
  #       "Unexpected attribute{?s}: {.code {bad_names}}",
  #       "i" = "expected one of {.var {known_properties}}"
  #     )
  #   )
  # }

  contents <- rlang::dots_list(...)
  htmltools::attachDependencies(
    htmltools::tag("calcite-rating", contents, .noWS = .noWS, .renderHook = .renderHook),
    calcite_dependency()
  )
}
#' @export
#' @rdname components
calcite_sheet <- function(..., .noWS = NULL, .renderHook = NULL) {

  # dots <- rlang::dots_list(...)
  # dots_names <- names(dots)
  known_properties <- c(
  "before-close", "display-mode", "escape-disabled", "height-scale",
  "focus-trap-disabled", "label", "open", "opened", "outside-close-disabled",
  "position", "slotted-in-shell", "width-scale", "set-focus",
  "update-focus-trap-elements", "focus-trap-disabled", "open", "opened"
)
  # valid_names <- dots_names %in% c("", known_properties)
  # bad_names <- dots_names[!valid_names]

  # if (!all(valid_names)) {
  #   cli::cli_abort(
  #     c(
  #       "Unexpected attribute{?s}: {.code {bad_names}}",
  #       "i" = "expected one of {.var {known_properties}}"
  #     )
  #   )
  # }

  contents <- rlang::dots_list(...)
  htmltools::attachDependencies(
    htmltools::tag("calcite-sheet", contents, .noWS = .noWS, .renderHook = .renderHook),
    calcite_dependency()
  )
}
#' @export
#' @rdname components
calcite_text_area <- function(..., .noWS = NULL, .renderHook = NULL) {

  # dots <- rlang::dots_list(...)
  # dots_names <- names(dots)
  known_properties <- c(
  "autofocus", "columns", "disabled", "form", "group-separator", "label",
  "min-length", "max-length", "messages", "validation-message",
  "validation-icon", "name", "numbering-system", "placeholder", "read-only",
  "required", "resize", "rows", "scale", "status", "value", "wrap",
  "message-overrides", "default-messages", "end-slot-has-elements",
  "start-slot-has-elements", "effective-locale", "set-focus", "select-text",
  "message-overrides", "effective-locale"
)
  # valid_names <- dots_names %in% c("", known_properties)
  # bad_names <- dots_names[!valid_names]

  # if (!all(valid_names)) {
  #   cli::cli_abort(
  #     c(
  #       "Unexpected attribute{?s}: {.code {bad_names}}",
  #       "i" = "expected one of {.var {known_properties}}"
  #     )
  #   )
  # }

  contents <- rlang::dots_list(...)
  htmltools::attachDependencies(
    htmltools::tag("calcite-text-area", contents, .noWS = .noWS, .renderHook = .renderHook),
    calcite_dependency()
  )
}
#' @export
#' @rdname components
calcite_tile <- function(..., .noWS = NULL, .renderHook = NULL) {

  # dots <- rlang::dots_list(...)
  # dots_names <- names(dots)
  known_properties <- c(
  "active", "alignment", "description", "disabled", "embed", "focused",
  "heading", "href", "icon", "icon-flip-rtl", "scale"
)
  # valid_names <- dots_names %in% c("", known_properties)
  # bad_names <- dots_names[!valid_names]

  # if (!all(valid_names)) {
  #   cli::cli_abort(
  #     c(
  #       "Unexpected attribute{?s}: {.code {bad_names}}",
  #       "i" = "expected one of {.var {known_properties}}"
  #     )
  #   )
  # }

  contents <- rlang::dots_list(...)
  htmltools::attachDependencies(
    htmltools::tag("calcite-tile", contents, .noWS = .noWS, .renderHook = .renderHook),
    calcite_dependency()
  )
}
#' @export
#' @rdname components
calcite_accordion_item <- function(..., .noWS = NULL, .renderHook = NULL) {

  # dots <- rlang::dots_list(...)
  # dots_names <- names(dots)
  known_properties <- c(
  "expanded", "heading", "description", "icon-start", "icon-end",
  "icon-flip-rtl", "icon-position", "icon-type", "accordion-parent", "scale"
)
  # valid_names <- dots_names %in% c("", known_properties)
  # bad_names <- dots_names[!valid_names]

  # if (!all(valid_names)) {
  #   cli::cli_abort(
  #     c(
  #       "Unexpected attribute{?s}: {.code {bad_names}}",
  #       "i" = "expected one of {.var {known_properties}}"
  #     )
  #   )
  # }

  contents <- rlang::dots_list(...)
  htmltools::attachDependencies(
    htmltools::tag("calcite-accordion-item", contents, .noWS = .noWS, .renderHook = .renderHook),
    calcite_dependency()
  )
}
#' @export
#' @rdname components
calcite_accordion <- function(..., .noWS = NULL, .renderHook = NULL) {

  # dots <- rlang::dots_list(...)
  # dots_names <- names(dots)
  known_properties <- c(
  "appearance", "icon-position", "icon-type", "scale", "selection-mode",
  "icon-position", "icon-type", "scale", "selection-mode"
)
  # valid_names <- dots_names %in% c("", known_properties)
  # bad_names <- dots_names[!valid_names]

  # if (!all(valid_names)) {
  #   cli::cli_abort(
  #     c(
  #       "Unexpected attribute{?s}: {.code {bad_names}}",
  #       "i" = "expected one of {.var {known_properties}}"
  #     )
  #   )
  # }

  contents <- rlang::dots_list(...)
  htmltools::attachDependencies(
    htmltools::tag("calcite-accordion", contents, .noWS = .noWS, .renderHook = .renderHook),
    calcite_dependency()
  )
}
#' @export
#' @rdname components
calcite_notice <- function(..., .noWS = NULL, .renderHook = NULL) {

  # dots <- rlang::dots_list(...)
  # dots_names <- names(dots)
  known_properties <- c(
  "open", "kind", "closable", "icon", "icon-flip-rtl", "scale", "width",
  "messages", "message-overrides", "effective-locale", "default-messages",
  "set-focus", "open", "message-overrides", "icon", "kind", "effective-locale"
)
  # valid_names <- dots_names %in% c("", known_properties)
  # bad_names <- dots_names[!valid_names]

  # if (!all(valid_names)) {
  #   cli::cli_abort(
  #     c(
  #       "Unexpected attribute{?s}: {.code {bad_names}}",
  #       "i" = "expected one of {.var {known_properties}}"
  #     )
  #   )
  # }

  contents <- rlang::dots_list(...)
  htmltools::attachDependencies(
    htmltools::tag("calcite-notice", contents, .noWS = .noWS, .renderHook = .renderHook),
    calcite_dependency()
  )
}
#' @export
#' @rdname components
calcite_shell <- function(..., .noWS = NULL, .renderHook = NULL) {

  # dots <- rlang::dots_list(...)
  # dots_names <- names(dots)
  known_properties <- c(
  "content-behind", "has-header", "has-footer", "has-alerts", "has-modals",
  "has-sheets", "panel-is-resizing"
)
  # valid_names <- dots_names %in% c("", known_properties)
  # bad_names <- dots_names[!valid_names]

  # if (!all(valid_names)) {
  #   cli::cli_abort(
  #     c(
  #       "Unexpected attribute{?s}: {.code {bad_names}}",
  #       "i" = "expected one of {.var {known_properties}}"
  #     )
  #   )
  # }

  contents <- rlang::dots_list(...)
  htmltools::attachDependencies(
    htmltools::tag("calcite-shell", contents, .noWS = .noWS, .renderHook = .renderHook),
    calcite_dependency()
  )
}
#' @export
#' @rdname components
calcite_shell_center_row <- function(..., .noWS = NULL, .renderHook = NULL) {

  # dots <- rlang::dots_list(...)
  # dots_names <- names(dots)
  known_properties <- c("detached", "height-scale", "position")
  # valid_names <- dots_names %in% c("", known_properties)
  # bad_names <- dots_names[!valid_names]

  # if (!all(valid_names)) {
  #   cli::cli_abort(
  #     c(
  #       "Unexpected attribute{?s}: {.code {bad_names}}",
  #       "i" = "expected one of {.var {known_properties}}"
  #     )
  #   )
  # }

  contents <- rlang::dots_list(...)
  htmltools::attachDependencies(
    htmltools::tag("calcite-shell-center-row", contents, .noWS = .noWS, .renderHook = .renderHook),
    calcite_dependency()
  )
}
#' @export
#' @rdname components
calcite_shell_panel <- function(..., .noWS = NULL, .renderHook = NULL) {

  # dots <- rlang::dots_list(...)
  # dots_names <- names(dots)
  known_properties <- c(
  "collapsed", "detached", "display-mode", "detached-height-scale",
  "height-scale", "width-scale", "layout", "position", "resizable", "messages",
  "message-overrides", "content-width", "content-height", "default-messages",
  "effective-locale", "has-header", "detached", "display-mode",
  "detached-height-scale", "height-scale", "layout", "message-overrides",
  "effective-locale"
)
  # valid_names <- dots_names %in% c("", known_properties)
  # bad_names <- dots_names[!valid_names]

  # if (!all(valid_names)) {
  #   cli::cli_abort(
  #     c(
  #       "Unexpected attribute{?s}: {.code {bad_names}}",
  #       "i" = "expected one of {.var {known_properties}}"
  #     )
  #   )
  # }

  contents <- rlang::dots_list(...)
  htmltools::attachDependencies(
    htmltools::tag("calcite-shell-panel", contents, .noWS = .noWS, .renderHook = .renderHook),
    calcite_dependency()
  )
}
#' @export
#' @rdname components
calcite_card_group <- function(..., .noWS = NULL, .renderHook = NULL) {

  # dots <- rlang::dots_list(...)
  # dots_names <- names(dots)
  known_properties <- c(
  "disabled", "label", "selection-mode", "selected-items", "set-focus",
  "selection-mode"
)
  # valid_names <- dots_names %in% c("", known_properties)
  # bad_names <- dots_names[!valid_names]

  # if (!all(valid_names)) {
  #   cli::cli_abort(
  #     c(
  #       "Unexpected attribute{?s}: {.code {bad_names}}",
  #       "i" = "expected one of {.var {known_properties}}"
  #     )
  #   )
  # }

  contents <- rlang::dots_list(...)
  htmltools::attachDependencies(
    htmltools::tag("calcite-card-group", contents, .noWS = .noWS, .renderHook = .renderHook),
    calcite_dependency()
  )
}
#' @export
#' @rdname components
calcite_chip_group <- function(..., .noWS = NULL, .renderHook = NULL) {

  # dots <- rlang::dots_list(...)
  # dots_names <- names(dots)
  known_properties <- c(
  "disabled", "label", "scale", "selection-mode", "selected-items", "set-focus",
  "selection-mode"
)
  # valid_names <- dots_names %in% c("", known_properties)
  # bad_names <- dots_names[!valid_names]

  # if (!all(valid_names)) {
  #   cli::cli_abort(
  #     c(
  #       "Unexpected attribute{?s}: {.code {bad_names}}",
  #       "i" = "expected one of {.var {known_properties}}"
  #     )
  #   )
  # }

  contents <- rlang::dots_list(...)
  htmltools::attachDependencies(
    htmltools::tag("calcite-chip-group", contents, .noWS = .noWS, .renderHook = .renderHook),
    calcite_dependency()
  )
}
#' @export
#' @rdname components
calcite_flow <- function(..., .noWS = NULL, .renderHook = NULL) {

  # dots <- rlang::dots_list(...)
  # dots_names <- names(dots)
  known_properties <- c(
  "custom-item-selectors", "flow-direction", "item-count", "items", "back",
  "set-focus"
)
  # valid_names <- dots_names %in% c("", known_properties)
  # bad_names <- dots_names[!valid_names]

  # if (!all(valid_names)) {
  #   cli::cli_abort(
  #     c(
  #       "Unexpected attribute{?s}: {.code {bad_names}}",
  #       "i" = "expected one of {.var {known_properties}}"
  #     )
  #   )
  # }

  contents <- rlang::dots_list(...)
  htmltools::attachDependencies(
    htmltools::tag("calcite-flow", contents, .noWS = .noWS, .renderHook = .renderHook),
    calcite_dependency()
  )
}
#' @export
#' @rdname components
calcite_meter <- function(..., .noWS = NULL, .renderHook = NULL) {

  # dots <- rlang::dots_list(...)
  # dots_names <- names(dots)
  known_properties <- c(
  "appearance", "disabled", "fill-type", "form", "group-separator", "high",
  "label", "low", "max", "min", "name", "numbering-system", "range-labels",
  "range-label-type", "scale", "unit-label", "value", "value-label",
  "value-label-type", "current-percent", "effective-locale", "high-active",
  "high-percent", "low-active", "low-percent", "min", "max", "low", "high",
  "value", "range-labels", "range-label-type", "unit-label", "value-label",
  "value-label-type"
)
  # valid_names <- dots_names %in% c("", known_properties)
  # bad_names <- dots_names[!valid_names]

  # if (!all(valid_names)) {
  #   cli::cli_abort(
  #     c(
  #       "Unexpected attribute{?s}: {.code {bad_names}}",
  #       "i" = "expected one of {.var {known_properties}}"
  #     )
  #   )
  # }

  contents <- rlang::dots_list(...)
  htmltools::attachDependencies(
    htmltools::tag("calcite-meter", contents, .noWS = .noWS, .renderHook = .renderHook),
    calcite_dependency()
  )
}
#' @export
#' @rdname components
calcite_sortable_list <- function(..., .noWS = NULL, .renderHook = NULL) {

  # dots <- rlang::dots_list(...)
  # dots_names <- names(dots)
  known_properties <- c(
  "can-pull", "can-put", "drag-selector", "group", "handle-selector", "layout",
  "disabled", "loading"
)
  # valid_names <- dots_names %in% c("", known_properties)
  # bad_names <- dots_names[!valid_names]

  # if (!all(valid_names)) {
  #   cli::cli_abort(
  #     c(
  #       "Unexpected attribute{?s}: {.code {bad_names}}",
  #       "i" = "expected one of {.var {known_properties}}"
  #     )
  #   )
  # }

  contents <- rlang::dots_list(...)
  htmltools::attachDependencies(
    htmltools::tag("calcite-sortable-list", contents, .noWS = .noWS, .renderHook = .renderHook),
    calcite_dependency()
  )
}
#' @export
#' @rdname components
calcite_tile_group <- function(..., .noWS = NULL, .renderHook = NULL) {

  # dots <- rlang::dots_list(...)
  # dots_names <- names(dots)
  known_properties <- c("disabled", "layout", "scale", "scale")
  # valid_names <- dots_names %in% c("", known_properties)
  # bad_names <- dots_names[!valid_names]

  # if (!all(valid_names)) {
  #   cli::cli_abort(
  #     c(
  #       "Unexpected attribute{?s}: {.code {bad_names}}",
  #       "i" = "expected one of {.var {known_properties}}"
  #     )
  #   )
  # }

  contents <- rlang::dots_list(...)
  htmltools::attachDependencies(
    htmltools::tag("calcite-tile-group", contents, .noWS = .noWS, .renderHook = .renderHook),
    calcite_dependency()
  )
}
#' @export
#' @rdname components
calcite_tooltip <- function(..., .noWS = NULL, .renderHook = NULL) {

  # dots <- rlang::dots_list(...)
  # dots_names <- names(dots)
  known_properties <- c(
  "close-on-click", "label", "offset-distance", "offset-skidding", "open",
  "overlay-positioning", "placement", "reference-element",
  "effective-reference-element", "floating-layout", "reposition",
  "offset-distance", "offset-skidding", "open", "overlay-positioning",
  "placement", "reference-element"
)
  # valid_names <- dots_names %in% c("", known_properties)
  # bad_names <- dots_names[!valid_names]

  # if (!all(valid_names)) {
  #   cli::cli_abort(
  #     c(
  #       "Unexpected attribute{?s}: {.code {bad_names}}",
  #       "i" = "expected one of {.var {known_properties}}"
  #     )
  #   )
  # }

  contents <- rlang::dots_list(...)
  htmltools::attachDependencies(
    htmltools::tag("calcite-tooltip", contents, .noWS = .noWS, .renderHook = .renderHook),
    calcite_dependency()
  )
}
#' @export
#' @rdname components
calcite_pick_list <- function(..., .noWS = NULL, .renderHook = NULL) {

  # dots <- rlang::dots_list(...)
  # dots_names <- names(dots)
  known_properties <- c(
  "disabled", "filtered-items", "filtered-data", "filter-enabled",
  "filter-placeholder", "filter-text", "heading-level", "loading", "multiple",
  "selection-follows-focus", "selected-values", "data-for-filter",
  "get-selected-items", "set-focus"
)
  # valid_names <- dots_names %in% c("", known_properties)
  # bad_names <- dots_names[!valid_names]

  # if (!all(valid_names)) {
  #   cli::cli_abort(
  #     c(
  #       "Unexpected attribute{?s}: {.code {bad_names}}",
  #       "i" = "expected one of {.var {known_properties}}"
  #     )
  #   )
  # }

  contents <- rlang::dots_list(...)
  htmltools::attachDependencies(
    htmltools::tag("calcite-pick-list", contents, .noWS = .noWS, .renderHook = .renderHook),
    calcite_dependency()
  )
}
#' @export
#' @rdname components
calcite_pick_list_group <- function(..., .noWS = NULL, .renderHook = NULL) {

  # dots <- rlang::dots_list(...)
  # dots_names <- names(dots)
  known_properties <- c("group-title", "heading-level")
  # valid_names <- dots_names %in% c("", known_properties)
  # bad_names <- dots_names[!valid_names]

  # if (!all(valid_names)) {
  #   cli::cli_abort(
  #     c(
  #       "Unexpected attribute{?s}: {.code {bad_names}}",
  #       "i" = "expected one of {.var {known_properties}}"
  #     )
  #   )
  # }

  contents <- rlang::dots_list(...)
  htmltools::attachDependencies(
    htmltools::tag("calcite-pick-list-group", contents, .noWS = .noWS, .renderHook = .renderHook),
    calcite_dependency()
  )
}
#' @export
#' @rdname components
calcite_pick_list_item <- function(..., .noWS = NULL, .renderHook = NULL) {

  # dots <- rlang::dots_list(...)
  # dots_names <- names(dots)
  known_properties <- c(
  "description", "disabled", "deselect-disabled", "non-interactive", "icon",
  "icon-flip-rtl", "label", "message-overrides", "messages", "metadata",
  "removable", "selected", "value", "default-messages", "effective-locale",
  "toggle-selected", "set-focus", "description", "label", "default-messages",
  "message-overrides", "metadata", "selected", "value", "effective-locale"
)
  # valid_names <- dots_names %in% c("", known_properties)
  # bad_names <- dots_names[!valid_names]

  # if (!all(valid_names)) {
  #   cli::cli_abort(
  #     c(
  #       "Unexpected attribute{?s}: {.code {bad_names}}",
  #       "i" = "expected one of {.var {known_properties}}"
  #     )
  #   )
  # }

  contents <- rlang::dots_list(...)
  htmltools::attachDependencies(
    htmltools::tag("calcite-pick-list-item", contents, .noWS = .noWS, .renderHook = .renderHook),
    calcite_dependency()
  )
}
#' @export
#' @rdname components
calcite_input_time_picker <- function(..., .noWS = NULL, .renderHook = NULL) {

  # dots <- rlang::dots_list(...)
  # dots_names <- names(dots)
  known_properties <- c(
  "open", "disabled", "focus-trap-disabled", "form", "read-only",
  "message-overrides", "messages", "validation-message", "validation-icon",
  "name", "numbering-system", "required", "scale", "status",
  "overlay-positioning", "placement", "step", "value", "default-messages",
  "effective-locale", "set-focus", "reposition", "open", "focus-trap-disabled",
  "disabled", "read-only", "message-overrides", "numbering-system", "step",
  "value", "effective-locale"
)
  # valid_names <- dots_names %in% c("", known_properties)
  # bad_names <- dots_names[!valid_names]

  # if (!all(valid_names)) {
  #   cli::cli_abort(
  #     c(
  #       "Unexpected attribute{?s}: {.code {bad_names}}",
  #       "i" = "expected one of {.var {known_properties}}"
  #     )
  #   )
  # }

  contents <- rlang::dots_list(...)
  htmltools::attachDependencies(
    htmltools::tag("calcite-input-time-picker", contents, .noWS = .noWS, .renderHook = .renderHook),
    calcite_dependency()
  )
}
#' @export
#' @rdname components
calcite_time_picker <- function(..., .noWS = NULL, .renderHook = NULL) {

  # dots <- rlang::dots_list(...)
  # dots_names <- names(dots)
  known_properties <- c(
  "scale", "step", "numbering-system", "value", "messages", "message-overrides",
  "active-el", "effective-locale", "fractional-second", "hour", "hour-cycle",
  "localized-decimal-separator", "localized-hour", "localized-hour-suffix",
  "localized-meridiem", "localized-fractional-second", "localized-minute",
  "localized-minute-suffix", "localized-second", "localized-second-suffix",
  "meridiem", "minute", "second", "show-fractional-second", "show-second",
  "default-messages", "set-focus", "step", "value", "message-overrides",
  "effective-locale"
)
  # valid_names <- dots_names %in% c("", known_properties)
  # bad_names <- dots_names[!valid_names]

  # if (!all(valid_names)) {
  #   cli::cli_abort(
  #     c(
  #       "Unexpected attribute{?s}: {.code {bad_names}}",
  #       "i" = "expected one of {.var {known_properties}}"
  #     )
  #   )
  # }

  contents <- rlang::dots_list(...)
  htmltools::attachDependencies(
    htmltools::tag("calcite-time-picker", contents, .noWS = .noWS, .renderHook = .renderHook),
    calcite_dependency()
  )
}
#' @export
#' @rdname components
calcite_panel <- function(..., .noWS = NULL, .renderHook = NULL) {

  # dots <- rlang::dots_list(...)
  # dots_names <- names(dots)
  known_properties <- c(
  "closed", "disabled", "closable", "collapsed", "collapse-direction",
  "collapsible", "heading-level", "loading", "heading", "description",
  "menu-open", "message-overrides", "messages", "overlay-positioning",
  "has-start-actions", "has-end-actions", "has-menu-items",
  "has-header-content", "has-action-bar", "has-footer-content",
  "has-footer-actions", "has-fab", "default-messages", "effective-locale",
  "show-header-content", "set-focus", "scroll-content-to", "message-overrides",
  "effective-locale"
)
  # valid_names <- dots_names %in% c("", known_properties)
  # bad_names <- dots_names[!valid_names]

  # if (!all(valid_names)) {
  #   cli::cli_abort(
  #     c(
  #       "Unexpected attribute{?s}: {.code {bad_names}}",
  #       "i" = "expected one of {.var {known_properties}}"
  #     )
  #   )
  # }

  contents <- rlang::dots_list(...)
  htmltools::attachDependencies(
    htmltools::tag("calcite-panel", contents, .noWS = .noWS, .renderHook = .renderHook),
    calcite_dependency()
  )
}
#' @export
#' @rdname components
calcite_menu_item <- function(..., .noWS = NULL, .renderHook = NULL) {

  # dots <- rlang::dots_list(...)
  # dots_names <- names(dots)
  known_properties <- c(
  "active", "breadcrumb", "href", "icon-end", "icon-flip-rtl", "icon-start",
  "is-top-level-item", "label", "layout", "message-overrides", "messages",
  "open", "rel", "target", "text", "top-level-menu-layout", "default-messages",
  "effective-locale", "has-submenu", "submenu-items", "set-focus",
  "message-overrides", "effective-locale"
)
  # valid_names <- dots_names %in% c("", known_properties)
  # bad_names <- dots_names[!valid_names]

  # if (!all(valid_names)) {
  #   cli::cli_abort(
  #     c(
  #       "Unexpected attribute{?s}: {.code {bad_names}}",
  #       "i" = "expected one of {.var {known_properties}}"
  #     )
  #   )
  # }

  contents <- rlang::dots_list(...)
  htmltools::attachDependencies(
    htmltools::tag("calcite-menu-item", contents, .noWS = .noWS, .renderHook = .renderHook),
    calcite_dependency()
  )
}
#' @export
#' @rdname components
calcite_menu <- function(..., .noWS = NULL, .renderHook = NULL) {

  # dots <- rlang::dots_list(...)
  # dots_names <- names(dots)
  known_properties <- c(
  "label", "layout", "message-overrides", "messages", "default-messages",
  "effective-locale", "set-focus", "role", "layout", "message-overrides",
  "effective-locale"
)
  # valid_names <- dots_names %in% c("", known_properties)
  # bad_names <- dots_names[!valid_names]

  # if (!all(valid_names)) {
  #   cli::cli_abort(
  #     c(
  #       "Unexpected attribute{?s}: {.code {bad_names}}",
  #       "i" = "expected one of {.var {known_properties}}"
  #     )
  #   )
  # }

  contents <- rlang::dots_list(...)
  htmltools::attachDependencies(
    htmltools::tag("calcite-menu", contents, .noWS = .noWS, .renderHook = .renderHook),
    calcite_dependency()
  )
}
#' @export
#' @rdname components
calcite_dropdown_item <- function(..., .noWS = NULL, .renderHook = NULL) {

  # dots <- rlang::dots_list(...)
  # dots_names <- names(dots)
  known_properties <- c(
  "disabled", "href", "icon-flip-rtl", "icon-start", "icon-end", "label", "rel",
  "selected", "target", "selection-mode", "scale", "set-focus"
)
  # valid_names <- dots_names %in% c("", known_properties)
  # bad_names <- dots_names[!valid_names]

  # if (!all(valid_names)) {
  #   cli::cli_abort(
  #     c(
  #       "Unexpected attribute{?s}: {.code {bad_names}}",
  #       "i" = "expected one of {.var {known_properties}}"
  #     )
  #   )
  # }

  contents <- rlang::dots_list(...)
  htmltools::attachDependencies(
    htmltools::tag("calcite-dropdown-item", contents, .noWS = .noWS, .renderHook = .renderHook),
    calcite_dependency()
  )
}
#' @export
#' @rdname components
calcite_dropdown_group <- function(..., .noWS = NULL, .renderHook = NULL) {

  # dots <- rlang::dots_list(...)
  # dots_names <- names(dots)
  known_properties <- c("group-title", "scale", "selection-mode", "selection-mode")
  # valid_names <- dots_names %in% c("", known_properties)
  # bad_names <- dots_names[!valid_names]

  # if (!all(valid_names)) {
  #   cli::cli_abort(
  #     c(
  #       "Unexpected attribute{?s}: {.code {bad_names}}",
  #       "i" = "expected one of {.var {known_properties}}"
  #     )
  #   )
  # }

  contents <- rlang::dots_list(...)
  htmltools::attachDependencies(
    htmltools::tag("calcite-dropdown-group", contents, .noWS = .noWS, .renderHook = .renderHook),
    calcite_dependency()
  )
}
#' @export
#' @rdname components
calcite_dropdown <- function(..., .noWS = NULL, .renderHook = NULL) {

  # dots <- rlang::dots_list(...)
  # dots_names <- names(dots)
  known_properties <- c(
  "open", "close-on-select-disabled", "disabled", "flip-placements",
  "max-items", "overlay-positioning", "placement", "selected-items", "type",
  "width-scale", "scale", "set-focus", "reposition", "open", "disabled",
  "flip-placements", "max-items", "overlay-positioning", "placement", "scale"
)
  # valid_names <- dots_names %in% c("", known_properties)
  # bad_names <- dots_names[!valid_names]

  # if (!all(valid_names)) {
  #   cli::cli_abort(
  #     c(
  #       "Unexpected attribute{?s}: {.code {bad_names}}",
  #       "i" = "expected one of {.var {known_properties}}"
  #     )
  #   )
  # }

  contents <- rlang::dots_list(...)
  htmltools::attachDependencies(
    htmltools::tag("calcite-dropdown", contents, .noWS = .noWS, .renderHook = .renderHook),
    calcite_dependency()
  )
}
#' @export
#' @rdname components
calcite_slider <- function(..., .noWS = NULL, .renderHook = NULL) {

  # dots <- rlang::dots_list(...)
  # dots_names <- names(dots)
  known_properties <- c(
  "disabled", "form", "group-separator", "has-histogram", "histogram",
  "histogram-stops", "label-handles", "label-ticks", "max", "max-label",
  "max-value", "min", "min-label", "min-value", "mirrored", "name",
  "numbering-system", "page-step", "precise", "required", "snap", "step",
  "ticks", "value", "scale", "effective-locale", "min-max-value-range",
  "min-value-drag-range", "max-value-drag-range", "tick-values", "set-focus",
  "histogram", "ticks", "value", "min-value", "max-value"
)
  # valid_names <- dots_names %in% c("", known_properties)
  # bad_names <- dots_names[!valid_names]

  # if (!all(valid_names)) {
  #   cli::cli_abort(
  #     c(
  #       "Unexpected attribute{?s}: {.code {bad_names}}",
  #       "i" = "expected one of {.var {known_properties}}"
  #     )
  #   )
  # }

  contents <- rlang::dots_list(...)
  htmltools::attachDependencies(
    htmltools::tag("calcite-slider", contents, .noWS = .noWS, .renderHook = .renderHook),
    calcite_dependency()
  )
}
#' @export
#' @rdname components
calcite_graph <- function(..., .noWS = NULL, .renderHook = NULL) {

  # dots <- rlang::dots_list(...)
  # dots_names <- names(dots)
  known_properties <- c("data", "color-stops", "highlight-min", "highlight-max", "min", "max")
  # valid_names <- dots_names %in% c("", known_properties)
  # bad_names <- dots_names[!valid_names]

  # if (!all(valid_names)) {
  #   cli::cli_abort(
  #     c(
  #       "Unexpected attribute{?s}: {.code {bad_names}}",
  #       "i" = "expected one of {.var {known_properties}}"
  #     )
  #   )
  # }

  contents <- rlang::dots_list(...)
  htmltools::attachDependencies(
    htmltools::tag("calcite-graph", contents, .noWS = .noWS, .renderHook = .renderHook),
    calcite_dependency()
  )
}
#' @export
#' @rdname components
calcite_avatar <- function(..., .noWS = NULL, .renderHook = NULL) {

  # dots <- rlang::dots_list(...)
  # dots_names <- names(dots)
  known_properties <- c(
  "scale", "thumbnail", "full-name", "username", "user-id", "label",
  "thumbnail-failed-to-load"
)
  # valid_names <- dots_names %in% c("", known_properties)
  # bad_names <- dots_names[!valid_names]

  # if (!all(valid_names)) {
  #   cli::cli_abort(
  #     c(
  #       "Unexpected attribute{?s}: {.code {bad_names}}",
  #       "i" = "expected one of {.var {known_properties}}"
  #     )
  #   )
  # }

  contents <- rlang::dots_list(...)
  htmltools::attachDependencies(
    htmltools::tag("calcite-avatar", contents, .noWS = .noWS, .renderHook = .renderHook),
    calcite_dependency()
  )
}
#' @export
#' @rdname components
calcite_link <- function(..., .noWS = NULL, .renderHook = NULL) {

  # dots <- rlang::dots_list(...)
  # dots_names <- names(dots)
  known_properties <- c(
  "disabled", "download", "href", "icon-end", "icon-flip-rtl", "icon-start",
  "rel", "target", "set-focus"
)
  # valid_names <- dots_names %in% c("", known_properties)
  # bad_names <- dots_names[!valid_names]

  # if (!all(valid_names)) {
  #   cli::cli_abort(
  #     c(
  #       "Unexpected attribute{?s}: {.code {bad_names}}",
  #       "i" = "expected one of {.var {known_properties}}"
  #     )
  #   )
  # }

  contents <- rlang::dots_list(...)
  htmltools::attachDependencies(
    htmltools::tag("calcite-link", contents, .noWS = .noWS, .renderHook = .renderHook),
    calcite_dependency()
  )
}
#' @export
#' @rdname components
calcite_pagination <- function(..., .noWS = NULL, .renderHook = NULL) {

  # dots <- rlang::dots_list(...)
  # dots_names <- names(dots)
  known_properties <- c(
  "group-separator", "messages", "message-overrides", "numbering-system",
  "page-size", "scale", "start-item", "total-items", "default-messages",
  "effective-locale", "max-items", "total-pages", "last-start-item",
  "is-xx-small", "set-focus", "next-page", "previous-page", "message-overrides",
  "total-items", "page-size", "effective-locale", "total-pages", "max-items"
)
  # valid_names <- dots_names %in% c("", known_properties)
  # bad_names <- dots_names[!valid_names]

  # if (!all(valid_names)) {
  #   cli::cli_abort(
  #     c(
  #       "Unexpected attribute{?s}: {.code {bad_names}}",
  #       "i" = "expected one of {.var {known_properties}}"
  #     )
  #   )
  # }

  contents <- rlang::dots_list(...)
  htmltools::attachDependencies(
    htmltools::tag("calcite-pagination", contents, .noWS = .noWS, .renderHook = .renderHook),
    calcite_dependency()
  )
}
#' @export
#' @rdname components
calcite_radio_button <- function(..., .noWS = NULL, .renderHook = NULL) {

  # dots <- rlang::dots_list(...)
  # dots_names <- names(dots)
  known_properties <- c(
  "checked", "disabled", "focused", "form", "guid", "hovered", "label", "name",
  "required", "scale", "value", "set-focus", "emit-checked-change", "hidden",
  "checked", "disabled", "name"
)
  # valid_names <- dots_names %in% c("", known_properties)
  # bad_names <- dots_names[!valid_names]

  # if (!all(valid_names)) {
  #   cli::cli_abort(
  #     c(
  #       "Unexpected attribute{?s}: {.code {bad_names}}",
  #       "i" = "expected one of {.var {known_properties}}"
  #     )
  #   )
  # }

  contents <- rlang::dots_list(...)
  htmltools::attachDependencies(
    htmltools::tag("calcite-radio-button", contents, .noWS = .noWS, .renderHook = .renderHook),
    calcite_dependency()
  )
}
#' @export
#' @rdname components
calcite_stack <- function(..., .noWS = NULL, .renderHook = NULL) {

  # dots <- rlang::dots_list(...)
  # dots_names <- names(dots)
  known_properties <- c(
  "disabled", "has-actions-start", "has-actions-end", "has-content-start",
  "has-content-end"
)
  # valid_names <- dots_names %in% c("", known_properties)
  # bad_names <- dots_names[!valid_names]

  # if (!all(valid_names)) {
  #   cli::cli_abort(
  #     c(
  #       "Unexpected attribute{?s}: {.code {bad_names}}",
  #       "i" = "expected one of {.var {known_properties}}"
  #     )
  #   )
  # }

  contents <- rlang::dots_list(...)
  htmltools::attachDependencies(
    htmltools::tag("calcite-stack", contents, .noWS = .noWS, .renderHook = .renderHook),
    calcite_dependency()
  )
}
#' @export
#' @rdname components
calcite_switch <- function(..., .noWS = NULL, .renderHook = NULL) {

  # dots <- rlang::dots_list(...)
  # dots_names <- names(dots)
  known_properties <- c("disabled", "form", "label", "name", "scale", "checked", "value", "set-focus")
  # valid_names <- dots_names %in% c("", known_properties)
  # bad_names <- dots_names[!valid_names]

  # if (!all(valid_names)) {
  #   cli::cli_abort(
  #     c(
  #       "Unexpected attribute{?s}: {.code {bad_names}}",
  #       "i" = "expected one of {.var {known_properties}}"
  #     )
  #   )
  # }

  contents <- rlang::dots_list(...)
  htmltools::attachDependencies(
    htmltools::tag("calcite-switch", contents, .noWS = .noWS, .renderHook = .renderHook),
    calcite_dependency()
  )
}
#' @export
#' @rdname components
calcite_input_number <- function(..., .noWS = NULL, .renderHook = NULL) {

  # dots <- rlang::dots_list(...)
  # dots_names <- names(dots)
  known_properties <- c(
  "alignment", "autofocus", "clearable", "disabled", "form", "group-separator",
  "icon", "icon-flip-rtl", "integer", "label", "loading", "numbering-system",
  "locale-format", "max", "min", "max-length", "min-length",
  "validation-message", "validation-icon", "name", "number-button-type",
  "placeholder", "prefix-text", "read-only", "required", "scale", "status",
  "step", "autocomplete", "input-mode", "enter-key-hint", "suffix-text",
  "editing-enabled", "value", "messages", "message-overrides",
  "effective-locale", "default-messages", "displayed-value",
  "slotted-action-el-disabled-internally", "set-focus", "select-text",
  "disabled", "max", "min", "message-overrides", "value", "icon",
  "effective-locale"
)
  # valid_names <- dots_names %in% c("", known_properties)
  # bad_names <- dots_names[!valid_names]

  # if (!all(valid_names)) {
  #   cli::cli_abort(
  #     c(
  #       "Unexpected attribute{?s}: {.code {bad_names}}",
  #       "i" = "expected one of {.var {known_properties}}"
  #     )
  #   )
  # }

  contents <- rlang::dots_list(...)
  htmltools::attachDependencies(
    htmltools::tag("calcite-input-number", contents, .noWS = .noWS, .renderHook = .renderHook),
    calcite_dependency()
  )
}
#' @export
#' @rdname components
calcite_label <- function(..., .noWS = NULL, .renderHook = NULL) {

  # dots <- rlang::dots_list(...)
  # dots_names <- names(dots)
  known_properties <- c("alignment", "for", "scale", "layout", "for")
  # valid_names <- dots_names %in% c("", known_properties)
  # bad_names <- dots_names[!valid_names]

  # if (!all(valid_names)) {
  #   cli::cli_abort(
  #     c(
  #       "Unexpected attribute{?s}: {.code {bad_names}}",
  #       "i" = "expected one of {.var {known_properties}}"
  #     )
  #   )
  # }

  contents <- rlang::dots_list(...)
  htmltools::attachDependencies(
    htmltools::tag("calcite-label", contents, .noWS = .noWS, .renderHook = .renderHook),
    calcite_dependency()
  )
}
#' @export
#' @rdname components
calcite_tab_nav <- function(..., .noWS = NULL, .renderHook = NULL) {

  # dots <- rlang::dots_list(...)
  # dots_names <- names(dots)
  known_properties <- c(
  "storage-id", "sync-id", "selected-title", "scale", "layout", "position",
  "bordered", "indicator-offset", "indicator-width", "messages",
  "message-overrides", "default-messages", "effective-locale",
  "has-overflowing-start-tab-title", "has-overflowing-end-tab-title",
  "selected-tab-id", "message-overrides", "selected-tab-id", "selected-title",
  "effective-locale"
)
  # valid_names <- dots_names %in% c("", known_properties)
  # bad_names <- dots_names[!valid_names]

  # if (!all(valid_names)) {
  #   cli::cli_abort(
  #     c(
  #       "Unexpected attribute{?s}: {.code {bad_names}}",
  #       "i" = "expected one of {.var {known_properties}}"
  #     )
  #   )
  # }

  contents <- rlang::dots_list(...)
  htmltools::attachDependencies(
    htmltools::tag("calcite-tab-nav", contents, .noWS = .noWS, .renderHook = .renderHook),
    calcite_dependency()
  )
}
#' @export
#' @rdname components
calcite_tab_title <- function(..., .noWS = NULL, .renderHook = NULL) {

  # dots <- rlang::dots_list(...)
  # dots_names <- names(dots)
  known_properties <- c(
  "selected", "closable", "closed", "disabled", "icon-end", "icon-flip-rtl",
  "icon-start", "layout", "position", "scale", "bordered", "tab", "messages",
  "message-overrides", "controls", "default-messages", "effective-locale",
  "has-text", "get-tab-index", "get-tab-identifier", "update-aria-info",
  "activate-tab", "selected", "message-overrides", "effective-locale"
)
  # valid_names <- dots_names %in% c("", known_properties)
  # bad_names <- dots_names[!valid_names]

  # if (!all(valid_names)) {
  #   cli::cli_abort(
  #     c(
  #       "Unexpected attribute{?s}: {.code {bad_names}}",
  #       "i" = "expected one of {.var {known_properties}}"
  #     )
  #   )
  # }

  contents <- rlang::dots_list(...)
  htmltools::attachDependencies(
    htmltools::tag("calcite-tab-title", contents, .noWS = .noWS, .renderHook = .renderHook),
    calcite_dependency()
  )
}
#' @export
#' @rdname components
calcite_tab <- function(..., .noWS = NULL, .renderHook = NULL) {

  # dots <- rlang::dots_list(...)
  # dots_names <- names(dots)
  known_properties <- c("tab", "selected", "scale", "labeled-by", "get-tab-index", "update-aria-info")
  # valid_names <- dots_names %in% c("", known_properties)
  # bad_names <- dots_names[!valid_names]

  # if (!all(valid_names)) {
  #   cli::cli_abort(
  #     c(
  #       "Unexpected attribute{?s}: {.code {bad_names}}",
  #       "i" = "expected one of {.var {known_properties}}"
  #     )
  #   )
  # }

  contents <- rlang::dots_list(...)
  htmltools::attachDependencies(
    htmltools::tag("calcite-tab", contents, .noWS = .noWS, .renderHook = .renderHook),
    calcite_dependency()
  )
}
#' @export
#' @rdname components
calcite_tabs <- function(..., .noWS = NULL, .renderHook = NULL) {

  # dots <- rlang::dots_list(...)
  # dots_names <- names(dots)
  known_properties <- c("layout", "position", "scale", "bordered", "titles", "tabs", "position", "scale")
  # valid_names <- dots_names %in% c("", known_properties)
  # bad_names <- dots_names[!valid_names]

  # if (!all(valid_names)) {
  #   cli::cli_abort(
  #     c(
  #       "Unexpected attribute{?s}: {.code {bad_names}}",
  #       "i" = "expected one of {.var {known_properties}}"
  #     )
  #   )
  # }

  contents <- rlang::dots_list(...)
  htmltools::attachDependencies(
    htmltools::tag("calcite-tabs", contents, .noWS = .noWS, .renderHook = .renderHook),
    calcite_dependency()
  )
}
#' @export
#' @rdname components
calcite_color_picker <- function(..., .noWS = NULL, .renderHook = NULL) {

  # dots <- rlang::dots_list(...)
  # dots_names <- names(dots)
  known_properties <- c(
  "allow-empty", "alpha-channel", "channels-disabled", "clearable", "color",
  "disabled", "format", "hide-channels", "hex-disabled", "hide-hex",
  "hide-saved", "saved-disabled", "scale", "storage-id", "message-overrides",
  "numbering-system", "value", "messages", "default-messages", "channel-mode",
  "channels", "dimensions", "effective-locale", "saved-colors",
  "color-field-scope-top", "color-field-scope-left", "hue-scope-left",
  "opacity-scope-left", "scope-orientation", "set-focus", "allow-empty",
  "clearable", "alpha-channel", "color", "format", "scale", "message-overrides",
  "value", "effective-locale"
)
  # valid_names <- dots_names %in% c("", known_properties)
  # bad_names <- dots_names[!valid_names]

  # if (!all(valid_names)) {
  #   cli::cli_abort(
  #     c(
  #       "Unexpected attribute{?s}: {.code {bad_names}}",
  #       "i" = "expected one of {.var {known_properties}}"
  #     )
  #   )
  # }

  contents <- rlang::dots_list(...)
  htmltools::attachDependencies(
    htmltools::tag("calcite-color-picker", contents, .noWS = .noWS, .renderHook = .renderHook),
    calcite_dependency()
  )
}
#' @export
#' @rdname components
calcite_color_picker_hex_input <- function(..., .noWS = NULL, .renderHook = NULL) {

  # dots <- rlang::dots_list(...)
  # dots_names <- names(dots)
  known_properties <- c(
  "allow-empty", "alpha-channel", "hex-label", "messages", "numbering-system",
  "scale", "value", "internal-color", "set-focus", "value"
)
  # valid_names <- dots_names %in% c("", known_properties)
  # bad_names <- dots_names[!valid_names]

  # if (!all(valid_names)) {
  #   cli::cli_abort(
  #     c(
  #       "Unexpected attribute{?s}: {.code {bad_names}}",
  #       "i" = "expected one of {.var {known_properties}}"
  #     )
  #   )
  # }

  contents <- rlang::dots_list(...)
  htmltools::attachDependencies(
    htmltools::tag("calcite-color-picker-hex-input", contents, .noWS = .noWS, .renderHook = .renderHook),
    calcite_dependency()
  )
}
#' @export
#' @rdname components
calcite_color_picker_swatch <- function(..., .noWS = NULL, .renderHook = NULL) {

  # dots <- rlang::dots_list(...)
  # dots_names <- names(dots)
  known_properties <- c("active", "color", "scale", "color")
  # valid_names <- dots_names %in% c("", known_properties)
  # bad_names <- dots_names[!valid_names]

  # if (!all(valid_names)) {
  #   cli::cli_abort(
  #     c(
  #       "Unexpected attribute{?s}: {.code {bad_names}}",
  #       "i" = "expected one of {.var {known_properties}}"
  #     )
  #   )
  # }

  contents <- rlang::dots_list(...)
  htmltools::attachDependencies(
    htmltools::tag("calcite-color-picker-swatch", contents, .noWS = .noWS, .renderHook = .renderHook),
    calcite_dependency()
  )
}
#' @export
#' @rdname components
calcite_action_group <- function(..., .noWS = NULL, .renderHook = NULL) {

  # dots <- rlang::dots_list(...)
  # dots_names <- names(dots)
  known_properties <- c(
  "expanded", "label", "layout", "columns", "menu-open", "overlay-positioning",
  "scale", "messages", "message-overrides", "effective-locale",
  "default-messages", "has-menu-actions", "set-focus", "expanded",
  "message-overrides", "effective-locale"
)
  # valid_names <- dots_names %in% c("", known_properties)
  # bad_names <- dots_names[!valid_names]

  # if (!all(valid_names)) {
  #   cli::cli_abort(
  #     c(
  #       "Unexpected attribute{?s}: {.code {bad_names}}",
  #       "i" = "expected one of {.var {known_properties}}"
  #     )
  #   )
  # }

  contents <- rlang::dots_list(...)
  htmltools::attachDependencies(
    htmltools::tag("calcite-action-group", contents, .noWS = .noWS, .renderHook = .renderHook),
    calcite_dependency()
  )
}
#' @export
#' @rdname components
calcite_table_header <- function(..., .noWS = NULL, .renderHook = NULL) {

  # dots <- rlang::dots_list(...)
  # dots_names <- names(dots)
  known_properties <- c(
  "alignment", "col-span", "description", "heading", "row-span",
  "interaction-mode", "last-cell", "number-cell", "parent-row-alignment",
  "parent-row-is-selected", "parent-row-type", "position-in-row", "scale",
  "selected-row-count", "selected-row-count-localized", "selection-cell",
  "selection-mode", "body-row-count", "messages", "message-overrides",
  "default-messages", "focused", "screen-reader-text", "effective-locale",
  "set-focus", "selected-row-count", "selected-row-count-localized",
  "message-overrides", "effective-locale"
)
  # valid_names <- dots_names %in% c("", known_properties)
  # bad_names <- dots_names[!valid_names]

  # if (!all(valid_names)) {
  #   cli::cli_abort(
  #     c(
  #       "Unexpected attribute{?s}: {.code {bad_names}}",
  #       "i" = "expected one of {.var {known_properties}}"
  #     )
  #   )
  # }

  contents <- rlang::dots_list(...)
  htmltools::attachDependencies(
    htmltools::tag("calcite-table-header", contents, .noWS = .noWS, .renderHook = .renderHook),
    calcite_dependency()
  )
}
#' @export
#' @rdname components
calcite_table_cell <- function(..., .noWS = NULL, .renderHook = NULL) {

  # dots <- rlang::dots_list(...)
  # dots_names <- names(dots)
  known_properties <- c(
  "alignment", "col-span", "row-span", "disabled", "interaction-mode",
  "last-cell", "number-cell", "parent-row-is-selected", "parent-row-alignment",
  "parent-row-position-localized", "parent-row-type", "position-in-row",
  "read-cell-contents-to-at", "scale", "selection-cell", "messages",
  "message-overrides", "contents-text", "default-messages", "focused",
  "selection-text", "effective-locale", "set-focus", "parent-row-is-selected",
  "message-overrides", "effective-locale"
)
  # valid_names <- dots_names %in% c("", known_properties)
  # bad_names <- dots_names[!valid_names]

  # if (!all(valid_names)) {
  #   cli::cli_abort(
  #     c(
  #       "Unexpected attribute{?s}: {.code {bad_names}}",
  #       "i" = "expected one of {.var {known_properties}}"
  #     )
  #   )
  # }

  contents <- rlang::dots_list(...)
  htmltools::attachDependencies(
    htmltools::tag("calcite-table-cell", contents, .noWS = .noWS, .renderHook = .renderHook),
    calcite_dependency()
  )
}
#' @export
#' @rdname components
calcite_handle <- function(..., .noWS = NULL, .renderHook = NULL) {

  # dots <- rlang::dots_list(...)
  # dots_names <- names(dots)
  known_properties <- c(
  "selected", "disabled", "drag-handle", "messages", "set-position", "set-size",
  "label", "blur-unselect-disabled", "message-overrides", "effective-locale",
  "default-messages", "set-focus", "messages", "label", "selected",
  "set-position", "set-size", "message-overrides", "effective-locale"
)
  # valid_names <- dots_names %in% c("", known_properties)
  # bad_names <- dots_names[!valid_names]

  # if (!all(valid_names)) {
  #   cli::cli_abort(
  #     c(
  #       "Unexpected attribute{?s}: {.code {bad_names}}",
  #       "i" = "expected one of {.var {known_properties}}"
  #     )
  #   )
  # }

  contents <- rlang::dots_list(...)
  htmltools::attachDependencies(
    htmltools::tag("calcite-handle", contents, .noWS = .noWS, .renderHook = .renderHook),
    calcite_dependency()
  )
}
#' @export
#' @rdname components
calcite_combobox_item_group <- function(..., .noWS = NULL, .renderHook = NULL) {

  # dots <- rlang::dots_list(...)
  # dots_names <- names(dots)
  known_properties <- c("after-empty-group", "ancestors", "label", "scale")
  # valid_names <- dots_names %in% c("", known_properties)
  # bad_names <- dots_names[!valid_names]

  # if (!all(valid_names)) {
  #   cli::cli_abort(
  #     c(
  #       "Unexpected attribute{?s}: {.code {bad_names}}",
  #       "i" = "expected one of {.var {known_properties}}"
  #     )
  #   )
  # }

  contents <- rlang::dots_list(...)
  htmltools::attachDependencies(
    htmltools::tag("calcite-combobox-item-group", contents, .noWS = .noWS, .renderHook = .renderHook),
    calcite_dependency()
  )
}
#' @export
#' @rdname components
calcite_combobox <- function(..., .noWS = NULL, .renderHook = NULL) {

  # dots <- rlang::dots_list(...)
  # dots_names <- names(dots)
  known_properties <- c(
  "clear-disabled", "selection-display", "open", "disabled", "form", "label",
  "placeholder", "placeholder-icon", "placeholder-icon-flip-rtl", "max-items",
  "validation-message", "validation-icon", "name", "allow-custom-values",
  "overlay-positioning", "required", "selection-mode", "scale", "status",
  "value", "flip-placements", "messages", "message-overrides", "selected-items",
  "filtered-items", "items", "group-items", "needs-icon", "active-item-index",
  "active-chip-index", "active-descendant", "compact-selection-display",
  "selected-hidden-chips-count", "selected-visible-chips-count", "text",
  "effective-locale", "default-messages", "reposition", "set-focus", "open",
  "disabled", "max-items", "overlay-positioning", "selection-mode", "scale",
  "value", "message-overrides", "flip-placements", "selected-items", "text",
  "effective-locale"
)
  # valid_names <- dots_names %in% c("", known_properties)
  # bad_names <- dots_names[!valid_names]

  # if (!all(valid_names)) {
  #   cli::cli_abort(
  #     c(
  #       "Unexpected attribute{?s}: {.code {bad_names}}",
  #       "i" = "expected one of {.var {known_properties}}"
  #     )
  #   )
  # }

  contents <- rlang::dots_list(...)
  htmltools::attachDependencies(
    htmltools::tag("calcite-combobox", contents, .noWS = .noWS, .renderHook = .renderHook),
    calcite_dependency()
  )
}
#' @export
#' @rdname components
calcite_combobox_item <- function(..., .noWS = NULL, .renderHook = NULL) {

  # dots <- rlang::dots_list(...)
  # dots_names <- names(dots)
  known_properties <- c(
  "disabled", "selected", "active", "ancestors", "guid", "icon",
  "icon-flip-rtl", "text-label", "value", "filter-disabled", "selection-mode",
  "scale", "selected"
)
  # valid_names <- dots_names %in% c("", known_properties)
  # bad_names <- dots_names[!valid_names]

  # if (!all(valid_names)) {
  #   cli::cli_abort(
  #     c(
  #       "Unexpected attribute{?s}: {.code {bad_names}}",
  #       "i" = "expected one of {.var {known_properties}}"
  #     )
  #   )
  # }

  contents <- rlang::dots_list(...)
  htmltools::attachDependencies(
    htmltools::tag("calcite-combobox-item", contents, .noWS = .noWS, .renderHook = .renderHook),
    calcite_dependency()
  )
}
#' @export
#' @rdname components
calcite_input <- function(..., .noWS = NULL, .renderHook = NULL) {

  # dots <- rlang::dots_list(...)
  # dots_names <- names(dots)
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
  "select-text", "disabled", "max", "min", "message-overrides", "value", "icon",
  "type", "effective-locale"
)
  # valid_names <- dots_names %in% c("", known_properties)
  # bad_names <- dots_names[!valid_names]

  # if (!all(valid_names)) {
  #   cli::cli_abort(
  #     c(
  #       "Unexpected attribute{?s}: {.code {bad_names}}",
  #       "i" = "expected one of {.var {known_properties}}"
  #     )
  #   )
  # }

  contents <- rlang::dots_list(...)
  htmltools::attachDependencies(
    htmltools::tag("calcite-input", contents, .noWS = .noWS, .renderHook = .renderHook),
    calcite_dependency()
  )
}
#' @export
#' @rdname components
calcite_filter <- function(..., .noWS = NULL, .renderHook = NULL) {

  # dots <- rlang::dots_list(...)
  # dots_names <- names(dots)
  known_properties <- c(
  "items", "disabled", "filtered-items", "placeholder", "scale", "value",
  "messages", "message-overrides", "effective-locale", "default-messages",
  "filter", "set-focus", "items", "message-overrides", "value",
  "effective-locale"
)

  contents <- rlang::dots_list(...)
    htmltools::tag("calcite-filter", contents, .noWS = .noWS, .renderHook = .renderHook)
}
#' @export
#' @rdname components
calcite_input_text <- function(..., .noWS = NULL, .renderHook = NULL) {

  # dots <- rlang::dots_list(...)
  # dots_names <- names(dots)
  known_properties <- c(
  "alignment", "autofocus", "clearable", "disabled", "form", "icon",
  "icon-flip-rtl", "label", "loading", "max-length", "min-length",
  "validation-message", "validation-icon", "name", "placeholder", "prefix-text",
  "read-only", "required", "scale", "status", "autocomplete", "input-mode",
  "enter-key-hint", "pattern", "suffix-text", "editing-enabled", "value",
  "messages", "message-overrides", "effective-locale", "default-messages",
  "slotted-action-el-disabled-internally", "set-focus", "select-text",
  "disabled", "message-overrides", "value", "icon", "effective-locale"
)
  # valid_names <- dots_names %in% c("", known_properties)
  # bad_names <- dots_names[!valid_names]

  # if (!all(valid_names)) {
  #   cli::cli_abort(
  #     c(
  #       "Unexpected attribute{?s}: {.code {bad_names}}",
  #       "i" = "expected one of {.var {known_properties}}"
  #     )
  #   )
  # }

  contents <- rlang::dots_list(...)
  htmltools::attachDependencies(
    htmltools::tag("calcite-input-text", contents, .noWS = .noWS, .renderHook = .renderHook),
    calcite_dependency()
  )
}
#' @export
#' @rdname components
calcite_chip <- function(..., .noWS = NULL, .renderHook = NULL) {

  # dots <- rlang::dots_list(...)
  # dots_names <- names(dots)
  known_properties <- c(
  "disabled", "appearance", "kind", "closable", "icon", "icon-flip-rtl",
  "scale", "label", "value", "closed", "selection-mode", "selected",
  "message-overrides", "messages", "interactive", "default-messages",
  "effective-locale", "has-text", "has-image", "set-focus", "message-overrides",
  "effective-locale"
)
  # valid_names <- dots_names %in% c("", known_properties)
  # bad_names <- dots_names[!valid_names]

  # if (!all(valid_names)) {
  #   cli::cli_abort(
  #     c(
  #       "Unexpected attribute{?s}: {.code {bad_names}}",
  #       "i" = "expected one of {.var {known_properties}}"
  #     )
  #   )
  # }

  contents <- rlang::dots_list(...)
  htmltools::attachDependencies(
    htmltools::tag("calcite-chip", contents, .noWS = .noWS, .renderHook = .renderHook),
    calcite_dependency()
  )
}
#' @export
#' @rdname components
calcite_button <- function(..., .noWS = NULL, .renderHook = NULL) {

  # dots <- rlang::dots_list(...)
  # dots_names <- names(dots)
  known_properties <- c(
  "alignment", "appearance", "label", "kind", "disabled", "form", "download",
  "href", "icon-end", "icon-flip-rtl", "icon-start", "loading", "name", "rel",
  "round", "scale", "split-child", "target", "type", "width", "messages",
  "message-overrides", "has-content", "has-loader", "effective-locale",
  "default-messages", "tooltip-text", "set-focus", "aria-expanded", "loading",
  "message-overrides", "effective-locale"
)
  # valid_names <- dots_names %in% c("", known_properties)
  # bad_names <- dots_names[!valid_names]

  # if (!all(valid_names)) {
  #   cli::cli_abort(
  #     c(
  #       "Unexpected attribute{?s}: {.code {bad_names}}",
  #       "i" = "expected one of {.var {known_properties}}"
  #     )
  #   )
  # }

  contents <- rlang::dots_list(...)
  htmltools::attachDependencies(
    htmltools::tag("calcite-button", contents, .noWS = .noWS, .renderHook = .renderHook),
    calcite_dependency()
  )
}
#' @export
#' @rdname components
calcite_date_picker <- function(..., .noWS = NULL, .renderHook = NULL) {

  # dots <- rlang::dots_list(...)
  # dots_names <- names(dots)
  known_properties <- c(
  "active-date", "active-range", "value", "heading-level", "value-as-date",
  "min-as-date", "max-as-date", "min", "max", "numbering-system", "scale",
  "range", "proximity-selection-disabled", "message-overrides", "messages",
  "active-end-date", "active-start-date", "date-time-format",
  "default-messages", "effective-locale", "end-as-date", "hover-range",
  "locale-data", "most-recent-range-value", "start-as-date", "set-focus",
  "reset", "active-date", "value-as-date", "min", "max", "message-overrides",
  "effective-locale", "value"
)
  # valid_names <- dots_names %in% c("", known_properties)
  # bad_names <- dots_names[!valid_names]

  # if (!all(valid_names)) {
  #   cli::cli_abort(
  #     c(
  #       "Unexpected attribute{?s}: {.code {bad_names}}",
  #       "i" = "expected one of {.var {known_properties}}"
  #     )
  #   )
  # }

  contents <- rlang::dots_list(...)
  htmltools::attachDependencies(
    htmltools::tag("calcite-date-picker", contents, .noWS = .noWS, .renderHook = .renderHook),
    calcite_dependency()
  )
}
#' @export
#' @rdname components
calcite_date_picker_month <- function(..., .noWS = NULL, .renderHook = NULL) {

  # dots <- rlang::dots_list(...)
  # dots_names <- names(dots)
  known_properties <- c(
  "date-time-format", "selected-date", "active-date", "start-date", "end-date",
  "min", "max", "scale", "locale-data", "hover-range"
)
  # valid_names <- dots_names %in% c("", known_properties)
  # bad_names <- dots_names[!valid_names]

  # if (!all(valid_names)) {
  #   cli::cli_abort(
  #     c(
  #       "Unexpected attribute{?s}: {.code {bad_names}}",
  #       "i" = "expected one of {.var {known_properties}}"
  #     )
  #   )
  # }

  contents <- rlang::dots_list(...)
  htmltools::attachDependencies(
    htmltools::tag("calcite-date-picker-month", contents, .noWS = .noWS, .renderHook = .renderHook),
    calcite_dependency()
  )
}
#' @export
#' @rdname components
calcite_date_picker_month_header <- function(..., .noWS = NULL, .renderHook = NULL) {

  # dots <- rlang::dots_list(...)
  # dots_names <- names(dots)
  known_properties <- c(
  "selected-date", "active-date", "heading-level", "min", "max", "scale",
  "locale-data", "messages", "next-month-date", "prev-month-date", "min", "max",
  "active-date"
)
  # valid_names <- dots_names %in% c("", known_properties)
  # bad_names <- dots_names[!valid_names]

  # if (!all(valid_names)) {
  #   cli::cli_abort(
  #     c(
  #       "Unexpected attribute{?s}: {.code {bad_names}}",
  #       "i" = "expected one of {.var {known_properties}}"
  #     )
  #   )
  # }

  contents <- rlang::dots_list(...)
  htmltools::attachDependencies(
    htmltools::tag("calcite-date-picker-month-header", contents, .noWS = .noWS, .renderHook = .renderHook),
    calcite_dependency()
  )
}
#' @export
#' @rdname components
calcite_date_picker_day <- function(..., .noWS = NULL, .renderHook = NULL) {

  # dots <- rlang::dots_list(...)
  # dots_names <- names(dots)
  known_properties <- c(
  "day", "date-time-format", "disabled", "current-month", "selected",
  "highlighted", "range", "range-edge", "start-of-range", "end-of-range",
  "range-hover", "active", "scale", "value"
)
  # valid_names <- dots_names %in% c("", known_properties)
  # bad_names <- dots_names[!valid_names]

  # if (!all(valid_names)) {
  #   cli::cli_abort(
  #     c(
  #       "Unexpected attribute{?s}: {.code {bad_names}}",
  #       "i" = "expected one of {.var {known_properties}}"
  #     )
  #   )
  # }

  contents <- rlang::dots_list(...)
  htmltools::attachDependencies(
    htmltools::tag("calcite-date-picker-day", contents, .noWS = .noWS, .renderHook = .renderHook),
    calcite_dependency()
  )
}
#' @export
#' @rdname components
calcite_scrim <- function(..., .noWS = NULL, .renderHook = NULL) {

  # dots <- rlang::dots_list(...)
  # dots_names <- names(dots)
  known_properties <- c(
  "loading", "messages", "message-overrides", "loader-scale",
  "default-messages", "effective-locale", "has-content", "message-overrides",
  "effective-locale"
)
  # valid_names <- dots_names %in% c("", known_properties)
  # bad_names <- dots_names[!valid_names]

  # if (!all(valid_names)) {
  #   cli::cli_abort(
  #     c(
  #       "Unexpected attribute{?s}: {.code {bad_names}}",
  #       "i" = "expected one of {.var {known_properties}}"
  #     )
  #   )
  # }

  contents <- rlang::dots_list(...)
  htmltools::attachDependencies(
    htmltools::tag("calcite-scrim", contents, .noWS = .noWS, .renderHook = .renderHook),
    calcite_dependency()
  )
}
#' @export
#' @rdname components
calcite_progress <- function(..., .noWS = NULL, .renderHook = NULL) {

  # dots <- rlang::dots_list(...)
  # dots_names <- names(dots)
  known_properties <- c("type", "value", "label", "text", "reversed")
  # valid_names <- dots_names %in% c("", known_properties)
  # bad_names <- dots_names[!valid_names]

  # if (!all(valid_names)) {
  #   cli::cli_abort(
  #     c(
  #       "Unexpected attribute{?s}: {.code {bad_names}}",
  #       "i" = "expected one of {.var {known_properties}}"
  #     )
  #   )
  # }

  contents <- rlang::dots_list(...)
  htmltools::attachDependencies(
    htmltools::tag("calcite-progress", contents, .noWS = .noWS, .renderHook = .renderHook),
    calcite_dependency()
  )
}
#' @export
#' @rdname components
calcite_input_message <- function(..., .noWS = NULL, .renderHook = NULL) {

  # dots <- rlang::dots_list(...)
  # dots_names <- names(dots)
  known_properties <- c("icon", "icon-flip-rtl", "scale", "status", "status", "icon")
  # valid_names <- dots_names %in% c("", known_properties)
  # bad_names <- dots_names[!valid_names]

  # if (!all(valid_names)) {
  #   cli::cli_abort(
  #     c(
  #       "Unexpected attribute{?s}: {.code {bad_names}}",
  #       "i" = "expected one of {.var {known_properties}}"
  #     )
  #   )
  # }

  contents <- rlang::dots_list(...)
  htmltools::attachDependencies(
    htmltools::tag("calcite-input-message", contents, .noWS = .noWS, .renderHook = .renderHook),
    calcite_dependency()
  )
}
#' @export
#' @rdname components
calcite_loader <- function(..., .noWS = NULL, .renderHook = NULL) {

  # dots <- rlang::dots_list(...)
  # dots_names <- names(dots)
  known_properties <- c("inline", "label", "scale", "type", "value", "text")
  # valid_names <- dots_names %in% c("", known_properties)
  # bad_names <- dots_names[!valid_names]

  # if (!all(valid_names)) {
  #   cli::cli_abort(
  #     c(
  #       "Unexpected attribute{?s}: {.code {bad_names}}",
  #       "i" = "expected one of {.var {known_properties}}"
  #     )
  #   )
  # }

  contents <- rlang::dots_list(...)
  htmltools::attachDependencies(
    htmltools::tag("calcite-loader", contents, .noWS = .noWS, .renderHook = .renderHook),
    calcite_dependency()
  )
}
#' @export
#' @rdname components
calcite_popover <- function(..., .noWS = NULL, .renderHook = NULL) {

  # dots <- rlang::dots_list(...)
  # dots_names <- names(dots)
  known_properties <- c(
  "auto-close", "closable", "flip-disabled", "focus-trap-disabled",
  "pointer-disabled", "flip-placements", "heading", "heading-level", "label",
  "message-overrides", "messages", "offset-distance", "offset-skidding", "open",
  "overlay-positioning", "placement", "reference-element", "scale",
  "trigger-disabled", "effective-locale", "floating-layout",
  "effective-reference-element", "default-messages", "reposition", "set-focus",
  "update-focus-trap-elements", "focus-trap-disabled", "flip-placements",
  "message-overrides", "offset-distance", "offset-skidding", "open",
  "overlay-positioning", "placement", "reference-element", "effective-locale"
)
  # valid_names <- dots_names %in% c("", known_properties)
  # bad_names <- dots_names[!valid_names]

  # if (!all(valid_names)) {
  #   cli::cli_abort(
  #     c(
  #       "Unexpected attribute{?s}: {.code {bad_names}}",
  #       "i" = "expected one of {.var {known_properties}}"
  #     )
  #   )
  # }

  contents <- rlang::dots_list(...)
  htmltools::attachDependencies(
    htmltools::tag("calcite-popover", contents, .noWS = .noWS, .renderHook = .renderHook),
    calcite_dependency()
  )
}