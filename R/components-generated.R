#' Create a ActionBar component
#'
#'
#'
#'
#'
#' @details
#' ## Properties

#' The following properties are provided by this component:

#'  |Name                    |Attribute                 |Description                                                                                                                                                                                                                                                                                                                                                                   |Values                         |Reflects to Attribute |
#'  |:-----------------------|:-------------------------|:-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|:------------------------------|:---------------------|
#'  |actionsEndGroupLabel    |actions-end-group-label   |Specifies the accessible label for the last `calcite-action-group`.                                                                                                                                                                                                                                                                                                           |string                         |FALSE                 |
#'  |expandDisabled          |expand-disabled           |When `true`, the expand-toggling behavior is disabled.                                                                                                                                                                                                                                                                                                                        |boolean                        |TRUE                  |
#'  |expanded                |expanded                  |When `true`, the component is expanded.                                                                                                                                                                                                                                                                                                                                       |boolean                        |TRUE                  |
#'  |layout                  |layout                    |Specifies the layout direction of the actions.                                                                                                                                                                                                                                                                                                                                |"horizontal" &#124; "vertical" |TRUE                  |
#'  |messageOverrides        |NA                        |Use this property to override individual strings used by the component.                                                                                                                                                                                                                                                                                                       |Check API reference            |FALSE                 |
#'  |overflowActionsDisabled |overflow-actions-disabled |Disables automatically overflowing `calcite-action`s that won't fit into menus.                                                                                                                                                                                                                                                                                               |boolean                        |TRUE                  |
#'  |overlayPositioning      |overlay-positioning       |Determines the type of positioning to use for the overlaid content.  Using `"absolute"` will work for most cases. The component will be positioned inside of overflowing parent containers and will affect the container's layout.  `"fixed"` should be used to escape an overflowing parent container, or when the reference element's `position` CSS property is `"fixed"`. |"absolute" &#124; "fixed"      |TRUE                  |
#'  |position                |position                  |Arranges the component depending on the element's `dir` property.                                                                                                                                                                                                                                                                                                             |"end" &#124; "start"           |TRUE                  |
#'  |scale                   |scale                     |Specifies the size of the expand `calcite-action`.                                                                                                                                                                                                                                                                                                                            |"l" &#124; "m" &#124; "s"      |TRUE                  |

#' ## Events

#' The following events are observed by shiny:

#'  |Event                  |Description                                    |
#'  |:----------------------|:----------------------------------------------|
#'  |calciteActionBarToggle |Fires when the `expanded` property is toggled. |

#' ## Slots

#' The following slots are provided by this component:

#'  |Slot              |Description                                                                                                                                                               |
#'  |:-----------------|:-------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
#'  |Default (unnamed) |A slot for adding `calcite-action`s that will appear at the top of the component.                                                                                         |
#'  |bottom-actions    |[Deprecated] Use the `"actions-end"` slot instead. A slot for adding `calcite-action`s that will appear at the bottom of the component, above the collapse/expand button. |
#'  |actions-end       |A slot for adding `calcite-action`s that will appear at the end of the component, prior to the collapse/expand button.                                                    |
#'  |expand-tooltip    |A slot to set the `calcite-tooltip` for the expand toggle.                                                                                                                |
#'
#' @param ... named attributes passed to `htmltools::tag()`
#' @export
#' @return an object of class `calcite_component` which is a subclass of `shiny.tag`
#' @references [Official Documentation](https://developers.arcgis.com/calcite-design-system/components/action-bar/)
#' @examples
#' calcite_action_bar()
calcite_action_bar <- function(...) {
  res <- htmltools::tag(
    "calcite-action-bar",
    rlang::dots_list(..., calcite_dependency(), calcite_bindings())
  )

  class(res) <- c("calcite_component", class(res))
  res
}

#' Create a ActionPad component
#'
#'
#'
#'
#'
#' @details
#' ## Properties

#' The following properties are provided by this component:

#'  |Name                 |Attribute               |Description                                                                                                                                                                                                                                                                                                                                                                   |Values                                       |Reflects to Attribute |
#'  |:--------------------|:-----------------------|:-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|:--------------------------------------------|:---------------------|
#'  |actionsEndGroupLabel |actions-end-group-label |Specifies the accessible label for the last `calcite-action-group`.                                                                                                                                                                                                                                                                                                           |string                                       |FALSE                 |
#'  |expandDisabled       |expand-disabled         |When `true`, the expand-toggling behavior is disabled.                                                                                                                                                                                                                                                                                                                        |boolean                                      |TRUE                  |
#'  |expanded             |expanded                |When `true`, the component is expanded.                                                                                                                                                                                                                                                                                                                                       |boolean                                      |TRUE                  |
#'  |layout               |layout                  |Indicates the layout of the component.                                                                                                                                                                                                                                                                                                                                        |"grid" &#124; "horizontal" &#124; "vertical" |TRUE                  |
#'  |messageOverrides     |NA                      |Use this property to override individual strings used by the component.                                                                                                                                                                                                                                                                                                       |Check API reference                          |FALSE                 |
#'  |overlayPositioning   |overlay-positioning     |Determines the type of positioning to use for the overlaid content.  Using `"absolute"` will work for most cases. The component will be positioned inside of overflowing parent containers and will affect the container's layout.  `"fixed"` should be used to escape an overflowing parent container, or when the reference element's `position` CSS property is `"fixed"`. |"absolute" &#124; "fixed"                    |TRUE                  |
#'  |position             |position                |Arranges the component depending on the element's `dir` property.                                                                                                                                                                                                                                                                                                             |"end" &#124; "start"                         |TRUE                  |
#'  |scale                |scale                   |Specifies the size of the expand `calcite-action`.                                                                                                                                                                                                                                                                                                                            |"l" &#124; "m" &#124; "s"                    |TRUE                  |

#' ## Events

#' The following events are observed by shiny:

#'  |Event                  |Description                                    |
#'  |:----------------------|:----------------------------------------------|
#'  |calciteActionPadToggle |Fires when the `expanded` property is toggled. |

#' ## Slots

#' The following slots are provided by this component:

#'  |Slot              |Description                                                |
#'  |:-----------------|:----------------------------------------------------------|
#'  |Default (unnamed) |A slot for adding `calcite-action`s to the component.      |
#'  |expand-tooltip    |A slot to set the `calcite-tooltip` for the expand toggle. |
#'
#' @param ... named attributes passed to `htmltools::tag()`
#' @export
#' @return an object of class `calcite_component` which is a subclass of `shiny.tag`
#' @references [Official Documentation](https://developers.arcgis.com/calcite-design-system/components/action-pad/)
#' @examples
#' calcite_action_pad()
calcite_action_pad <- function(...) {
  res <- htmltools::tag(
    "calcite-action-pad",
    rlang::dots_list(..., calcite_dependency(), calcite_bindings())
  )

  class(res) <- c("calcite_component", class(res))
  res
}

#' Create a Avatar component
#'
#'
#'
#'
#'
#' @details
#' ## Properties

#' The following properties are provided by this component:

#'  |Name      |Attribute |Description                                                                                                                         |Values                    |Reflects to Attribute |
#'  |:---------|:---------|:-----------------------------------------------------------------------------------------------------------------------------------|:-------------------------|:---------------------|
#'  |fullName  |full-name |Specifies the full name of the user. When `label` and `thumbnail` are not defined, specifies the accessible name for the component. |string                    |TRUE                  |
#'  |label     |label     |Specifies alternative text when `thumbnail` is defined, otherwise specifies an accessible label.                                    |string                    |FALSE                 |
#'  |scale     |scale     |Specifies the size of the component.                                                                                                |"l" &#124; "m" &#124; "s" |TRUE                  |
#'  |thumbnail |thumbnail |Specifies the `src` to an image (remember to add a token if the user is private).                                                   |string                    |TRUE                  |
#'  |userId    |user-id   |Specifies the unique id of the user.                                                                                                |string                    |TRUE                  |
#'  |username  |username  |Specifies the username of the user.                                                                                                 |string                    |TRUE                  |
#'
#' @param ... named attributes passed to `htmltools::tag()`
#' @export
#' @return an object of class `calcite_component` which is a subclass of `shiny.tag`
#' @references [Official Documentation](https://developers.arcgis.com/calcite-design-system/components/avatar/)
#' @examples
#' calcite_avatar()
calcite_avatar <- function(...) {
  res <- htmltools::tag(
    "calcite-avatar",
    rlang::dots_list(..., calcite_dependency(), calcite_bindings())
  )

  class(res) <- c("calcite_component", class(res))
  res
}

#' Create a BlockSection component
#'
#'
#'
#'
#'
#' @details
#' ## Properties

#' The following properties are provided by this component:

#'  |Name             |Attribute      |Description                                                                                                                                                |Values                                 |Reflects to Attribute |
#'  |:----------------|:--------------|:----------------------------------------------------------------------------------------------------------------------------------------------------------|:--------------------------------------|:---------------------|
#'  |iconEnd          |icon-end       |Specifies an icon to display at the end of the component.                                                                                                  |string                                 |TRUE                  |
#'  |iconFlipRtl      |icon-flip-rtl  |Displays the `iconStart` and/or `iconEnd` as flipped when the element direction is right-to-left (`"rtl"`).                                                |"both" &#124; "end" &#124; "start"     |TRUE                  |
#'  |iconStart        |icon-start     |Specifies an icon to display at the start of the component.                                                                                                |string                                 |TRUE                  |
#'  |messageOverrides |NA             |Use this property to override individual strings used by the component.                                                                                    |Check API reference                    |FALSE                 |
#'  |open             |open           |When `true`, expands the component and its contents.                                                                                                       |boolean                                |TRUE                  |
#'  |status           |status         |Displays a status-related indicator icon.                                                                                                                  |"idle" &#124; "invalid" &#124; "valid" |TRUE                  |
#'  |text             |text           |The component header text.                                                                                                                                 |string                                 |FALSE                 |
#'  |toggleDisplay    |toggle-display |Specifies how the component's toggle is displayed, where:  `"button"` sets the toggle to a selectable header, and  `"switch"` sets the toggle to a switch. |"button" &#124; "switch"               |TRUE                  |

#' ## Events

#' The following events are observed by shiny:

#'  |Event                     |Description                             |
#'  |:-------------------------|:---------------------------------------|
#'  |calciteBlockSectionToggle |Fires when the header has been clicked. |

#' ## Slots

#' The following slots are provided by this component:

#'  |Slot              |Description                       |
#'  |:-----------------|:---------------------------------|
#'  |Default (unnamed) |A slot for adding custom content. |
#'
#' @param ... named attributes passed to `htmltools::tag()`
#' @export
#' @return an object of class `calcite_component` which is a subclass of `shiny.tag`
#' @references [Official Documentation](https://developers.arcgis.com/calcite-design-system/components/block-section/)
#' @examples
#' calcite_block_section()
calcite_block_section <- function(...) {
  res <- htmltools::tag(
    "calcite-block-section",
    rlang::dots_list(..., calcite_dependency(), calcite_bindings())
  )

  class(res) <- c("calcite_component", class(res))
  res
}

#' Create a Card component
#'
#'
#'
#'
#'
#' @details
#' ## Properties

#' The following properties are provided by this component:

#'  |Name              |Attribute          |Description                                                                              |Values                                                                     |Reflects to Attribute |
#'  |:-----------------|:------------------|:----------------------------------------------------------------------------------------|:--------------------------------------------------------------------------|:---------------------|
#'  |disabled          |disabled           |When `true`, interaction is prevented and the component is displayed with lower opacity. |boolean                                                                    |TRUE                  |
#'  |label             |label              |Accessible name for the component.                                                       |string                                                                     |FALSE                 |
#'  |loading           |loading            |When `true`, a busy indicator is displayed.                                              |boolean                                                                    |TRUE                  |
#'  |messageOverrides  |NA                 |Use this property to override individual strings used by the component.                  |Check API reference                                                        |FALSE                 |
#'  |selectable        |selectable         |When `true`, the component is selectable.                                                |boolean                                                                    |TRUE                  |
#'  |selected          |selected           |When `true`, the component is selected.                                                  |boolean                                                                    |TRUE                  |
#'  |thumbnailPosition |thumbnail-position |Sets the placement of the thumbnail defined in the `thumbnail` slot.                     |"block-end" &#124; "block-start" &#124; "inline-end" &#124; "inline-start" |TRUE                  |

#' ## Events

#' The following events are observed by shiny:

#'  |Event             |Description                                                                                                                                        |
#'  |:-----------------|:--------------------------------------------------------------------------------------------------------------------------------------------------|
#'  |calciteCardSelect |Fires when the deprecated `selectable` is true, or `selectionMode` set on parent `calcite-card-group` is not `none` and the component is selected. |

#' ## Slots

#' The following slots are provided by this component:

#'  |Slot              |Description                                                              |
#'  |:-----------------|:------------------------------------------------------------------------|
#'  |Default (unnamed) |A slot for adding content.                                               |
#'  |title             |[Deprecated] use `heading` instead. A slot for adding a heading.         |
#'  |subtitle          |[Deprecated] use `description` instead. A slot for adding a description. |
#'  |thumbnail         |A slot for adding a thumbnail.                                           |
#'  |heading           |A slot for adding a heading.                                             |
#'  |description       |A slot for adding a description.                                         |
#'  |footer-start      |A slot for adding a leading footer.                                      |
#'  |footer-end        |A slot for adding a trailing footer.                                     |
#'
#' @param ... named attributes passed to `htmltools::tag()`
#' @export
#' @return an object of class `calcite_component` which is a subclass of `shiny.tag`
#' @references [Official Documentation](https://developers.arcgis.com/calcite-design-system/components/card/)
#' @examples
#' calcite_card()
calcite_card <- function(...) {
  res <- htmltools::tag(
    "calcite-card",
    rlang::dots_list(..., calcite_dependency(), calcite_bindings())
  )

  class(res) <- c("calcite_component", class(res))
  res
}
#' Create a CardGroup component
#'
#'
#'
#'
#'
#' @details
#' ## Properties

#' The following properties are provided by this component:

#'  |Name          |Attribute      |Description                                                                              |Values                                                           |Reflects to Attribute |
#'  |:-------------|:--------------|:----------------------------------------------------------------------------------------|:----------------------------------------------------------------|:---------------------|
#'  |disabled      |disabled       |When `true`, interaction is prevented and the component is displayed with lower opacity. |boolean                                                          |TRUE                  |
#'  |label         |label          |Accessible name for the component.                                                       |string                                                           |FALSE                 |
#'  |selectedItems |NA             |Specifies the component's selected items.                                                |Check API reference                                              |FALSE                 |
#'  |selectionMode |selection-mode |Specifies the selection mode of the component.                                           |"multiple" &#124; "none" &#124; "single" &#124; "single-persist" |TRUE                  |

#' ## Events

#' The following events are observed by shiny:

#'  |Event                  |Description                                                                         |
#'  |:----------------------|:-----------------------------------------------------------------------------------|
#'  |calciteCardGroupSelect |Emits when the component's selection changes and the `selectionMode` is not `none`. |

#' ## Slots

#' The following slots are provided by this component:

#'  |Slot              |Description                                    |
#'  |:-----------------|:----------------------------------------------|
#'  |Default (unnamed) |A slot for adding one or more `calcite-card`s. |
#'
#' @param ... named attributes passed to `htmltools::tag()`
#' @export
#' @return an object of class `calcite_component` which is a subclass of `shiny.tag`
#' @references [Official Documentation](https://developers.arcgis.com/calcite-design-system/components/card-group/)
#' @examples
#' calcite_card_group()
calcite_card_group <- function(...) {
  res <- htmltools::tag(
    "calcite-card-group",
    rlang::dots_list(..., calcite_dependency(), calcite_bindings())
  )

  class(res) <- c("calcite_component", class(res))
  res
}
#' Create a Carousel component
#'
#'
#'
#'
#'
#' @details
#' ## Properties

#' The following properties are provided by this component:

#'  |Name             |Attribute         |Description                                                                                                                                                                      |Values                               |Reflects to Attribute |
#'  |:----------------|:-----------------|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|:------------------------------------|:---------------------|
#'  |arrowType        |arrow-type        |Specifies how and if the "previous" and "next" arrows are displayed.                                                                                                             |"edge" &#124; "inline" &#124; "none" |TRUE                  |
#'  |autoplay         |autoplay          |When `true`, the carousel will autoplay and controls will be displayed. When "paused" at time of initialization, the carousel will not autoplay, but controls will be displayed. |"" &#124; "paused" &#124; boolean    |TRUE                  |
#'  |autoplayDuration |autoplay-duration |When `autoplay` is `true`, specifies in milliseconds the length of time to display each Carousel Item.                                                                           |number                               |TRUE                  |
#'  |controlOverlay   |control-overlay   |Specifies if the component's controls are positioned absolutely on top of slotted Carousel Items.                                                                                |boolean                              |TRUE                  |
#'  |disabled         |disabled          |When `true`, interaction is prevented and the component is displayed with lower opacity.                                                                                         |boolean                              |TRUE                  |
#'  |label            |label             |Accessible name for the component.                                                                                                                                               |string                               |FALSE                 |
#'  |messageOverrides |NA                |Use this property to override individual strings used by the component.                                                                                                          |Check API reference                  |FALSE                 |
#'  |selectedItem     |NA                |The component's selected `calcite-carousel-item`.                                                                                                                                |HTMLCalciteCarouselItemElement       |FALSE                 |

#' ## Events

#' The following events are observed by shiny:

#'  |Event                 |Description                                                                                                                                        |
#'  |:---------------------|:--------------------------------------------------------------------------------------------------------------------------------------------------|
#'  |calciteCarouselChange |Fires when the selected `calcite-carousel-item` changes.                                                                                           |
#'  |calciteCarouselPause  |Fires when the carousel autoplay state pauses due to a user hovering over the component or focusing on the component or slotted content            |
#'  |calciteCarouselPlay   |Fires when the carousel autoplay is invoked by the user.                                                                                           |
#'  |calciteCarouselResume |Fires when the carousel autoplay state resumes due to a user no longer hovering over the component or focusing on the component or slotted content |
#'  |calciteCarouselStop   |Fires when the carousel autoplay state is stopped by a user.                                                                                       |

#' ## Slots

#' The following slots are provided by this component:

#'  |Slot              |Description                                 |
#'  |:-----------------|:-------------------------------------------|
#'  |Default (unnamed) |A slot for adding `calcite-carousel-item`s. |
#'
#' @param ... named attributes passed to `htmltools::tag()`
#' @export
#' @return an object of class `calcite_component` which is a subclass of `shiny.tag`
#' @references [Official Documentation](https://developers.arcgis.com/calcite-design-system/components/carousel/)
#' @examples
#' calcite_carousel()
calcite_carousel <- function(...) {
  res <- htmltools::tag(
    "calcite-carousel",
    rlang::dots_list(..., calcite_dependency(), calcite_bindings())
  )

  class(res) <- c("calcite_component", class(res))
  res
}
#' Create a CarouselItem component
#'
#'
#'
#'
#'
#' @details
#' ## Properties

#' The following properties are provided by this component:

#'  |Name     |Attribute |Description                             |Values  |Reflects to Attribute |
#'  |:--------|:---------|:---------------------------------------|:-------|:---------------------|
#'  |label    |label     |Accessible name for the component.      |string  |FALSE                 |
#'  |selected |selected  |When `true`, the component is selected. |boolean |TRUE                  |

#' ## Slots

#' The following slots are provided by this component:

#'  |Slot              |Description                |
#'  |:-----------------|:--------------------------|
#'  |Default (unnamed) |A slot for adding content. |
#'
#' @param ... named attributes passed to `htmltools::tag()`
#' @export
#' @return an object of class `calcite_component` which is a subclass of `shiny.tag`
#' @references [Official Documentation](https://developers.arcgis.com/calcite-design-system/components/carousel-item/)
#' @examples
#' calcite_carousel_item()
calcite_carousel_item <- function(...) {
  res <- htmltools::tag(
    "calcite-carousel-item",
    rlang::dots_list(..., calcite_dependency(), calcite_bindings())
  )

  class(res) <- c("calcite_component", class(res))
  res
}
#' Create a Checkbox component
#'
#'
#'
#'
#'
#' @details
#' ## Properties

#' The following properties are provided by this component:

#'  |Name          |Attribute     |Description                                                                                                                                                              |Values                                 |Reflects to Attribute |
#'  |:-------------|:-------------|:------------------------------------------------------------------------------------------------------------------------------------------------------------------------|:--------------------------------------|:---------------------|
#'  |checked       |checked       |When `true`, the component is checked.                                                                                                                                   |boolean                                |TRUE                  |
#'  |disabled      |disabled      |When `true`, interaction is prevented and the component is displayed with lower opacity.                                                                                 |boolean                                |TRUE                  |
#'  |form          |form          |The `id` of the form that will be associated with the component.  When not set, the component will be associated with its ancestor form element, if any.                 |string                                 |TRUE                  |
#'  |indeterminate |indeterminate |When `true`, the component is initially indeterminate, which is independent from its `checked` value.  The state is visual only, and can look different across browsers. |boolean                                |TRUE                  |
#'  |label         |label         |Accessible name for the component.                                                                                                                                       |string                                 |FALSE                 |
#'  |name          |name          |Specifies the name of the component.  Required to pass the component's `value` on form submission.                                                                       |string                                 |TRUE                  |
#'  |required      |required      |When `true` and the component resides in a form, the component must have a value in order for the form to submit.                                                        |boolean                                |TRUE                  |
#'  |scale         |scale         |Specifies the size of the component.                                                                                                                                     |"l" &#124; "m" &#124; "s"              |TRUE                  |
#'  |status        |status        |Specifies the status of the input field, which determines message and icons.                                                                                             |"idle" &#124; "invalid" &#124; "valid" |TRUE                  |
#'  |validity      |NA            |The current validation state of the component.                                                                                                                           |Check API reference                    |FALSE                 |
#'  |value         |value         |The component's value.                                                                                                                                                   |any                                    |FALSE                 |

#' ## Events

#' The following events are observed by shiny:

#'  |Event                 |Description                                          |
#'  |:---------------------|:----------------------------------------------------|
#'  |calciteCheckboxChange |Fires when the component's `checked` status changes. |
#'
#' @param ... named attributes passed to `htmltools::tag()`
#' @export
#' @return an object of class `calcite_component` which is a subclass of `shiny.tag`
#' @references [Official Documentation](https://developers.arcgis.com/calcite-design-system/components/checkbox/)
#' @examples
#' calcite_checkbox()
calcite_checkbox <- function(...) {
  res <- htmltools::tag(
    "calcite-checkbox",
    rlang::dots_list(..., calcite_dependency(), calcite_bindings())
  )

  class(res) <- c("calcite_component", class(res))
  res
}
#' Create a Chip component
#'
#'
#'
#'
#'
#' @details
#' ## Properties

#' The following properties are provided by this component:

#'  |Name             |Attribute       |Description                                                                                                               |Values                                         |Reflects to Attribute |
#'  |:----------------|:---------------|:-------------------------------------------------------------------------------------------------------------------------|:----------------------------------------------|:---------------------|
#'  |appearance       |appearance      |Specifies the appearance style of the component.                                                                          |"outline" &#124; "outline-fill" &#124; "solid" |TRUE                  |
#'  |closable         |closable        |When `true`, a close button is added to the component.                                                                    |boolean                                        |TRUE                  |
#'  |closed           |closed          |When `true`, hides the component.                                                                                         |boolean                                        |TRUE                  |
#'  |closeOnDelete    |close-on-delete |When `true`, the component closes when the Delete or Backspace key is pressed while focused.                              |boolean                                        |TRUE                  |
#'  |disabled         |disabled        |When `true`, interaction is prevented and the component is displayed with lower opacity.                                  |boolean                                        |TRUE                  |
#'  |icon             |icon            |Specifies an icon to display.                                                                                             |string                                         |TRUE                  |
#'  |iconFlipRtl      |icon-flip-rtl   |When `true`, the icon will be flipped when the element direction is right-to-left (`"rtl"`).                              |boolean                                        |TRUE                  |
#'  |kind             |kind            |Specifies the kind of the component, which will apply to border and background if applicable.                             |"brand" &#124; "inverse" &#124; "neutral"      |TRUE                  |
#'  |label            |label           |Accessible name for the component.                                                                                        |string                                         |FALSE                 |
#'  |messageOverrides |NA              |Use this property to override individual strings used by the component.                                                   |Check API reference                            |FALSE                 |
#'  |scale            |scale           |Specifies the size of the component. When contained in a parent `calcite-chip-group` inherits the parent's `scale` value. |"l" &#124; "m" &#124; "s"                      |TRUE                  |
#'  |selected         |selected        |When `true`, the component is selected.                                                                                   |boolean                                        |TRUE                  |
#'  |value            |value           |The component's value.                                                                                                    |any                                            |FALSE                 |

#' ## Events

#' The following events are observed by shiny:

#'  |Event             |Description                                             |
#'  |:-----------------|:-------------------------------------------------------|
#'  |calciteChipClose  |Fires when the component's close button is selected.    |
#'  |calciteChipSelect |Fires when the selected state of the component changes. |

#' ## Slots

#' The following slots are provided by this component:

#'  |Slot              |Description                 |
#'  |:-----------------|:---------------------------|
#'  |Default (unnamed) |A slot for adding text.     |
#'  |image             |A slot for adding an image. |
#'
#' @param ... named attributes passed to `htmltools::tag()`
#' @export
#' @return an object of class `calcite_component` which is a subclass of `shiny.tag`
#' @references [Official Documentation](https://developers.arcgis.com/calcite-design-system/components/chip/)
#' @examples
#' calcite_chip()
calcite_chip <- function(...) {
  res <- htmltools::tag(
    "calcite-chip",
    rlang::dots_list(..., calcite_dependency(), calcite_bindings())
  )

  class(res) <- c("calcite_component", class(res))
  res
}
#' Create a ChipGroup component
#'
#'
#'
#'
#'
#' @details
#' ## Properties

#' The following properties are provided by this component:

#'  |Name          |Attribute      |Description                                                                                                                                                                                                                                                  |Values                                                           |Reflects to Attribute |
#'  |:-------------|:--------------|:------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|:----------------------------------------------------------------|:---------------------|
#'  |disabled      |disabled       |When `true`, interaction is prevented and the component is displayed with lower opacity.                                                                                                                                                                     |boolean                                                          |TRUE                  |
#'  |label         |label          |Accessible name for the component.                                                                                                                                                                                                                           |string                                                           |FALSE                 |
#'  |scale         |scale          |Specifies the size of the component. Child `calcite-chip`s inherit the component's value.                                                                                                                                                                    |"l" &#124; "m" &#124; "s"                                        |TRUE                  |
#'  |selectedItems |NA             |Specifies the component's selected items.                                                                                                                                                                                                                    |Check API reference                                              |FALSE                 |
#'  |selectionMode |selection-mode |Specifies the selection mode of the component, where:  `"multiple"` allows any number of selections,  `"single"` allows only one selection,  `"single-persist"` allows one selection and prevents de-selection, and  `"none"` does not allow any selections. |"multiple" &#124; "none" &#124; "single" &#124; "single-persist" |TRUE                  |

#' ## Events

#' The following events are observed by shiny:

#'  |Event                  |Description                                   |
#'  |:----------------------|:---------------------------------------------|
#'  |calciteChipGroupSelect |Fires when the component's selection changes. |

#' ## Slots

#' The following slots are provided by this component:

#'  |Slot              |Description                                    |
#'  |:-----------------|:----------------------------------------------|
#'  |Default (unnamed) |A slot for adding one or more `calcite-chip`s. |
#'
#' @param ... named attributes passed to `htmltools::tag()`
#' @export
#' @return an object of class `calcite_component` which is a subclass of `shiny.tag`
#' @references [Official Documentation](https://developers.arcgis.com/calcite-design-system/components/chip-group/)
#' @examples
#' calcite_chip_group()
calcite_chip_group <- function(...) {
  res <- htmltools::tag(
    "calcite-chip-group",
    rlang::dots_list(..., calcite_dependency(), calcite_bindings())
  )

  class(res) <- c("calcite_component", class(res))
  res
}
#' Create a ColorPicker component
#'
#'
#'
#'
#'
#' @details
#' ## Properties

#' The following properties are provided by this component:

#'  |Name             |Attribute         |Description                                                                                                                                                                          |Values                                                                                                                                                                                   |Reflects to Attribute |
#'  |:----------------|:-----------------|:------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|:----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|:---------------------|
#'  |allowEmpty       |allow-empty       |When `true`, an empty color (`null`) will be allowed as a `value`.  When `false`, a color value is enforced, and clearing the input or blurring will restore the last valid `value`. |boolean                                                                                                                                                                                  |TRUE                  |
#'  |alphaChannel     |alpha-channel     |When `true`, the component will allow updates to the color's alpha value.                                                                                                            |boolean                                                                                                                                                                                  |FALSE                 |
#'  |channelsDisabled |channels-disabled |When `true`, hides the RGB/HSV channel inputs.                                                                                                                                       |boolean                                                                                                                                                                                  |FALSE                 |
#'  |clearable        |clearable         |When `true`, an empty color (`null`) will be allowed as a `value`.  When `false`, a color value is enforced, and clearing the input or blurring will restore the last valid `value`. |boolean                                                                                                                                                                                  |TRUE                  |
#'  |disabled         |disabled          |When `true`, interaction is prevented and the component is displayed with lower opacity.                                                                                             |boolean                                                                                                                                                                                  |TRUE                  |
#'  |format           |format            |The format of `value`.  When `"auto"`, the format will be inferred from `value` when set.                                                                                            |"auto" &#124; "hex" &#124; "hexa" &#124; "hsl" &#124; "hsl-css" &#124; "hsla" &#124; "hsla-css" &#124; "hsv" &#124; "hsva" &#124; "rgb" &#124; "rgb-css" &#124; "rgba" &#124; "rgba-css" |TRUE                  |
#'  |hexDisabled      |hex-disabled      |When `true`, hides the hex input.                                                                                                                                                    |boolean                                                                                                                                                                                  |FALSE                 |
#'  |messageOverrides |NA                |Use this property to override individual strings used by the component.                                                                                                              |Check API reference                                                                                                                                                                      |FALSE                 |
#'  |numberingSystem  |numbering-system  |Specifies the Unicode numeral system used by the component for localization.                                                                                                         |"arab" &#124; "arabext" &#124; "latn"                                                                                                                                                    |TRUE                  |
#'  |savedDisabled    |saved-disabled    |When `true`, hides the saved colors section.                                                                                                                                         |boolean                                                                                                                                                                                  |TRUE                  |
#'  |scale            |scale             |Specifies the size of the component.                                                                                                                                                 |"l" &#124; "m" &#124; "s"                                                                                                                                                                |TRUE                  |
#'  |storageId        |storage-id        |Specifies the storage ID for colors.                                                                                                                                                 |string                                                                                                                                                                                   |TRUE                  |
#'  |value            |value             |The component's value, where the value can be a CSS color string, or a RGB, HSL or HSV object.  The type will be preserved as the color is updated.                                  |(HSL & ObjectWithAlpha) &#124; (HSV & ObjectWithAlpha) &#124; (RGB & ObjectWithAlpha) &#124; HSL &#124; HSV &#124; RGB &#124; string                                                     |FALSE                 |

#' ## Events

#' The following events are observed by shiny:

#'  |Event                    |Description                                                                                                                                                                                                  |
#'  |:------------------------|:------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
#'  |calciteColorPickerChange |Fires when the color value has changed.                                                                                                                                                                      |
#'  |calciteColorPickerInput  |Fires as the color value changes. Similar to the `calciteColorPickerChange` event with the exception of dragging. When dragging the color field or hue slider thumb, this event fires as the thumb is moved. |
#'
#' @param ... named attributes passed to `htmltools::tag()`
#' @export
#' @return an object of class `calcite_component` which is a subclass of `shiny.tag`
#' @references [Official Documentation](https://developers.arcgis.com/calcite-design-system/components/color-picker/)
#' @examples
#' calcite_color_picker()
calcite_color_picker <- function(...) {
  res <- htmltools::tag(
    "calcite-color-picker",
    rlang::dots_list(..., calcite_dependency(), calcite_bindings())
  )

  class(res) <- c("calcite_component", class(res))
  res
}
#' Create a Combobox component
#'
#'
#'
#'
#'
#' @details
#' ## Properties

#' The following properties are provided by this component:

#'  |Name                   |Attribute                 |Description                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         |Values                                                                |Reflects to Attribute |
#'  |:----------------------|:-------------------------|:-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|:---------------------------------------------------------------------|:---------------------|
#'  |allowCustomValues      |allow-custom-values       |When `true`, allows entry of custom values, which are not in the original set of items.                                                                                                                                                                                                                                                                                                                                                                                                                             |boolean                                                               |TRUE                  |
#'  |clearDisabled          |clear-disabled            |When `true`, the value-clearing will be disabled.                                                                                                                                                                                                                                                                                                                                                                                                                                                                   |boolean                                                               |TRUE                  |
#'  |disabled               |disabled                  |When `true`, interaction is prevented and the component is displayed with lower opacity.                                                                                                                                                                                                                                                                                                                                                                                                                            |boolean                                                               |TRUE                  |
#'  |filteredItems          |NA                        |Specifies the component's filtered items.                                                                                                                                                                                                                                                                                                                                                                                                                                                                           |Check API reference                                                   |FALSE                 |
#'  |filterProps            |NA                        |Specifies the properties to match against when filtering. If not set, all properties will be matched (label, description, metadata, value).                                                                                                                                                                                                                                                                                                                                                                         |Check API reference                                                   |FALSE                 |
#'  |filterText             |filter-text               |Text for the component's filter input field.                                                                                                                                                                                                                                                                                                                                                                                                                                                                        |string                                                                |TRUE                  |
#'  |flipPlacements         |NA                        |Specifies the component's fallback slotted content placement when it's initial placement has insufficient space available.                                                                                                                                                                                                                                                                                                                                                                                          |Check API reference                                                   |FALSE                 |
#'  |form                   |form                      |The `id` of the form that will be associated with the component.  When not set, the component will be associated with its ancestor form element, if any.                                                                                                                                                                                                                                                                                                                                                            |string                                                                |TRUE                  |
#'  |label                  |label                     |Accessible name for the component.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  |string                                                                |FALSE                 |
#'  |maxItems               |max-items                 |Specifies the maximum number of `calcite-combobox-item`s (including nested children) to display before displaying a scrollbar.                                                                                                                                                                                                                                                                                                                                                                                      |number                                                                |TRUE                  |
#'  |messageOverrides       |NA                        |Use this property to override individual strings used by the component.                                                                                                                                                                                                                                                                                                                                                                                                                                             |Check API reference                                                   |FALSE                 |
#'  |name                   |name                      |Specifies the name of the component.  Required to pass the component's `value` on form submission.                                                                                                                                                                                                                                                                                                                                                                                                                  |string                                                                |TRUE                  |
#'  |open                   |open                      |When `true`, displays and positions the component.                                                                                                                                                                                                                                                                                                                                                                                                                                                                  |boolean                                                               |TRUE                  |
#'  |overlayPositioning     |overlay-positioning       |Determines the type of positioning to use for the overlaid content.  Using `"absolute"` will work for most cases. The component will be positioned inside of overflowing parent containers and will affect the container's layout.  `"fixed"` should be used to escape an overflowing parent container, or when the reference element's `position` CSS property is `"fixed"`.                                                                                                                                       |"absolute" &#124; "fixed"                                             |TRUE                  |
#'  |placeholder            |placeholder               |Specifies the placeholder text for the input.                                                                                                                                                                                                                                                                                                                                                                                                                                                                       |string                                                                |FALSE                 |
#'  |placeholderIcon        |placeholder-icon          |Specifies the placeholder icon for the input.                                                                                                                                                                                                                                                                                                                                                                                                                                                                       |string                                                                |TRUE                  |
#'  |placeholderIconFlipRtl |placeholder-icon-flip-rtl |When `true`, the icon will be flipped when the element direction is right-to-left (`"rtl"`).                                                                                                                                                                                                                                                                                                                                                                                                                        |boolean                                                               |TRUE                  |
#'  |readOnly               |read-only                 |When `true`, the component's value can be read, but controls are not accessible and the value cannot be modified.                                                                                                                                                                                                                                                                                                                                                                                                   |boolean                                                               |TRUE                  |
#'  |required               |required                  |When `true` and the component resides in a form, the component must have a value in order for the form to submit.                                                                                                                                                                                                                                                                                                                                                                                                   |boolean                                                               |TRUE                  |
#'  |scale                  |scale                     |Specifies the size of the component.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                |"l" &#124; "m" &#124; "s"                                             |TRUE                  |
#'  |selectedItems          |NA                        |Specifies the component's selected items.                                                                                                                                                                                                                                                                                                                                                                                                                                                                           |Check API reference                                                   |FALSE                 |
#'  |selectionDisplay       |selection-display         |When `selectionMode` is `"ancestors"` or `"multiple"`, specifies the display of multiple `calcite-combobox-item` selections, where:  `"all"` displays all selections with individual `calcite-chip`s,  `"fit"` displays individual `calcite-chip`s that scale to the component's size, including a non-closable `calcite-chip`, which provides the number of additional `calcite-combobox-item` selections not visually displayed, and  `"single"` displays one `calcite-chip` with the total number of selections. |"all" &#124; "fit" &#124; "single"                                    |TRUE                  |
#'  |selectionMode          |selection-mode            |Specifies the selection mode of the component, where:  `"multiple"` allows any number of selections,  `"single"` allows only one selection,  `"single-persist"` allows one selection and prevents de-selection, and  `"ancestors"` allows multiple selections, but shows ancestors of selected items as selected, with only deepest children shown in chips.                                                                                                                                                        |"ancestors" &#124; "multiple" &#124; "single" &#124; "single-persist" |TRUE                  |
#'  |status                 |status                    |Specifies the status of the input field, which determines message and icons.                                                                                                                                                                                                                                                                                                                                                                                                                                        |"idle" &#124; "invalid" &#124; "valid"                                |TRUE                  |
#'  |validationIcon         |validation-icon           |Specifies the validation icon to display under the component.                                                                                                                                                                                                                                                                                                                                                                                                                                                       |boolean &#124; string                                                 |TRUE                  |
#'  |validationMessage      |validation-message        |Specifies the validation message to display under the component.                                                                                                                                                                                                                                                                                                                                                                                                                                                    |string                                                                |FALSE                 |
#'  |validity               |NA                        |The current validation state of the component.                                                                                                                                                                                                                                                                                                                                                                                                                                                                      |Check API reference                                                   |FALSE                 |
#'  |value                  |value                     |The component's value(s) from the selected `calcite-combobox-item`(s).                                                                                                                                                                                                                                                                                                                                                                                                                                              |Check API reference                                                   |FALSE                 |

#' ## Events

#' The following events are observed by shiny:

#'  |Event                       |Description                                                                                              |
#'  |:---------------------------|:--------------------------------------------------------------------------------------------------------|
#'  |calciteComboboxBeforeClose  |Fires when the component is requested to be closed, and before the closing transition begins.            |
#'  |calciteComboboxBeforeOpen   |Fires when the component is added to the DOM but not rendered, and before the opening transition begins. |
#'  |calciteComboboxChange       |Fires when the selected item(s) changes.                                                                 |
#'  |calciteComboboxChipClose    |Fires when a selected item in the component is closed via its `calcite-chip`.                            |
#'  |calciteComboboxClose        |Fires when the component is closed and animation is complete.                                            |
#'  |calciteComboboxFilterChange |Fires when text is added to filter the options list.                                                     |
#'  |calciteComboboxOpen         |Fires when the component is open and animation is complete.                                              |

#' ## Slots

#' The following slots are provided by this component:

#'  |Slot              |Description                                 |
#'  |:-----------------|:-------------------------------------------|
#'  |Default (unnamed) |A slot for adding `calcite-combobox-item`s. |
#'
#' @param ... named attributes passed to `htmltools::tag()`
#' @export
#' @return an object of class `calcite_component` which is a subclass of `shiny.tag`
#' @references [Official Documentation](https://developers.arcgis.com/calcite-design-system/components/combobox/)
#' @examples
#' calcite_combobox()
calcite_combobox <- function(...) {
  res <- htmltools::tag(
    "calcite-combobox",
    rlang::dots_list(..., calcite_dependency(), calcite_bindings())
  )

  class(res) <- c("calcite_component", class(res))
  res
}
#' Create a ComboboxItem component
#'
#'
#'
#'
#'
#' @details
#' ## Properties

#' The following properties are provided by this component:

#'  |Name           |Attribute       |Description                                                                                                                                                       |Values              |Reflects to Attribute |
#'  |:--------------|:---------------|:-----------------------------------------------------------------------------------------------------------------------------------------------------------------|:-------------------|:---------------------|
#'  |active         |active          |When `true`, the component is active.                                                                                                                             |boolean             |TRUE                  |
#'  |ancestors      |NA              |Specifies the parent and grandparent items, which are set on `calcite-combobox`.                                                                                  |Check API reference |FALSE                 |
#'  |description    |description     |A description for the component, which displays below the heading.                                                                                                |string              |FALSE                 |
#'  |disabled       |disabled        |When `true`, interaction is prevented and the component is displayed with lower opacity.                                                                          |boolean             |TRUE                  |
#'  |filterDisabled |filter-disabled |When `true`, omits the component from the `calcite-combobox` filtered search results.                                                                             |boolean             |TRUE                  |
#'  |guid           |guid            |The `id` attribute of the component. When omitted, a globally unique identifier is used.                                                                          |string              |TRUE                  |
#'  |heading        |heading         |The component's text.                                                                                                                                             |string              |FALSE                 |
#'  |icon           |icon            |Specifies an icon to display.                                                                                                                                     |string              |TRUE                  |
#'  |iconFlipRtl    |icon-flip-rtl   |When `true`, the icon will be flipped when the element direction is right-to-left (`"rtl"`).                                                                      |boolean             |TRUE                  |
#'  |label          |label           |The component's label.                                                                                                                                            |any                 |FALSE                 |
#'  |metadata       |NA              |Provides additional metadata to the component used in filtering.                                                                                                  |Check API reference |FALSE                 |
#'  |selected       |selected        |When `true`, the component is selected.                                                                                                                           |boolean             |TRUE                  |
#'  |shortHeading   |short-heading   |The component's short heading.  When provided, the short heading will be displayed in the component's selection.  It is recommended to use 5 characters or fewer. |string              |FALSE                 |
#'  |textLabel      |text-label      |The component's text.                                                                                                                                             |string              |TRUE                  |
#'  |value          |value           |The component's value.                                                                                                                                            |any                 |FALSE                 |

#' ## Events

#' The following events are observed by shiny:

#'  |Event                     |Description                                             |
#'  |:-------------------------|:-------------------------------------------------------|
#'  |calciteComboboxItemChange |Fires whenever the component is selected or unselected. |

#' ## Slots

#' The following slots are provided by this component:

#'  |Slot              |Description                                                               |
#'  |:-----------------|:-------------------------------------------------------------------------|
#'  |Default (unnamed) |A slot for adding nested `calcite-combobox-item`s.                        |
#'  |content-end       |A slot for adding non-actionable elements after the component's content.  |
#'  |content-start     |A slot for adding non-actionable elements before the component's content. |
#'
#' @param ... named attributes passed to `htmltools::tag()`
#' @export
#' @return an object of class `calcite_component` which is a subclass of `shiny.tag`
#' @references [Official Documentation](https://developers.arcgis.com/calcite-design-system/components/combobox-item/)
#' @examples
#' calcite_combobox_item()
calcite_combobox_item <- function(...) {
  res <- htmltools::tag(
    "calcite-combobox-item",
    rlang::dots_list(..., calcite_dependency(), calcite_bindings())
  )

  class(res) <- c("calcite_component", class(res))
  res
}
#' Create a ComboboxItemGroup component
#'
#'
#'
#'
#'
#' @details
#' ## Properties

#' The following properties are provided by this component:

#'  |Name      |Attribute |Description                                                                                         |Values              |Reflects to Attribute |
#'  |:---------|:---------|:---------------------------------------------------------------------------------------------------|:-------------------|:---------------------|
#'  |ancestors |NA        |Specifies the parent and grandparent `calcite-combobox-item`s, which are set on `calcite-combobox`. |Check API reference |FALSE                 |
#'  |label     |label     |Specifies the title of the component.                                                               |string              |FALSE                 |

#' ## Slots

#' The following slots are provided by this component:

#'  |Slot              |Description                                 |
#'  |:-----------------|:-------------------------------------------|
#'  |Default (unnamed) |A slot for adding `calcite-combobox-item`s. |
#'
#' @param ... named attributes passed to `htmltools::tag()`
#' @export
#' @return an object of class `calcite_component` which is a subclass of `shiny.tag`
#' @references [Official Documentation](https://developers.arcgis.com/calcite-design-system/components/combobox-item-group/)
#' @examples
#' calcite_combobox_item_group()
calcite_combobox_item_group <- function(...) {
  res <- htmltools::tag(
    "calcite-combobox-item-group",
    rlang::dots_list(..., calcite_dependency(), calcite_bindings())
  )

  class(res) <- c("calcite_component", class(res))
  res
}
#' Create a Dialog component
#'
#'
#'
#'
#'
#' @details
#' ## Properties

#' The following properties are provided by this component:

#'  |Name                 |Attribute              |Description                                                                                                                                                                                                                                                                                                                                                                   |Values                                                                                                                             |Reflects to Attribute |
#'  |:--------------------|:----------------------|:-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|:----------------------------------------------------------------------------------------------------------------------------------|:---------------------|
#'  |beforeClose          |NA                     |Passes a function to run before the component closes.                                                                                                                                                                                                                                                                                                                         |Check API reference                                                                                                                |FALSE                 |
#'  |closeDisabled        |close-disabled         |When `true`, disables the component's close button.                                                                                                                                                                                                                                                                                                                           |boolean                                                                                                                            |TRUE                  |
#'  |description          |description            |A description for the component.                                                                                                                                                                                                                                                                                                                                              |string                                                                                                                             |FALSE                 |
#'  |dragEnabled          |drag-enabled           |When `true`, the component is draggable.                                                                                                                                                                                                                                                                                                                                      |boolean                                                                                                                            |TRUE                  |
#'  |escapeDisabled       |escape-disabled        |When `true`, disables the default close on escape behavior.  By default, an open dialog can be dismissed by pressing the Esc key.                                                                                                                                                                                                                                             |boolean                                                                                                                            |TRUE                  |
#'  |heading              |heading                |The component header text.                                                                                                                                                                                                                                                                                                                                                    |string                                                                                                                             |FALSE                 |
#'  |headingLevel         |heading-level          |Specifies the heading level of the component's `heading` for proper document structure, without affecting visual styling.                                                                                                                                                                                                                                                     |1 &#124; 2 &#124; 3 &#124; 4 &#124; 5 &#124; 6                                                                                     |TRUE                  |
#'  |kind                 |kind                   |Specifies the kind of the component, which will style the top border.                                                                                                                                                                                                                                                                                                         |"brand" &#124; "danger" &#124; "info" &#124; "success" &#124; "warning"                                                            |TRUE                  |
#'  |loading              |loading                |When `true`, a busy indicator is displayed.                                                                                                                                                                                                                                                                                                                                   |boolean                                                                                                                            |TRUE                  |
#'  |menuOpen             |menu-open              |When `true`, the action menu items in the `header-menu-actions` slot are open.                                                                                                                                                                                                                                                                                                |boolean                                                                                                                            |TRUE                  |
#'  |messageOverrides     |NA                     |Use this property to override individual strings used by the component.                                                                                                                                                                                                                                                                                                       |Check API reference                                                                                                                |FALSE                 |
#'  |modal                |modal                  |When `true`, displays a scrim blocking interaction underneath the component.                                                                                                                                                                                                                                                                                                  |boolean                                                                                                                            |TRUE                  |
#'  |open                 |open                   |When `true`, displays and positions the component.                                                                                                                                                                                                                                                                                                                            |boolean                                                                                                                            |TRUE                  |
#'  |outsideCloseDisabled |outside-close-disabled |When `true`, disables the closing of the component when clicked outside.                                                                                                                                                                                                                                                                                                      |boolean                                                                                                                            |TRUE                  |
#'  |overlayPositioning   |overlay-positioning    |Determines the type of positioning to use for the overlaid content.  Using `"absolute"` will work for most cases. The component will be positioned inside of overflowing parent containers and will affect the container's layout.  `"fixed"` should be used to escape an overflowing parent container, or when the reference element's `position` CSS property is `"fixed"`. |"absolute" &#124; "fixed"                                                                                                          |TRUE                  |
#'  |placement            |placement              |Specifies the placement of the dialog.                                                                                                                                                                                                                                                                                                                                        |"bottom" &#124; "bottom-end" &#124; "bottom-start" &#124; "center" &#124; "cover" &#124; "top" &#124; "top-end" &#124; "top-start" |TRUE                  |
#'  |resizable            |resizable              |When `true`, the component is resizable.                                                                                                                                                                                                                                                                                                                                      |boolean                                                                                                                            |TRUE                  |
#'  |scale                |scale                  |Specifies the size of the component.                                                                                                                                                                                                                                                                                                                                          |"l" &#124; "m" &#124; "s"                                                                                                          |TRUE                  |
#'  |width                |width                  |Specifies the width of the component.                                                                                                                                                                                                                                                                                                                                         |"l" &#124; "m" &#124; "s"                                                                                                          |TRUE                  |
#'  |widthScale           |width-scale            |Specifies the width of the component.                                                                                                                                                                                                                                                                                                                                         |"l" &#124; "m" &#124; "s"                                                                                                          |TRUE                  |

#' ## Events

#' The following events are observed by shiny:

#'  |Event                    |Description                                                                                              |
#'  |:------------------------|:--------------------------------------------------------------------------------------------------------|
#'  |calciteDialogBeforeClose |Fires when the component is requested to be closed and before the closing transition begins.             |
#'  |calciteDialogBeforeOpen  |Fires when the component is added to the DOM but not rendered, and before the opening transition begins. |
#'  |calciteDialogClose       |Fires when the component is closed and animation is complete.                                            |
#'  |calciteDialogOpen        |Fires when the component is open and animation is complete.                                              |
#'  |calciteDialogScroll      |Fires when the content is scrolled.                                                                      |

#' ## Slots

#' The following slots are provided by this component:

#'  |Slot                 |Description                                                                                                                             |
#'  |:--------------------|:---------------------------------------------------------------------------------------------------------------------------------------|
#'  |Default (unnamed)    |A slot for adding content.                                                                                                              |
#'  |content              |[Deprecated] Use `custom-content` slot instead.                                                                                         |
#'  |custom-content       |A slot for displaying custom content. Will prevent the rendering of any default Dialog UI, except for `box-shadow` and `corner-radius`. |
#'  |action-bar           |A slot for adding a `calcite-action-bar` to the component.                                                                              |
#'  |alerts               |A slot for adding `calcite-alert`s to the component.                                                                                    |
#'  |content-bottom       |A slot for adding content below the unnamed (default) slot and - if populated - the `footer` slot.                                      |
#'  |content-top          |A slot for adding content above the unnamed (default) slot and - if populated - below the `action-bar` slot.                            |
#'  |header-actions-start |A slot for adding actions or content to the starting side of the component's header.                                                    |
#'  |header-actions-end   |A slot for adding actions or content to the ending side of the component's header.                                                      |
#'  |header-content       |A slot for adding custom content to the component's header.                                                                             |
#'  |header-menu-actions  |A slot for adding an overflow menu with actions inside a `calcite-dropdown`.                                                            |
#'  |fab                  |A slot for adding a `calcite-fab` (floating action button) to perform an action.                                                        |
#'  |footer               |A slot for adding custom content to the component's footer. Should not be used with the `"footer-start"` or `"footer-end"` slots.       |
#'  |footer-end           |A slot for adding a trailing footer custom content. Should not be used with the `"footer"` slot.                                        |
#'  |footer-start         |A slot for adding a leading footer custom content. Should not be used with the `"footer"` slot.                                         |
#'
#' @param ... named attributes passed to `htmltools::tag()`
#' @export
#' @return an object of class `calcite_component` which is a subclass of `shiny.tag`
#' @references [Official Documentation](https://developers.arcgis.com/calcite-design-system/components/dialog/)
#' @examples
#' calcite_dialog()
calcite_dialog <- function(...) {
  res <- htmltools::tag(
    "calcite-dialog",
    rlang::dots_list(..., calcite_dependency(), calcite_bindings())
  )

  class(res) <- c("calcite_component", class(res))
  res
}
#' Create a Dropdown component
#'
#'
#'
#'
#'
#' @details
#' ## Properties

#' The following properties are provided by this component:

#'  |Name                  |Attribute                |Description                                                                                                                                                                                                                                                                                                                                                                   |Values                                                                                              |Reflects to Attribute |
#'  |:---------------------|:------------------------|:-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|:---------------------------------------------------------------------------------------------------|:---------------------|
#'  |closeOnSelectDisabled |close-on-select-disabled |When `true`, the component will remain open after a selection is made.  If the `selectionMode` of the selected `calcite-dropdown-item`'s containing `calcite-dropdown-group` is `"none"`, the component will always close.                                                                                                                                                    |boolean                                                                                             |TRUE                  |
#'  |disabled              |disabled                 |When `true`, interaction is prevented and the component is displayed with lower opacity.                                                                                                                                                                                                                                                                                      |boolean                                                                                             |TRUE                  |
#'  |flipPlacements        |NA                       |Specifies the component's fallback `calcite-dropdown-item` `placement` when it's initial or specified `placement` has insufficient space available.                                                                                                                                                                                                                           |Check API reference                                                                                 |FALSE                 |
#'  |maxItems              |max-items                |Specifies the maximum number of `calcite-dropdown-item`s to display before showing a scroller. Value must be greater than `0`, and does not include `groupTitle`'s from `calcite-dropdown-group`.                                                                                                                                                                             |number                                                                                              |TRUE                  |
#'  |open                  |open                     |When `true`, displays and positions the component.                                                                                                                                                                                                                                                                                                                            |boolean                                                                                             |TRUE                  |
#'  |overlayPositioning    |overlay-positioning      |Determines the type of positioning to use for the overlaid content.  Using `"absolute"` will work for most cases. The component will be positioned inside of overflowing parent containers and will affect the container's layout.  `"fixed"` should be used to escape an overflowing parent container, or when the reference element's `position` CSS property is `"fixed"`. |"absolute" &#124; "fixed"                                                                           |TRUE                  |
#'  |placement             |placement                |Determines where the component will be positioned relative to the container element.                                                                                                                                                                                                                                                                                          |"bottom" &#124; "bottom-end" &#124; "bottom-start" &#124; "top" &#124; "top-end" &#124; "top-start" |TRUE                  |
#'  |scale                 |scale                    |Specifies the size of the component.                                                                                                                                                                                                                                                                                                                                          |"l" &#124; "m" &#124; "s"                                                                           |TRUE                  |
#'  |selectedItems         |NA                       |Specifies the component's selected items.                                                                                                                                                                                                                                                                                                                                     |Check API reference                                                                                 |FALSE                 |
#'  |type                  |type                     |Specifies the action to open the component from the container element.                                                                                                                                                                                                                                                                                                        |"click" &#124; "hover"                                                                              |TRUE                  |
#'  |width                 |width                    |Specifies the width of the component.                                                                                                                                                                                                                                                                                                                                         |"l" &#124; "m" &#124; "s"                                                                           |TRUE                  |
#'  |widthScale            |width-scale              |Specifies the width of the component.                                                                                                                                                                                                                                                                                                                                         |"l" &#124; "m" &#124; "s"                                                                           |TRUE                  |

#' ## Events

#' The following events are observed by shiny:

#'  |Event                      |Description                                                                                              |
#'  |:--------------------------|:--------------------------------------------------------------------------------------------------------|
#'  |calciteDropdownBeforeClose |Fires when the component is requested to be closed and before the closing transition begins.             |
#'  |calciteDropdownBeforeOpen  |Fires when the component is added to the DOM but not rendered, and before the opening transition begins. |
#'  |calciteDropdownClose       |Fires when the component is closed and animation is complete.                                            |
#'  |calciteDropdownOpen        |Fires when the component is open and animation is complete.                                              |
#'  |calciteDropdownSelect      |Fires when a `calcite-dropdown-item`'s selection changes.                                                |

#' ## Slots

#' The following slots are provided by this component:

#'  |Slot              |Description                                                                                                                                                                   |
#'  |:-----------------|:-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
#'  |Default (unnamed) |A slot for adding `calcite-dropdown-group` elements. Every `calcite-dropdown-item` must have a parent `calcite-dropdown-group`, even if the `groupTitle` property is not set. |
#'  |trigger           |A slot for the element that triggers the `calcite-dropdown`.                                                                                                                  |
#'
#' @param ... named attributes passed to `htmltools::tag()`
#' @export
#' @return an object of class `calcite_component` which is a subclass of `shiny.tag`
#' @references [Official Documentation](https://developers.arcgis.com/calcite-design-system/components/dropdown/)
#' @examples
#' calcite_dropdown()
calcite_dropdown <- function(...) {
  res <- htmltools::tag(
    "calcite-dropdown",
    rlang::dots_list(..., calcite_dependency(), calcite_bindings())
  )

  class(res) <- c("calcite_component", class(res))
  res
}
#' Create a DropdownGroup component
#'
#'
#'
#'
#'
#' @details
#' ## Properties

#' The following properties are provided by this component:

#'  |Name          |Attribute      |Description                                                                                                                                                                              |Values                                   |Reflects to Attribute |
#'  |:-------------|:--------------|:----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|:----------------------------------------|:---------------------|
#'  |groupTitle    |group-title    |Specifies and displays a group title.                                                                                                                                                    |string                                   |TRUE                  |
#'  |selectionMode |selection-mode |Specifies the selection mode of the component, where:  `"multiple"` allows any number of selections,  `"single"` allows only one selection, and  `"none"` does not allow any selections. |"multiple" &#124; "none" &#124; "single" |TRUE                  |

#' ## Slots

#' The following slots are provided by this component:

#'  |Slot              |Description                                 |
#'  |:-----------------|:-------------------------------------------|
#'  |Default (unnamed) |A slot for adding `calcite-dropdown-item`s. |
#'
#' @param ... named attributes passed to `htmltools::tag()`
#' @export
#' @return an object of class `calcite_component` which is a subclass of `shiny.tag`
#' @references [Official Documentation](https://developers.arcgis.com/calcite-design-system/components/dropdown-group/)
#' @examples
#' calcite_dropdown_group()
calcite_dropdown_group <- function(...) {
  res <- htmltools::tag(
    "calcite-dropdown-group",
    rlang::dots_list(..., calcite_dependency(), calcite_bindings())
  )

  class(res) <- c("calcite_component", class(res))
  res
}
#' Create a DropdownItem component
#'
#'
#'
#'
#'
#' @details
#' ## Properties

#' The following properties are provided by this component:

#'  |Name        |Attribute     |Description                                                                                                                                        |Values                             |Reflects to Attribute |
#'  |:-----------|:-------------|:--------------------------------------------------------------------------------------------------------------------------------------------------|:----------------------------------|:---------------------|
#'  |disabled    |disabled      |When `true`, interaction is prevented and the component is displayed with lower opacity.                                                           |boolean                            |TRUE                  |
#'  |href        |href          |Specifies the URL of the linked resource, which can be set as an absolute or relative path.  Determines if the component will render as an anchor. |string                             |TRUE                  |
#'  |iconEnd     |icon-end      |Specifies an icon to display at the end of the component.                                                                                          |string                             |TRUE                  |
#'  |iconFlipRtl |icon-flip-rtl |Displays the `iconStart` and/or `iconEnd` as flipped when the element direction is right-to-left (`"rtl"`).                                        |"both" &#124; "end" &#124; "start" |TRUE                  |
#'  |iconStart   |icon-start    |Specifies an icon to display at the start of the component.                                                                                        |string                             |TRUE                  |
#'  |label       |label         |Accessible name for the component.                                                                                                                 |string                             |FALSE                 |
#'  |rel         |rel           |Specifies the relationship to the linked document defined in `href`.                                                                               |string                             |TRUE                  |
#'  |selected    |selected      |When `true`, the component is selected.                                                                                                            |boolean                            |TRUE                  |
#'  |target      |target        |Specifies the frame or window to open the linked document.                                                                                         |string                             |TRUE                  |

#' ## Events

#' The following events are observed by shiny:

#'  |Event                     |Description                           |
#'  |:-------------------------|:-------------------------------------|
#'  |calciteDropdownItemSelect |Fires when the component is selected. |

#' ## Slots

#' The following slots are provided by this component:

#'  |Slot              |Description             |
#'  |:-----------------|:-----------------------|
#'  |Default (unnamed) |A slot for adding text. |
#'
#' @param ... named attributes passed to `htmltools::tag()`
#' @export
#' @return an object of class `calcite_component` which is a subclass of `shiny.tag`
#' @references [Official Documentation](https://developers.arcgis.com/calcite-design-system/components/dropdown-item/)
#' @examples
#' calcite_dropdown_item()
calcite_dropdown_item <- function(...) {
  res <- htmltools::tag(
    "calcite-dropdown-item",
    rlang::dots_list(..., calcite_dependency(), calcite_bindings())
  )

  class(res) <- c("calcite_component", class(res))
  res
}
#' Create a Fab component
#'
#'
#'
#'
#'
#' @details
#' ## Properties

#' The following properties are provided by this component:

#'  |Name        |Attribute     |Description                                                                                  |Values                                                    |Reflects to Attribute |
#'  |:-----------|:-------------|:--------------------------------------------------------------------------------------------|:---------------------------------------------------------|:---------------------|
#'  |appearance  |appearance    |Specifies the appearance style of the component.                                             |"outline-fill" &#124; "solid"                             |TRUE                  |
#'  |disabled    |disabled      |When `true`, interaction is prevented and the component is displayed with lower opacity.     |boolean                                                   |TRUE                  |
#'  |icon        |icon          |Specifies an icon to display.                                                                |string                                                    |TRUE                  |
#'  |iconFlipRtl |icon-flip-rtl |When `true`, the icon will be flipped when the element direction is right-to-left (`"rtl"`). |boolean                                                   |TRUE                  |
#'  |kind        |kind          |Specifies the kind of the component, which will apply to border and background.              |"brand" &#124; "danger" &#124; "inverse" &#124; "neutral" |TRUE                  |
#'  |label       |label         |Accessible name for the component.                                                           |string                                                    |FALSE                 |
#'  |loading     |loading       |When `true`, a busy indicator is displayed.                                                  |boolean                                                   |TRUE                  |
#'  |scale       |scale         |Specifies the size of the component.                                                         |"l" &#124; "m" &#124; "s"                                 |TRUE                  |
#'  |text        |text          |Specifies text to accompany the component's icon.                                            |string                                                    |FALSE                 |
#'  |textEnabled |text-enabled  |When `true`, displays the `text` value in the component.                                     |boolean                                                   |TRUE                  |
#'
#' @param ... named attributes passed to `htmltools::tag()`
#' @export
#' @return an object of class `calcite_component` which is a subclass of `shiny.tag`
#' @references [Official Documentation](https://developers.arcgis.com/calcite-design-system/components/fab/)
#' @examples
#' calcite_fab()
calcite_fab <- function(...) {
  res <- htmltools::tag(
    "calcite-fab",
    rlang::dots_list(..., calcite_dependency(), calcite_bindings())
  )

  class(res) <- c("calcite_component", class(res))
  res
}
#' Create a Filter component
#'
#'
#'
#'
#'
#' @details
#' ## Properties

#' The following properties are provided by this component:

#'  |Name             |Attribute   |Description                                                                                                                                                                                                                                   |Values                    |Reflects to Attribute |
#'  |:----------------|:-----------|:---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|:-------------------------|:---------------------|
#'  |disabled         |disabled    |When `true`, interaction is prevented and the component is displayed with lower opacity.                                                                                                                                                      |boolean                   |TRUE                  |
#'  |filteredItems    |NA          |The component's resulting items after filtering.                                                                                                                                                                                              |Check API reference       |FALSE                 |
#'  |filterProps      |NA          |Specifies the properties to match against when filtering. This will only apply when `value` is an object. If not set, all properties will be matched.                                                                                         |Check API reference       |FALSE                 |
#'  |items            |NA          |Defines the items to filter. The component uses the values as the starting point, and returns items  that contain the string entered in the input, using a partial match and recursive search.  This property is needed to conduct filtering. |Check API reference       |FALSE                 |
#'  |label            |label       |Specifies an accessible name for the component.                                                                                                                                                                                               |string                    |FALSE                 |
#'  |messageOverrides |NA          |Use this property to override individual strings used by the component.                                                                                                                                                                       |Check API reference       |FALSE                 |
#'  |placeholder      |placeholder |Specifies placeholder text for the input element.                                                                                                                                                                                             |string                    |FALSE                 |
#'  |scale            |scale       |Specifies the size of the component.                                                                                                                                                                                                          |"l" &#124; "m" &#124; "s" |TRUE                  |
#'  |value            |value       |The component's value.                                                                                                                                                                                                                        |string                    |FALSE                 |

#' ## Events

#' The following events are observed by shiny:

#'  |Event               |Description                         |
#'  |:-------------------|:-----------------------------------|
#'  |calciteFilterChange |Fires when the filter text changes. |
#'
#' @param ... named attributes passed to `htmltools::tag()`
#' @export
#' @return an object of class `calcite_component` which is a subclass of `shiny.tag`
#' @references [Official Documentation](https://developers.arcgis.com/calcite-design-system/components/filter/)
#' @examples
#' calcite_filter()
calcite_filter <- function(...) {
  res <- htmltools::tag(
    "calcite-filter",
    rlang::dots_list(..., calcite_dependency(), calcite_bindings())
  )

  class(res) <- c("calcite_component", class(res))
  res
}
#' Create a Flow component
#'
#'
#'
#'
#'
#' @details
#' ## Slots

#' The following slots are provided by this component:

#'  |Slot              |Description                                                      |
#'  |:-----------------|:----------------------------------------------------------------|
#'  |Default (unnamed) |A slot for adding `calcite-flow-item` elements to the component. |
#'
#' @param ... named attributes passed to `htmltools::tag()`
#' @export
#' @return an object of class `calcite_component` which is a subclass of `shiny.tag`
#' @references [Official Documentation](https://developers.arcgis.com/calcite-design-system/components/flow/)
#' @examples
#' calcite_flow()
calcite_flow <- function(...) {
  res <- htmltools::tag(
    "calcite-flow",
    rlang::dots_list(..., calcite_dependency(), calcite_bindings())
  )

  class(res) <- c("calcite_component", class(res))
  res
}
#' Create a FlowItem component
#'
#'
#'
#'
#'
#' @details
#' ## Properties

#' The following properties are provided by this component:

#'  |Name               |Attribute           |Description                                                                                                                                                                                                                                                                                                                                                                   |Values                                         |Reflects to Attribute |
#'  |:------------------|:-------------------|:-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|:----------------------------------------------|:---------------------|
#'  |beforeBack         |NA                  |When provided, the method will be called before it is removed from its parent `calcite-flow`.                                                                                                                                                                                                                                                                                 |Check API reference                            |FALSE                 |
#'  |beforeClose        |NA                  |Passes a function to run before the component closes.                                                                                                                                                                                                                                                                                                                         |Check API reference                            |FALSE                 |
#'  |closable           |closable            |When `true`, displays a close button in the trailing side of the component's header.                                                                                                                                                                                                                                                                                          |boolean                                        |TRUE                  |
#'  |closed             |closed              |When `true`, the component will be hidden.                                                                                                                                                                                                                                                                                                                                    |boolean                                        |TRUE                  |
#'  |collapsed          |collapsed           |When `true`, hides the component's content area.                                                                                                                                                                                                                                                                                                                              |boolean                                        |TRUE                  |
#'  |collapsible        |collapsible         |When `true`, the component is collapsible.                                                                                                                                                                                                                                                                                                                                    |boolean                                        |TRUE                  |
#'  |description        |description         |A description for the component.                                                                                                                                                                                                                                                                                                                                              |string                                         |FALSE                 |
#'  |disabled           |disabled            |When `true`, interaction is prevented and the component is displayed with lower opacity.                                                                                                                                                                                                                                                                                      |boolean                                        |TRUE                  |
#'  |heading            |heading             |The component header text.                                                                                                                                                                                                                                                                                                                                                    |string                                         |FALSE                 |
#'  |headingLevel       |heading-level       |Specifies the heading level of the component's `heading` for proper document structure, without affecting visual styling.                                                                                                                                                                                                                                                     |1 &#124; 2 &#124; 3 &#124; 4 &#124; 5 &#124; 6 |TRUE                  |
#'  |loading            |loading             |When `true`, a busy indicator is displayed.                                                                                                                                                                                                                                                                                                                                   |boolean                                        |TRUE                  |
#'  |menuOpen           |menu-open           |When `true`, the action menu items in the `header-menu-actions` slot are open.                                                                                                                                                                                                                                                                                                |boolean                                        |TRUE                  |
#'  |messageOverrides   |NA                  |Use this property to override individual strings used by the component.                                                                                                                                                                                                                                                                                                       |Check API reference                            |FALSE                 |
#'  |overlayPositioning |overlay-positioning |Determines the type of positioning to use for the overlaid content.  Using `"absolute"` will work for most cases. The component will be positioned inside of overflowing parent containers and will affect the container's layout.  `"fixed"` should be used to escape an overflowing parent container, or when the reference element's `position` CSS property is `"fixed"`. |"absolute" &#124; "fixed"                      |TRUE                  |
#'  |scale              |scale               |Specifies the size of the component.                                                                                                                                                                                                                                                                                                                                          |"l" &#124; "m" &#124; "s"                      |TRUE                  |
#'  |selected           |selected            |When true, flow-item is displayed within a parent flow.                                                                                                                                                                                                                                                                                                                       |boolean                                        |TRUE                  |
#'  |showBackButton     |show-back-button    |When `true`, displays a back button in the component's header.                                                                                                                                                                                                                                                                                                                |boolean                                        |FALSE                 |

#' ## Events

#' The following events are observed by shiny:

#'  |Event                 |Description                                |
#'  |:---------------------|:------------------------------------------|
#'  |calciteFlowItemBack   |Fires when the back button is clicked.     |
#'  |calciteFlowItemClose  |Fires when the close button is clicked.    |
#'  |calciteFlowItemScroll |Fires when the content is scrolled.        |
#'  |calciteFlowItemToggle |Fires when the collapse button is clicked. |

#' ## Slots

#' The following slots are provided by this component:

#'  |Slot                 |Description                                                                                                                       |
#'  |:--------------------|:---------------------------------------------------------------------------------------------------------------------------------|
#'  |Default (unnamed)    |A slot for adding custom content.                                                                                                 |
#'  |action-bar           |A slot for adding a `calcite-action-bar` to the component.                                                                        |
#'  |alerts               |A slot for adding `calcite-alert`s to the component.                                                                              |
#'  |content-top          |A slot for adding content above the unnamed (default) slot and below the action-bar slot (if populated).                          |
#'  |content-bottom       |A slot for adding content below the unnamed (default) slot and above the footer slot (if populated)                               |
#'  |header-actions-start |A slot for adding `calcite-action`s or content to the start side of the component's header.                                       |
#'  |header-actions-end   |A slot for adding `calcite-action`s or content to the end side of the component's header.                                         |
#'  |header-content       |A slot for adding custom content to the component's header.                                                                       |
#'  |header-menu-actions  |A slot for adding an overflow menu with `calcite-action`s inside a `calcite-dropdown`.                                            |
#'  |fab                  |A slot for adding a `calcite-fab` (floating action button) to perform an action.                                                  |
#'  |footer               |A slot for adding custom content to the component's footer. Should not be used with the `"footer-start"` or `"footer-end"` slots. |
#'  |footer-actions       |[Deprecated] Use the `"footer"` slot instead. A slot for adding `calcite-button`s to the component's footer.                      |
#'  |footer-end           |A slot for adding a trailing footer custom content. Should not be used with the `"footer"` slot.                                  |
#'  |footer-start         |A slot for adding a leading footer custom content. Should not be used with the `"footer"` slot.                                   |
#'
#' @param ... named attributes passed to `htmltools::tag()`
#' @export
#' @return an object of class `calcite_component` which is a subclass of `shiny.tag`
#' @references [Official Documentation](https://developers.arcgis.com/calcite-design-system/components/flow-item/)
#' @examples
#' calcite_flow_item()
calcite_flow_item <- function(...) {
  res <- htmltools::tag(
    "calcite-flow-item",
    rlang::dots_list(..., calcite_dependency(), calcite_bindings())
  )

  class(res) <- c("calcite_component", class(res))
  res
}
#' Create a Icon component
#'
#'
#'
#'
#'
#' @details
#' ## Properties

#' The following properties are provided by this component:

#'  |Name      |Attribute  |Description                                                                                       |Values                    |Reflects to Attribute |
#'  |:---------|:----------|:-------------------------------------------------------------------------------------------------|:-------------------------|:---------------------|
#'  |flipRtl   |flip-rtl   |When `true`, the icon will be flipped when the element direction is right-to-left (`"rtl"`).      |boolean                   |TRUE                  |
#'  |icon      |icon       |Displays a specific icon.                                                                         |string                    |TRUE                  |
#'  |preload   |preload    |When true, it loads preloads the icon data.                                                       |boolean                   |TRUE                  |
#'  |scale     |scale      |Specifies the size of the component.                                                              |"l" &#124; "m" &#124; "s" |TRUE                  |
#'  |textLabel |text-label |Accessible name for the component.  It is recommended to set this value if your icon is semantic. |string                    |FALSE                 |
#'
#' @param ... named attributes passed to `htmltools::tag()`
#' @export
#' @return an object of class `calcite_component` which is a subclass of `shiny.tag`
#' @references [Official Documentation](https://developers.arcgis.com/calcite-design-system/components/icon/)
#' @examples
#' calcite_icon()
calcite_icon <- function(...) {
  res <- htmltools::tag(
    "calcite-icon",
    rlang::dots_list(..., calcite_dependency(), calcite_bindings())
  )

  class(res) <- c("calcite_component", class(res))
  res
}
#' Create a InlineEditable component
#'
#'
#'
#'
#'
#' @details
#' ## Properties

#' The following properties are provided by this component:

#'  |Name             |Attribute       |Description                                                                                                                                                  |Values                    |Reflects to Attribute |
#'  |:----------------|:---------------|:------------------------------------------------------------------------------------------------------------------------------------------------------------|:-------------------------|:---------------------|
#'  |afterConfirm     |NA              |Specifies a callback to be executed prior to disabling editing via the controls. When provided, the component's loading state will be handled automatically. |Check API reference       |FALSE                 |
#'  |controls         |controls        |When `true` and `editingEnabled` is `true`, displays save and cancel controls on the component.                                                              |boolean                   |TRUE                  |
#'  |disabled         |disabled        |When `true`, interaction is prevented and the component is displayed with lower opacity.                                                                     |boolean                   |TRUE                  |
#'  |editingEnabled   |editing-enabled |When `true`, inline editing is enabled on the component.                                                                                                     |boolean                   |TRUE                  |
#'  |loading          |loading         |When `true`, a busy indicator is displayed.                                                                                                                  |boolean                   |TRUE                  |
#'  |messageOverrides |NA              |Use this property to override individual strings used by the component.                                                                                      |Check API reference       |FALSE                 |
#'  |scale            |scale           |Specifies the size of the component. Defaults to the scale of the wrapped `calcite-input` or the scale of the closest wrapping component with a set scale.   |"l" &#124; "m" &#124; "s" |TRUE                  |

#' ## Events

#' The following events are observed by shiny:

#'  |Event                            |Description                                                    |
#'  |:--------------------------------|:--------------------------------------------------------------|
#'  |calciteInlineEditableEditCancel  |Emits when the component's "cancel editing" button is pressed. |
#'  |calciteInlineEditableEditConfirm |Emits when the component's "confirm edits" button is pressed.  |

#' ## Slots

#' The following slots are provided by this component:

#'  |Slot              |Description                          |
#'  |:-----------------|:------------------------------------|
#'  |Default (unnamed) |A slot for adding a `calcite-input`. |
#'
#' @param ... named attributes passed to `htmltools::tag()`
#' @export
#' @return an object of class `calcite_component` which is a subclass of `shiny.tag`
#' @references [Official Documentation](https://developers.arcgis.com/calcite-design-system/components/inline-editable/)
#' @examples
#' calcite_inline_editable()
calcite_inline_editable <- function(...) {
  res <- htmltools::tag(
    "calcite-inline-editable",
    rlang::dots_list(..., calcite_dependency(), calcite_bindings())
  )

  class(res) <- c("calcite_component", class(res))
  res
}
#' Create a Input component
#'
#'
#'
#'
#'
#' @details
#' ## Properties

#' The following properties are provided by this component:

#'  |Name              |Attribute          |Description                                                                                                                                                                                                               |Values                                                                                                                                                                                                                                           |Reflects to Attribute |
#'  |:-----------------|:------------------|:-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|:------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|:---------------------|
#'  |accept            |accept             |Specifies a comma separated list of unique file type specifiers for limiting accepted file types. This property only has an effect when `type` is "file". Read the native attribute's documentation on MDN for more info. |string                                                                                                                                                                                                                                           |FALSE                 |
#'  |alignment         |alignment          |Specifies the text alignment of the component's value.                                                                                                                                                                    |"end" &#124; "start"                                                                                                                                                                                                                             |TRUE                  |
#'  |autocomplete      |NA                 |Specifies the type of content to autocomplete, for use in forms. Read the native attribute's documentation on MDN for more info.                                                                                          |AutoFill                                                                                                                                                                                                                                         |FALSE                 |
#'  |clearable         |clearable          |When `true`, a clear button is displayed when the component has a value. The clear button shows by default for `"search"`, `"time"`, and `"date"` types, and will not display for the `"textarea"` type.                  |boolean                                                                                                                                                                                                                                          |TRUE                  |
#'  |disabled          |disabled           |When `true`, interaction is prevented and the component is displayed with lower opacity.                                                                                                                                  |boolean                                                                                                                                                                                                                                          |TRUE                  |
#'  |files             |NA                 |When `type` is `"file"`, specifies the component's selected files.                                                                                                                                                        |FileList                                                                                                                                                                                                                                         |FALSE                 |
#'  |form              |form               |The `id` of the form that will be associated with the component.  When not set, the component will be associated with its ancestor form element, if any.                                                                  |string                                                                                                                                                                                                                                           |TRUE                  |
#'  |groupSeparator    |group-separator    |When `true`, number values are displayed with a group separator corresponding to the language and country format.                                                                                                         |boolean                                                                                                                                                                                                                                          |TRUE                  |
#'  |icon              |icon               |When `true`, shows a default recommended icon. Alternatively, pass a Calcite UI Icon name to display a specific icon.                                                                                                     |boolean &#124; string                                                                                                                                                                                                                            |TRUE                  |
#'  |iconFlipRtl       |icon-flip-rtl      |When `true`, the icon will be flipped when the element direction is right-to-left (`"rtl"`).                                                                                                                              |boolean                                                                                                                                                                                                                                          |TRUE                  |
#'  |label             |label              |Accessible name for the component.                                                                                                                                                                                        |string                                                                                                                                                                                                                                           |FALSE                 |
#'  |loading           |loading            |When `true`, a busy indicator is displayed.                                                                                                                                                                               |boolean                                                                                                                                                                                                                                          |TRUE                  |
#'  |max               |max                |When the component resides in a form, specifies the maximum value for `type="number"`.                                                                                                                                    |number                                                                                                                                                                                                                                           |TRUE                  |
#'  |maxLength         |max-length         |When the component resides in a form, specifies the maximum length of text for the component's value.                                                                                                                     |number                                                                                                                                                                                                                                           |TRUE                  |
#'  |messageOverrides  |NA                 |Use this property to override individual strings used by the component.                                                                                                                                                   |Check API reference                                                                                                                                                                                                                              |FALSE                 |
#'  |min               |min                |When the component resides in a form, specifies the minimum value for `type="number"`.                                                                                                                                    |number                                                                                                                                                                                                                                           |TRUE                  |
#'  |minLength         |min-length         |When the component resides in a form, specifies the minimum length of text for the component's value.                                                                                                                     |number                                                                                                                                                                                                                                           |TRUE                  |
#'  |multiple          |multiple           |When `true`, the component can accept more than one value. This property only has an effect when `type` is "email" or "file". Read the native attribute's documentation on MDN for more info.                             |boolean                                                                                                                                                                                                                                          |FALSE                 |
#'  |name              |name               |Specifies the name of the component.  Required to pass the component's `value` on form submission.                                                                                                                        |string                                                                                                                                                                                                                                           |TRUE                  |
#'  |numberButtonType  |number-button-type |Specifies the placement of the buttons for `type="number"`.                                                                                                                                                               |"horizontal" &#124; "none" &#124; "vertical"                                                                                                                                                                                                     |TRUE                  |
#'  |numberingSystem   |numbering-system   |Specifies the Unicode numeral system used by the component for localization.                                                                                                                                              |"arab" &#124; "arabext" &#124; "latn"                                                                                                                                                                                                            |TRUE                  |
#'  |pattern           |pattern            |When the component resides in a form, specifies a regular expression (regex) pattern the component's `value` must match for validation. Read the native attribute's documentation on MDN for more info.                   |string                                                                                                                                                                                                                                           |FALSE                 |
#'  |placeholder       |placeholder        |Specifies placeholder text for the component.                                                                                                                                                                             |string                                                                                                                                                                                                                                           |FALSE                 |
#'  |prefixText        |prefix-text        |Adds text to the start of the component.                                                                                                                                                                                  |string                                                                                                                                                                                                                                           |FALSE                 |
#'  |readOnly          |read-only          |When `true`, the component's value can be read, but cannot be modified.                                                                                                                                                   |boolean                                                                                                                                                                                                                                          |TRUE                  |
#'  |required          |required           |When `true` and the component resides in a form, the component must have a value in order for the form to submit.                                                                                                         |boolean                                                                                                                                                                                                                                          |TRUE                  |
#'  |scale             |scale              |Specifies the size of the component.                                                                                                                                                                                      |"l" &#124; "m" &#124; "s"                                                                                                                                                                                                                        |TRUE                  |
#'  |status            |status             |Specifies the status of the input field, which determines message and icons.                                                                                                                                              |"idle" &#124; "invalid" &#124; "valid"                                                                                                                                                                                                           |TRUE                  |
#'  |step              |step               |Specifies the granularity the component's `value` must adhere to.                                                                                                                                                         |"any" &#124; number                                                                                                                                                                                                                              |TRUE                  |
#'  |suffixText        |suffix-text        |Adds text to the end of the component.                                                                                                                                                                                    |string                                                                                                                                                                                                                                           |FALSE                 |
#'  |type              |type               |Check API reference                                                                                                                                                                                                       |"color" &#124; "date" &#124; "datetime-local" &#124; "email" &#124; "file" &#124; "image" &#124; "month" &#124; "number" &#124; "password" &#124; "search" &#124; "tel" &#124; "text" &#124; "textarea" &#124; "time" &#124; "url" &#124; "week" |TRUE                  |
#'  |validationIcon    |validation-icon    |Specifies the validation icon to display under the component.                                                                                                                                                             |boolean &#124; string                                                                                                                                                                                                                            |TRUE                  |
#'  |validationMessage |validation-message |Specifies the validation message to display under the component.                                                                                                                                                          |string                                                                                                                                                                                                                                           |FALSE                 |
#'  |validity          |NA                 |The current validation state of the component.                                                                                                                                                                            |Check API reference                                                                                                                                                                                                                              |FALSE                 |
#'  |value             |value              |The component's value.                                                                                                                                                                                                    |string                                                                                                                                                                                                                                           |FALSE                 |

#' ## Events

#' The following events are observed by shiny:

#'  |Event              |Description                                           |
#'  |:------------------|:-----------------------------------------------------|
#'  |calciteInputChange |Fires each time a new `value` is typed and committed. |
#'  |calciteInputInput  |Fires each time a new `value` is typed.               |

#' ## Slots

#' The following slots are provided by this component:

#'  |Slot   |Description                                                      |
#'  |:------|:----------------------------------------------------------------|
#'  |action |A slot for positioning a `calcite-button` next to the component. |
#'
#' @param ... named attributes passed to `htmltools::tag()`
#' @export
#' @return an object of class `calcite_component` which is a subclass of `shiny.tag`
#' @references [Official Documentation](https://developers.arcgis.com/calcite-design-system/components/input/)
#' @examples
#' calcite_input()
calcite_input <- function(...) {
  res <- htmltools::tag(
    "calcite-input",
    rlang::dots_list(..., calcite_dependency(), calcite_bindings())
  )

  class(res) <- c("calcite_component", class(res))
  res
}
#' Create a InputDatePicker component
#'
#'
#'
#'
#'
#' @details
#' ## Properties

#' The following properties are provided by this component:

#'  |Name                       |Attribute                    |Description                                                                                                                                                                                                                                                                                                                                                                   |Values                                                                                              |Reflects to Attribute |
#'  |:--------------------------|:----------------------------|:-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|:---------------------------------------------------------------------------------------------------|:---------------------|
#'  |disabled                   |disabled                     |When `true`, interaction is prevented and the component is displayed with lower opacity.                                                                                                                                                                                                                                                                                      |boolean                                                                                             |TRUE                  |
#'  |flipPlacements             |NA                           |Specifies the component's fallback `calcite-date-picker` `placement` when it's initial or specified `placement` has insufficient space available.                                                                                                                                                                                                                             |Check API reference                                                                                 |FALSE                 |
#'  |focusTrapDisabled          |focus-trap-disabled          |When `true`, prevents focus trapping.                                                                                                                                                                                                                                                                                                                                         |boolean                                                                                             |TRUE                  |
#'  |form                       |form                         |The `id` of the form that will be associated with the component.  When not set, the component will be associated with its ancestor form element, if any.                                                                                                                                                                                                                      |string                                                                                              |TRUE                  |
#'  |headingLevel               |heading-level                |Specifies the heading level of the component's `heading` for proper document structure, without affecting visual styling.                                                                                                                                                                                                                                                     |1 &#124; 2 &#124; 3 &#124; 4 &#124; 5 &#124; 6                                                      |TRUE                  |
#'  |layout                     |layout                       |Defines the layout of the component.                                                                                                                                                                                                                                                                                                                                          |"horizontal" &#124; "vertical"                                                                      |TRUE                  |
#'  |max                        |max                          |When the component resides in a form, specifies the latest allowed date ("yyyy-mm-dd").                                                                                                                                                                                                                                                                                       |string                                                                                              |TRUE                  |
#'  |maxAsDate                  |NA                           |Specifies the latest allowed date as a full date object.                                                                                                                                                                                                                                                                                                                      |Date                                                                                                |FALSE                 |
#'  |messageOverrides           |NA                           |Use this property to override individual strings used by the component.                                                                                                                                                                                                                                                                                                       |Check API reference                                                                                 |FALSE                 |
#'  |min                        |min                          |When the component resides in a form, specifies the earliest allowed date ("yyyy-mm-dd").                                                                                                                                                                                                                                                                                     |string                                                                                              |TRUE                  |
#'  |minAsDate                  |NA                           |Specifies the earliest allowed date as a full date object.                                                                                                                                                                                                                                                                                                                    |Date                                                                                                |FALSE                 |
#'  |monthStyle                 |month-style                  |Specifies the monthStyle used by the component.                                                                                                                                                                                                                                                                                                                               |"abbreviated" &#124; "wide"                                                                         |FALSE                 |
#'  |name                       |name                         |Specifies the name of the component.  Required to pass the component's `value` on form submission.                                                                                                                                                                                                                                                                            |string                                                                                              |TRUE                  |
#'  |numberingSystem            |numbering-system             |Specifies the Unicode numeral system used by the component for localization. This property cannot be dynamically changed.                                                                                                                                                                                                                                                     |"arab" &#124; "arabext" &#124; "latn"                                                               |TRUE                  |
#'  |open                       |open                         |When `true`, displays the `calcite-date-picker` component.                                                                                                                                                                                                                                                                                                                    |boolean                                                                                             |TRUE                  |
#'  |overlayPositioning         |overlay-positioning          |Determines the type of positioning to use for the overlaid content.  Using `"absolute"` will work for most cases. The component will be positioned inside of overflowing parent containers and will affect the container's layout.  `"fixed"` should be used to escape an overflowing parent container, or when the reference element's `position` CSS property is `"fixed"`. |"absolute" &#124; "fixed"                                                                           |TRUE                  |
#'  |placement                  |placement                    |Specifies the placement of the `calcite-date-picker` relative to the component.                                                                                                                                                                                                                                                                                               |"bottom" &#124; "bottom-end" &#124; "bottom-start" &#124; "top" &#124; "top-end" &#124; "top-start" |TRUE                  |
#'  |proximitySelectionDisabled |proximity-selection-disabled |When `true`, disables the default behavior on the third click of narrowing or extending the range. Instead starts a new range.                                                                                                                                                                                                                                                |boolean                                                                                             |FALSE                 |
#'  |range                      |range                        |When `true`, activates a range for the component.                                                                                                                                                                                                                                                                                                                             |boolean                                                                                             |TRUE                  |
#'  |readOnly                   |read-only                    |When `true`, the component's value can be read, but controls are not accessible and the value cannot be modified.                                                                                                                                                                                                                                                             |boolean                                                                                             |TRUE                  |
#'  |required                   |required                     |When `true` and the component resides in a form, the component must have a value in order for the form to submit.                                                                                                                                                                                                                                                             |boolean                                                                                             |TRUE                  |
#'  |scale                      |scale                        |Specifies the size of the component.                                                                                                                                                                                                                                                                                                                                          |"l" &#124; "m" &#124; "s"                                                                           |TRUE                  |
#'  |status                     |status                       |Specifies the status of the input field, which determines message and icons.                                                                                                                                                                                                                                                                                                  |"idle" &#124; "invalid" &#124; "valid"                                                              |TRUE                  |
#'  |validationIcon             |validation-icon              |Specifies the validation icon to display under the component.                                                                                                                                                                                                                                                                                                                 |boolean &#124; string                                                                               |TRUE                  |
#'  |validationMessage          |validation-message           |Specifies the validation message to display under the component.                                                                                                                                                                                                                                                                                                              |string                                                                                              |FALSE                 |
#'  |validity                   |NA                           |The current validation state of the component.                                                                                                                                                                                                                                                                                                                                |Check API reference                                                                                 |FALSE                 |
#'  |value                      |value                        |Selected date as a string in ISO format (`"yyyy-mm-dd"`).                                                                                                                                                                                                                                                                                                                     |Check API reference                                                                                 |FALSE                 |
#'  |valueAsDate                |NA                           |The component's value as a full date object.                                                                                                                                                                                                                                                                                                                                  |Check API reference                                                                                 |FALSE                 |

#' ## Events

#' The following events are observed by shiny:

#'  |Event                             |Description                                                                                              |
#'  |:---------------------------------|:--------------------------------------------------------------------------------------------------------|
#'  |calciteInputDatePickerBeforeClose |Fires when the component is requested to be closed and before the closing transition begins.             |
#'  |calciteInputDatePickerBeforeOpen  |Fires when the component is added to the DOM but not rendered, and before the opening transition begins. |
#'  |calciteInputDatePickerChange      |Fires when the component's `value` changes.                                                              |
#'  |calciteInputDatePickerClose       |Fires when the component is closed and animation is complete.                                            |
#'  |calciteInputDatePickerOpen        |Fires when the component is open and animation is complete.                                              |
#'
#' @param ... named attributes passed to `htmltools::tag()`
#' @export
#' @return an object of class `calcite_component` which is a subclass of `shiny.tag`
#' @references [Official Documentation](https://developers.arcgis.com/calcite-design-system/components/input-date-picker/)
#' @examples
#' calcite_input_date_picker()
calcite_input_date_picker <- function(...) {
  res <- htmltools::tag(
    "calcite-input-date-picker",
    rlang::dots_list(..., calcite_dependency(), calcite_bindings())
  )

  class(res) <- c("calcite_component", class(res))
  res
}


#' Create a InputTimePicker component
#'
#'
#'
#'
#'
#' @details
#' ## Properties

#' The following properties are provided by this component:

#'  |Name               |Attribute           |Description                                                                                                                                                                                                                                                                                                                                                                   |Values                                                                                                                                                                                                                                                                                                                                                                                          |Reflects to Attribute |
#'  |:------------------|:-------------------|:-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|:-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|:---------------------|
#'  |disabled           |disabled            |When `true`, interaction is prevented and the component is displayed with lower opacity.                                                                                                                                                                                                                                                                                      |boolean                                                                                                                                                                                                                                                                                                                                                                                         |TRUE                  |
#'  |focusTrapDisabled  |focus-trap-disabled |When `true`, prevents focus trapping.                                                                                                                                                                                                                                                                                                                                         |boolean                                                                                                                                                                                                                                                                                                                                                                                         |TRUE                  |
#'  |form               |form                |The `id` of the form that will be associated with the component.  When not set, the component will be associated with its ancestor form element, if any.                                                                                                                                                                                                                      |string                                                                                                                                                                                                                                                                                                                                                                                          |TRUE                  |
#'  |hourFormat         |hour-format         |Specifies the component's hour format, where:  `"user"` displays the user's locale format, `"12"` displays a 12-hour format, and `"24"` displays a 24-hour format.                                                                                                                                                                                                            |"12" &#124; "24" &#124; "user"                                                                                                                                                                                                                                                                                                                                                                  |TRUE                  |
#'  |max                |max                 |When the component resides in a form, specifies the maximum value.                                                                                                                                                                                                                                                                                                            |string                                                                                                                                                                                                                                                                                                                                                                                          |TRUE                  |
#'  |messageOverrides   |NA                  |Use this property to override individual strings used by the component.                                                                                                                                                                                                                                                                                                       |Check API reference                                                                                                                                                                                                                                                                                                                                                                             |FALSE                 |
#'  |min                |min                 |When the component resides in a form, specifies the minimum value.                                                                                                                                                                                                                                                                                                            |string                                                                                                                                                                                                                                                                                                                                                                                          |TRUE                  |
#'  |name               |name                |Specifies the name of the component on form submission.                                                                                                                                                                                                                                                                                                                       |string                                                                                                                                                                                                                                                                                                                                                                                          |FALSE                 |
#'  |numberingSystem    |numbering-system    |Specifies the Unicode numeral system used by the component for localization.                                                                                                                                                                                                                                                                                                  |"arab" &#124; "arabext" &#124; "latn"                                                                                                                                                                                                                                                                                                                                                           |FALSE                 |
#'  |open               |open                |When `true`, displays the `calcite-time-picker` component.                                                                                                                                                                                                                                                                                                                    |boolean                                                                                                                                                                                                                                                                                                                                                                                         |TRUE                  |
#'  |overlayPositioning |overlay-positioning |Determines the type of positioning to use for the overlaid content.  Using `"absolute"` will work for most cases. The component will be positioned inside of overflowing parent containers and will affect the container's layout.  `"fixed"` should be used to escape an overflowing parent container, or when the reference element's `position` CSS property is `"fixed"`. |"absolute" &#124; "fixed"                                                                                                                                                                                                                                                                                                                                                                       |FALSE                 |
#'  |placement          |placement           |Determines where the popover will be positioned relative to the input.                                                                                                                                                                                                                                                                                                        |"auto" &#124; "auto-end" &#124; "auto-start" &#124; "bottom" &#124; "bottom-end" &#124; "bottom-start" &#124; "leading" &#124; "leading-end" &#124; "leading-start" &#124; "left" &#124; "left-end" &#124; "left-start" &#124; "right" &#124; "right-end" &#124; "right-start" &#124; "top" &#124; "top-end" &#124; "top-start" &#124; "trailing" &#124; "trailing-end" &#124; "trailing-start" |TRUE                  |
#'  |readOnly           |read-only           |When `true`, the component's value can be read, but controls are not accessible and the value cannot be modified.                                                                                                                                                                                                                                                             |boolean                                                                                                                                                                                                                                                                                                                                                                                         |TRUE                  |
#'  |required           |required            |When `true` and the component resides in a form, the component must have a value in order for the form to submit.                                                                                                                                                                                                                                                             |boolean                                                                                                                                                                                                                                                                                                                                                                                         |TRUE                  |
#'  |scale              |scale               |Specifies the size of the component.                                                                                                                                                                                                                                                                                                                                          |"l" &#124; "m" &#124; "s"                                                                                                                                                                                                                                                                                                                                                                       |TRUE                  |
#'  |status             |status              |Specifies the status of the input field, which determines message and icons.                                                                                                                                                                                                                                                                                                  |"idle" &#124; "invalid" &#124; "valid"                                                                                                                                                                                                                                                                                                                                                          |TRUE                  |
#'  |step               |step                |Specifies the granularity the component's `value` must adhere to (in seconds).                                                                                                                                                                                                                                                                                                |number                                                                                                                                                                                                                                                                                                                                                                                          |FALSE                 |
#'  |validationIcon     |validation-icon     |Specifies the validation icon to display under the component.                                                                                                                                                                                                                                                                                                                 |boolean &#124; string                                                                                                                                                                                                                                                                                                                                                                           |TRUE                  |
#'  |validationMessage  |validation-message  |Specifies the validation message to display under the component.                                                                                                                                                                                                                                                                                                              |string                                                                                                                                                                                                                                                                                                                                                                                          |FALSE                 |
#'  |validity           |NA                  |The current validation state of the component.                                                                                                                                                                                                                                                                                                                                |Check API reference                                                                                                                                                                                                                                                                                                                                                                             |FALSE                 |
#'  |value              |value               |The time value in ISO (24-hour) format.                                                                                                                                                                                                                                                                                                                                       |string                                                                                                                                                                                                                                                                                                                                                                                          |FALSE                 |

#' ## Events

#' The following events are observed by shiny:

#'  |Event                             |Description                                                                                              |
#'  |:---------------------------------|:--------------------------------------------------------------------------------------------------------|
#'  |calciteInputTimePickerBeforeClose |Fires when the component is requested to be closed and before the closing transition begins.             |
#'  |calciteInputTimePickerBeforeOpen  |Fires when the component is added to the DOM but not rendered, and before the opening transition begins. |
#'  |calciteInputTimePickerChange      |Fires when the component's `value` is changes.                                                           |
#'  |calciteInputTimePickerClose       |Fires when the component is closed and animation is complete.                                            |
#'  |calciteInputTimePickerOpen        |Fires when the component is open and animation is complete.                                              |
#'
#' @param ... named attributes passed to `htmltools::tag()`
#' @export
#' @return an object of class `calcite_component` which is a subclass of `shiny.tag`
#' @references [Official Documentation](https://developers.arcgis.com/calcite-design-system/components/input-time-picker/)
#' @examples
#' calcite_input_time_picker()
calcite_input_time_picker <- function(...) {
  res <- htmltools::tag(
    "calcite-input-time-picker",
    rlang::dots_list(..., calcite_dependency(), calcite_bindings())
  )

  class(res) <- c("calcite_component", class(res))
  res
}
#' Create a InputTimeZone component
#'
#'
#'
#'
#'
#' @details
#' ## Properties

#' The following properties are provided by this component:

#'  |Name               |Attribute           |Description                                                                                                                                                                                                                                                                                                                                                                   |Values                                 |Reflects to Attribute |
#'  |:------------------|:-------------------|:-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|:--------------------------------------|:---------------------|
#'  |clearable          |clearable           |When `true`, an empty value (`null`) will be allowed as a `value`.  When `false`, an offset or name value is enforced, and clearing the input or blurring will restore the last valid `value`.                                                                                                                                                                                |boolean                                |TRUE                  |
#'  |disabled           |disabled            |When `true`, interaction is prevented and the component is displayed with lower opacity.                                                                                                                                                                                                                                                                                      |boolean                                |TRUE                  |
#'  |form               |form                |The `id` of the form that will be associated with the component.  When not set, the component will be associated with its ancestor form element, if any.                                                                                                                                                                                                                      |string                                 |TRUE                  |
#'  |maxItems           |max-items           |Specifies the component's maximum number of options to display before displaying a scrollbar.                                                                                                                                                                                                                                                                                 |number                                 |TRUE                  |
#'  |messageOverrides   |NA                  |Use this property to override individual strings used by the component.                                                                                                                                                                                                                                                                                                       |Check API reference                    |FALSE                 |
#'  |mode               |mode                |This specifies the type of `value` and the associated options presented to the user:  Using `"offset"` will provide options that show timezone offsets.  Using `"name"` will provide options that show the IANA time zone names.                                                                                                                                              |"name" &#124; "offset" &#124; "region" |TRUE                  |
#'  |name               |name                |Specifies the name of the component.  Required to pass the component's `value` on form submission.                                                                                                                                                                                                                                                                            |string                                 |TRUE                  |
#'  |offsetStyle        |offset-style        |Specifies how the offset will be displayed, where  `"user"` uses `UTC` or `GMT` depending on the user's locale, `"gmt"` always uses `GMT`, and `"utc"` always uses `UTC`.  This only applies to the `offset` mode.                                                                                                                                                            |"gmt" &#124; "user" &#124; "utc"       |TRUE                  |
#'  |open               |open                |When `true`, displays and positions the component.                                                                                                                                                                                                                                                                                                                            |boolean                                |TRUE                  |
#'  |overlayPositioning |overlay-positioning |Determines the type of positioning to use for the overlaid content.  Using `"absolute"` will work for most cases. The component will be positioned inside of overflowing parent containers and will affect the container's layout.  `"fixed"` should be used to escape an overflowing parent container, or when the reference element's `position` CSS property is `"fixed"`. |"absolute" &#124; "fixed"              |TRUE                  |
#'  |readOnly           |read-only           |When `true`, the component's value can be read, but controls are not accessible and the value cannot be modified.                                                                                                                                                                                                                                                             |boolean                                |TRUE                  |
#'  |referenceDate      |reference-date      |This `date` will be used as a reference to Daylight Savings Time when creating time zone item groups.  It can be either a Date instance or a string in ISO format (`"YYYY-MM-DD"`, `"YYYY-MM-DDTHH:MM:SS.SSSZ"`).                                                                                                                                                             |Date &#124; string                     |FALSE                 |
#'  |scale              |scale               |Specifies the size of the component.                                                                                                                                                                                                                                                                                                                                          |"l" &#124; "m" &#124; "s"              |TRUE                  |
#'  |status             |status              |Specifies the status of the input field, which determines message and icons.                                                                                                                                                                                                                                                                                                  |"idle" &#124; "invalid" &#124; "valid" |TRUE                  |
#'  |validationIcon     |validation-icon     |Specifies the validation icon to display under the component.                                                                                                                                                                                                                                                                                                                 |boolean &#124; string                  |TRUE                  |
#'  |validationMessage  |validation-message  |Specifies the validation message to display under the component.                                                                                                                                                                                                                                                                                                              |string                                 |FALSE                 |
#'  |validity           |NA                  |The current validation state of the component.                                                                                                                                                                                                                                                                                                                                |Check API reference                    |FALSE                 |
#'  |value              |value               |The component's value, where the value is the time zone offset or the difference, in minutes, between the selected time zone and UTC.  If no value is provided, the user's time zone offset will be selected by default.                                                                                                                                                      |string                                 |FALSE                 |

#' ## Events

#' The following events are observed by shiny:

#'  |Event                           |Description                                                                                              |
#'  |:-------------------------------|:--------------------------------------------------------------------------------------------------------|
#'  |calciteInputTimeZoneBeforeClose |Fires when the component is requested to be closed and before the closing transition begins.             |
#'  |calciteInputTimeZoneBeforeOpen  |Fires when the component is added to the DOM but not rendered, and before the opening transition begins. |
#'  |calciteInputTimeZoneChange      |Fires when the component's `value` changes.                                                              |
#'  |calciteInputTimeZoneClose       |Fires after the component is closed and animation is complete.                                           |
#'  |calciteInputTimeZoneOpen        |Fires after the component is opened and animation is complete.                                           |
#'
#' @param ... named attributes passed to `htmltools::tag()`
#' @export
#' @return an object of class `calcite_component` which is a subclass of `shiny.tag`
#' @references [Official Documentation](https://developers.arcgis.com/calcite-design-system/components/input-time-zone/)
#' @examples
#' calcite_input_time_zone()
calcite_input_time_zone <- function(...) {
  res <- htmltools::tag(
    "calcite-input-time-zone",
    rlang::dots_list(..., calcite_dependency(), calcite_bindings())
  )

  class(res) <- c("calcite_component", class(res))
  res
}


#' Create a List component
#'
#' A general purpose list that enables users to construct list items that conform to Calcite styling.
#'
#' @details
#' ## Properties

#' The following properties are provided by this component:

#'  |Name                |Attribute            |Description                                                                                                                                                                                                                                                                       |Values                                                           |Reflects to Attribute |
#'  |:-------------------|:--------------------|:---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|:----------------------------------------------------------------|:---------------------|
#'  |canPull             |NA                   |When provided, the method will be called to determine whether the element can  move from the list.                                                                                                                                                                                |(detail: ListDragDetail) => boolean                              |FALSE                 |
#'  |canPut              |NA                   |When provided, the method will be called to determine whether the element can be added from another list.                                                                                                                                                                         |(detail: ListDragDetail) => boolean                              |FALSE                 |
#'  |disabled            |disabled             |When `true`, interaction is prevented and the component is displayed with lower opacity.                                                                                                                                                                                          |boolean                                                          |TRUE                  |
#'  |displayMode         |display-mode         |Specifies the nesting behavior of `calcite-list-item`s, where  `"flat"` displays `calcite-list-item`s in a uniform list, and  `"nested"` displays `calcite-list-item`s under their parent element.   The parent component's behavior should follow throughout its child elements. |"flat" &#124; "nested"                                           |TRUE                  |
#'  |dragEnabled         |drag-enabled         |When `true`, `calcite-list-item`s are sortable via a draggable button.                                                                                                                                                                                                            |boolean                                                          |TRUE                  |
#'  |filteredData        |NA                   |The currently filtered `calcite-list-item` data.                                                                                                                                                                                                                                  |Check API reference                                              |FALSE                 |
#'  |filteredItems       |NA                   |The currently filtered `calcite-list-item`s.                                                                                                                                                                                                                                      |Check API reference                                              |FALSE                 |
#'  |filterEnabled       |filter-enabled       |When `true`, an input appears at the top of the component that can be used by end users to filter `calcite-list-item`s.                                                                                                                                                           |boolean                                                          |TRUE                  |
#'  |filterLabel         |filter-label         |Specifies an accessible name for the filter input field.                                                                                                                                                                                                                          |string                                                           |TRUE                  |
#'  |filterPlaceholder   |filter-placeholder   |Placeholder text for the component's filter input field.                                                                                                                                                                                                                          |string                                                           |TRUE                  |
#'  |filterPredicate     |NA                   |Specifies a function to handle filtering.                                                                                                                                                                                                                                         |(item: HTMLCalciteListItemElement) => boolean                    |FALSE                 |
#'  |filterProps         |NA                   |Specifies the properties to match against when filtering. If not set, all properties will be matched (label, description, metadata, value, group heading).                                                                                                                        |Check API reference                                              |FALSE                 |
#'  |filterText          |filter-text          |Text for the component's filter input field.                                                                                                                                                                                                                                      |string                                                           |TRUE                  |
#'  |group               |group                |The list's group identifier.  To drag elements from one list into another, both lists must have the same group value.                                                                                                                                                             |string                                                           |TRUE                  |
#'  |interactionMode     |interaction-mode     |Specifies the interaction mode of the component.  `"interactive"` allows interaction styling and pointer changes on hover  `"static"` does not allow interaction styling and pointer changes on hover  The `"static"` value should only be used when `selectionMode` is `"none"`. |"interactive" &#124; "static"                                    |TRUE                  |
#'  |label               |label                |Specifies an accessible name for the component.  When `dragEnabled` is `true` and multiple list sorting is enabled with `group`, specifies the component's name for dragging between lists.                                                                                       |string                                                           |FALSE                 |
#'  |loading             |loading              |When `true`, a busy indicator is displayed.                                                                                                                                                                                                                                       |boolean                                                          |TRUE                  |
#'  |messageOverrides    |NA                   |Use this property to override individual strings used by the component.                                                                                                                                                                                                           |Check API reference                                              |FALSE                 |
#'  |numberingSystem     |numbering-system     |Specifies the Unicode numeral system used by the component for localization.                                                                                                                                                                                                      |"arab" &#124; "arabext" &#124; "latn"                            |FALSE                 |
#'  |scale               |scale                |Specifies the size of the component.                                                                                                                                                                                                                                              |"l" &#124; "m" &#124; "s"                                        |TRUE                  |
#'  |selectedItems       |NA                   |The currently selected items.                                                                                                                                                                                                                                                     |Check API reference                                              |FALSE                 |
#'  |selectionAppearance |selection-appearance |Specifies the selection appearance - `"icon"` (displays a checkmark or dot) or `"border"` (displays a border).                                                                                                                                                                    |"border" &#124; "icon"                                           |TRUE                  |
#'  |selectionMode       |selection-mode       |Specifies the selection mode of the component, where:  `"multiple"` allows any number of selections,  `"single"` allows only one selection,  `"single-persist"` allows one selection and prevents de-selection, and  `"none"` does not allow any selections.                      |"multiple" &#124; "none" &#124; "single" &#124; "single-persist" |TRUE                  |

#' ## Events

#' The following events are observed by shiny:

#'  |Event                  |Description                                             |
#'  |:----------------------|:-------------------------------------------------------|
#'  |calciteListChange      |Fires when the component's selected items have changed. |
#'  |calciteListDragEnd     |Fires when the component's dragging has ended.          |
#'  |calciteListDragStart   |Fires when the component's dragging has started.        |
#'  |calciteListFilter      |Fires when the component's filter has changed.          |
#'  |calciteListOrderChange |Fires when the component's item order changes.          |

#' ## Slots

#' The following slots are provided by this component:

#'  |Slot                 |Description                                                                                     |
#'  |:--------------------|:-----------------------------------------------------------------------------------------------|
#'  |Default (unnamed)    |A slot for adding `calcite-list-item` and `calcite-list-item-group` elements.                   |
#'  |filter-actions-start |A slot for adding actionable `calcite-action` elements before the filter component.             |
#'  |filter-actions-end   |A slot for adding actionable `calcite-action` elements after the filter component.              |
#'  |filter-no-results    |When `filterEnabled` is `true`, a slot for adding content to display when no results are found. |
#'
#' @param ... named attributes passed to `htmltools::tag()`
#' @export
#' @return an object of class `calcite_component` which is a subclass of `shiny.tag`
#' @references [Official Documentation](https://developers.arcgis.com/calcite-design-system/components/list/)
#' @examples
#' calcite_list()
calcite_list <- function(...) {
  res <- htmltools::tag(
    "calcite-list",
    rlang::dots_list(..., calcite_dependency(), calcite_bindings())
  )

  class(res) <- c("calcite_component", class(res))
  res
}
#' Create a ListItem component
#'
#'
#'
#'
#'
#' @details
#' ## Properties

#' The following properties are provided by this component:

#'  |Name             |Attribute        |Description                                                                                                                                |Values                             |Reflects to Attribute |
#'  |:----------------|:----------------|:------------------------------------------------------------------------------------------------------------------------------------------|:----------------------------------|:---------------------|
#'  |closable         |closable         |When `true`, a close button is added to the component.                                                                                     |boolean                            |TRUE                  |
#'  |closed           |closed           |When `true`, hides the component.                                                                                                          |boolean                            |TRUE                  |
#'  |description      |description      |A description for the component. Displays below the label text.                                                                            |string                             |FALSE                 |
#'  |disabled         |disabled         |When `true`, interaction is prevented and the component is displayed with lower opacity.                                                   |boolean                            |TRUE                  |
#'  |dragDisabled     |drag-disabled    |When `true`, the item is not draggable.                                                                                                    |boolean                            |TRUE                  |
#'  |iconEnd          |icon-end         |Specifies an icon to display at the end of the component.                                                                                  |string                             |TRUE                  |
#'  |iconFlipRtl      |icon-flip-rtl    |Displays the `iconStart` and/or `iconEnd` as flipped when the element direction is right-to-left (`"rtl"`).                                |"both" &#124; "end" &#124; "start" |TRUE                  |
#'  |iconStart        |icon-start       |Specifies an icon to display at the start of the component.                                                                                |string                             |TRUE                  |
#'  |label            |label            |The label text of the component. Displays above the description text.                                                                      |string                             |FALSE                 |
#'  |messageOverrides |NA               |Use this property to override individual strings used by the component.                                                                    |Check API reference                |FALSE                 |
#'  |metadata         |NA               |Provides additional metadata to the component. Primary use is for a filter on the parent `calcite-list`.                                   |Check API reference                |FALSE                 |
#'  |open             |open             |When `true`, the item is open to show child components.                                                                                    |boolean                            |TRUE                  |
#'  |scale            |scale            |Specifies the size of the component.                                                                                                       |"l" &#124; "m" &#124; "s"          |TRUE                  |
#'  |selected         |selected         |When `true` and the parent `calcite-list`'s `selectionMode` is `"single"`, `"single-persist"', or `"multiple"`, the component is selected. |boolean                            |TRUE                  |
#'  |sortHandleOpen   |sort-handle-open |When `true`, displays and positions the sort handle.                                                                                       |boolean                            |TRUE                  |
#'  |unavailable      |unavailable      |When `true`, the component's content appears inactive.                                                                                     |boolean                            |TRUE                  |
#'  |value            |value            |The component's value.                                                                                                                     |any                                |FALSE                 |

#' ## Events

#' The following events are observed by shiny:

#'  |Event                                |Description                                                                                                |
#'  |:------------------------------------|:----------------------------------------------------------------------------------------------------------|
#'  |calciteListItemClose                 |Fires when the close button is clicked.                                                                    |
#'  |calciteListItemSelect                |Fires when the component is selected.                                                                      |
#'  |calciteListItemSortHandleBeforeClose |Fires when the sort handle is requested to be closed and before the closing transition begins.             |
#'  |calciteListItemSortHandleBeforeOpen  |Fires when the sort handle is added to the DOM but not rendered, and before the opening transition begins. |
#'  |calciteListItemSortHandleClose       |Fires when the sort handle is closed and animation is complete.                                            |
#'  |calciteListItemSortHandleOpen        |Fires when the sort handle is open and animation is complete.                                              |
#'  |calciteListItemToggle                |Fires when the open button is clicked.                                                                     |

#' ## Slots

#' The following slots are provided by this component:

#'  |Slot              |Description                                                                                                    |
#'  |:-----------------|:--------------------------------------------------------------------------------------------------------------|
#'  |Default (unnamed) |A slot for adding `calcite-list`, `calcite-list-item` and `calcite-list-item-group` elements.                  |
#'  |actions-start     |A slot for adding actionable `calcite-action` elements before the content of the component.                    |
#'  |content-start     |A slot for adding non-actionable elements before the label and description of the component.                   |
#'  |content           |A slot for adding non-actionable, centered content in place of the `label` and `description` of the component. |
#'  |content-end       |A slot for adding non-actionable elements after the label and description of the component.                    |
#'  |actions-end       |A slot for adding actionable `calcite-action` elements after the content of the component.                     |
#'  |content-bottom    |A slot for adding content below the component's `label` and `description`.                                     |
#'
#' @param ... named attributes passed to `htmltools::tag()`
#' @export
#' @return an object of class `calcite_component` which is a subclass of `shiny.tag`
#' @references [Official Documentation](https://developers.arcgis.com/calcite-design-system/components/list-item/)
#' @examples
#' calcite_list_item()
calcite_list_item <- function(...) {
  res <- htmltools::tag(
    "calcite-list-item",
    rlang::dots_list(..., calcite_dependency(), calcite_bindings())
  )

  class(res) <- c("calcite_component", class(res))
  res
}
#' Create a ListItemGroup component
#'
#'
#'
#'
#'
#' @details
#' ## Properties

#' The following properties are provided by this component:

#'  |Name     |Attribute |Description                                                                              |Values                    |Reflects to Attribute |
#'  |:--------|:---------|:----------------------------------------------------------------------------------------|:-------------------------|:---------------------|
#'  |disabled |disabled  |When `true`, interaction is prevented and the component is displayed with lower opacity. |boolean                   |TRUE                  |
#'  |heading  |heading   |The header text for all nested `calcite-list-item` rows.                                 |string                    |TRUE                  |
#'  |scale    |scale     |Specifies the size of the component.                                                     |"l" &#124; "m" &#124; "s" |TRUE                  |

#' ## Slots

#' The following slots are provided by this component:

#'  |Slot              |Description                                                                   |
#'  |:-----------------|:-----------------------------------------------------------------------------|
#'  |Default (unnamed) |A slot for adding `calcite-list-item` and `calcite-list-item-group` elements. |
#'
#' @param ... named attributes passed to `htmltools::tag()`
#' @export
#' @return an object of class `calcite_component` which is a subclass of `shiny.tag`
#' @references [Official Documentation](https://developers.arcgis.com/calcite-design-system/components/list-item-group/)
#' @examples
#' calcite_list_item_group()
calcite_list_item_group <- function(...) {
  res <- htmltools::tag(
    "calcite-list-item-group",
    rlang::dots_list(..., calcite_dependency(), calcite_bindings())
  )

  class(res) <- c("calcite_component", class(res))
  res
}
#' Create a Loader component
#'
#'
#'
#'
#'
#' @details
#' ## Properties

#' The following properties are provided by this component:

#'  |Name   |Attribute |Description                                                                                                                                                                                                                                                |Values                                                          |Reflects to Attribute |
#'  |:------|:---------|:----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|:---------------------------------------------------------------|:---------------------|
#'  |inline |inline    |When `true`, displays smaller and appears to the left of the text.                                                                                                                                                                                         |boolean                                                         |TRUE                  |
#'  |label  |label     |Accessible name for the component.                                                                                                                                                                                                                         |string                                                          |FALSE                 |
#'  |scale  |scale     |Specifies the size of the component.                                                                                                                                                                                                                       |"l" &#124; "m" &#124; "s"                                       |TRUE                  |
#'  |text   |text      |Text that displays under the component's indicator.                                                                                                                                                                                                        |string                                                          |FALSE                 |
#'  |type   |type      |Specifies the component type.  Use `"indeterminate"` if finding actual progress value is impossible. Otherwise, use `"determinate"` to have the value indicate the progress or `"determinate-value"` to have the value label displayed along the progress. |"determinate" &#124; "determinate-value" &#124; "indeterminate" |TRUE                  |
#'  |value  |value     |The component's value. Valid only for `"determinate"` indicators. Percent complete of 100.                                                                                                                                                                 |number                                                          |FALSE                 |
#'
#' @param ... named attributes passed to `htmltools::tag()`
#' @export
#' @return an object of class `calcite_component` which is a subclass of `shiny.tag`
#' @references [Official Documentation](https://developers.arcgis.com/calcite-design-system/components/loader/)
#' @examples
#' calcite_loader()
calcite_loader <- function(...) {
  res <- htmltools::tag(
    "calcite-loader",
    rlang::dots_list(..., calcite_dependency(), calcite_bindings())
  )

  class(res) <- c("calcite_component", class(res))
  res
}
#' Create a Menu component
#'
#'
#'
#'
#'
#' @details
#' ## Properties

#' The following properties are provided by this component:

#'  |Name             |Attribute |Description                                                             |Values                         |Reflects to Attribute |
#'  |:----------------|:---------|:-----------------------------------------------------------------------|:------------------------------|:---------------------|
#'  |label            |label     |Accessible name for the component.                                      |string                         |FALSE                 |
#'  |layout           |layout    |Specifies the layout of the component.                                  |"horizontal" &#124; "vertical" |TRUE                  |
#'  |messageOverrides |NA        |Use this property to override individual strings used by the component. |Check API reference            |FALSE                 |
#'
#' @param ... named attributes passed to `htmltools::tag()`
#' @export
#' @return an object of class `calcite_component` which is a subclass of `shiny.tag`
#' @references [Official Documentation](https://developers.arcgis.com/calcite-design-system/components/menu/)
#' @examples
#' calcite_menu()
calcite_menu <- function(...) {
  res <- htmltools::tag(
    "calcite-menu",
    rlang::dots_list(..., calcite_dependency(), calcite_bindings())
  )

  class(res) <- c("calcite_component", class(res))
  res
}
#' Create a MenuItem component
#'
#'
#'
#'
#'
#' @details
#' ## Properties

#' The following properties are provided by this component:

#'  |Name             |Attribute     |Description                                                                                                 |Values                             |Reflects to Attribute |
#'  |:----------------|:-------------|:-----------------------------------------------------------------------------------------------------------|:----------------------------------|:---------------------|
#'  |active           |active        |When `true`, the component is highlighted.                                                                  |boolean                            |TRUE                  |
#'  |breadcrumb       |breadcrumb    |When `true`, the component displays a breadcrumb trail for use as a navigational aid.                       |boolean                            |TRUE                  |
#'  |href             |href          |Specifies the URL destination of the component, which can be set as an absolute or relative path.           |string                             |FALSE                 |
#'  |iconEnd          |icon-end      |Specifies an icon to display at the end of the component.                                                   |string                             |TRUE                  |
#'  |iconFlipRtl      |icon-flip-rtl |Displays the `iconStart` and/or `iconEnd` as flipped when the element direction is right-to-left (`"rtl"`). |"both" &#124; "end" &#124; "start" |TRUE                  |
#'  |iconStart        |icon-start    |Specifies an icon to display at the start of the component.                                                 |string                             |TRUE                  |
#'  |label            |label         |Accessible name for the component.                                                                          |string                             |FALSE                 |
#'  |messageOverrides |NA            |Use this property to override individual strings used by the component.                                     |Check API reference                |FALSE                 |
#'  |open             |open          |When `true`, the component will display any slotted `calcite-menu-item` in an open overflow menu.           |boolean                            |TRUE                  |
#'  |rel              |rel           |Defines the relationship between the `href` value and the current document.                                 |string                             |TRUE                  |
#'  |target           |target        |Specifies where to open the linked document defined in the `href` property.                                 |string                             |TRUE                  |
#'  |text             |text          |Specifies the text to display.                                                                              |string                             |FALSE                 |

#' ## Events

#' The following events are observed by shiny:

#'  |Event                 |Description                           |
#'  |:---------------------|:-------------------------------------|
#'  |calciteMenuItemSelect |Emits when the component is selected. |

#' ## Slots

#' The following slots are provided by this component:

#'  |Slot         |Description                                          |
#'  |:------------|:----------------------------------------------------|
#'  |submenu-item |A slot for adding `calcite-menu-item`s in a submenu. |
#'
#' @param ... named attributes passed to `htmltools::tag()`
#' @export
#' @return an object of class `calcite_component` which is a subclass of `shiny.tag`
#' @references [Official Documentation](https://developers.arcgis.com/calcite-design-system/components/menu-item/)
#' @examples
#' calcite_menu_item()
calcite_menu_item <- function(...) {
  res <- htmltools::tag(
    "calcite-menu-item",
    rlang::dots_list(..., calcite_dependency(), calcite_bindings())
  )

  class(res) <- c("calcite_component", class(res))
  res
}
#' Create a Meter component
#'
#'
#'
#'
#'
#' @details
#' ## Properties

#' The following properties are provided by this component:

#'  |Name            |Attribute        |Description                                                                                                                                                                  |Values                                         |Reflects to Attribute |
#'  |:---------------|:----------------|:----------------------------------------------------------------------------------------------------------------------------------------------------------------------------|:----------------------------------------------|:---------------------|
#'  |appearance      |appearance       |Specifies the appearance style of the component.                                                                                                                             |"outline" &#124; "outline-fill" &#124; "solid" |TRUE                  |
#'  |disabled        |disabled         |When `true`, interaction is prevented and the component is displayed with lower opacity.                                                                                     |boolean                                        |TRUE                  |
#'  |fillType        |fill-type        |Specifies the component's display, where `"single"` displays a single color and `"range"` displays a range of colors based on provided `low`, `high`, `min` or `max` values. |"range" &#124; "single"                        |TRUE                  |
#'  |form            |form             |The `id` of the form that will be associated with the component.  When not set, the component will be associated with its ancestor form element, if any.                     |string                                         |TRUE                  |
#'  |groupSeparator  |group-separator  |When `true`, number values are displayed with a group separator corresponding to the language and country format.                                                            |boolean                                        |TRUE                  |
#'  |high            |high             |Specifies a high value.  When `fillType` is `"range"`, displays a different color when above the specified threshold.                                                        |number                                         |TRUE                  |
#'  |label           |label            |Accessible name for the component.                                                                                                                                           |string                                         |FALSE                 |
#'  |low             |low              |Specifies a low value.  When `fillType` is `"range"`, displays a different color when above the specified threshold.                                                         |number                                         |TRUE                  |
#'  |max             |max              |Specifies the highest allowed value of the component.                                                                                                                        |number                                         |TRUE                  |
#'  |min             |min              |Specifies the lowest allowed value of the component.                                                                                                                         |number                                         |TRUE                  |
#'  |name            |name             |Specifies the name of the component.  Required to pass the component's `value` on form submission.                                                                           |string                                         |TRUE                  |
#'  |numberingSystem |numbering-system |Specifies the Unicode numeral system used by the component for localization.                                                                                                 |"arab" &#124; "arabext" &#124; "latn"          |FALSE                 |
#'  |rangeLabels     |range-labels     |When `true`, displays the values of `high`, `low`, `min`, and `max`.                                                                                                         |boolean                                        |TRUE                  |
#'  |rangeLabelType  |range-label-type |When `rangeLabels` is `true`, specifies the format of displayed labels.                                                                                                      |"percent" &#124; "units"                       |TRUE                  |
#'  |scale           |scale            |Specifies the size of the component.                                                                                                                                         |"l" &#124; "m" &#124; "s"                      |TRUE                  |
#'  |unitLabel       |unit-label       |When `rangeLabelType` is `"units"` and either `valueLabel` or `rangeLabels` are `true`, displays beside the `value` and/or  `min` values.                                    |string                                         |FALSE                 |
#'  |value           |value            |Specifies the current value of the component.                                                                                                                                |number                                         |FALSE                 |
#'  |valueLabel      |value-label      |When `true`, displays the current value.                                                                                                                                     |boolean                                        |TRUE                  |
#'  |valueLabelType  |value-label-type |When `valueLabel` is `true`, specifies the format of displayed label.                                                                                                        |"percent" &#124; "units"                       |TRUE                  |
#'
#' @param ... named attributes passed to `htmltools::tag()`
#' @export
#' @return an object of class `calcite_component` which is a subclass of `shiny.tag`
#' @references [Official Documentation](https://developers.arcgis.com/calcite-design-system/components/meter/)
#' @examples
#' calcite_meter()
calcite_meter <- function(...) {
  res <- htmltools::tag(
    "calcite-meter",
    rlang::dots_list(..., calcite_dependency(), calcite_bindings())
  )

  class(res) <- c("calcite_component", class(res))
  res
}
#' Create a Modal component
#'
#' Use the `calcite-dialog` component instead.
#'
#'
#'
#' @details
#' ## Properties

#' The following properties are provided by this component:

#'  |Name                 |Attribute              |Description                                                                                                                |Values                                                                  |Reflects to Attribute |
#'  |:--------------------|:----------------------|:--------------------------------------------------------------------------------------------------------------------------|:-----------------------------------------------------------------------|:---------------------|
#'  |beforeClose          |NA                     |Passes a function to run before the component closes.                                                                      |Check API reference                                                     |FALSE                 |
#'  |closeButtonDisabled  |close-button-disabled  |When `true`, disables the component's close button.                                                                        |boolean                                                                 |TRUE                  |
#'  |docked               |docked                 |When `true`, prevents the component from expanding to the entire screen on mobile devices.                                 |boolean                                                                 |TRUE                  |
#'  |escapeDisabled       |escape-disabled        |When `true`, disables the default close on escape behavior.                                                                |boolean                                                                 |TRUE                  |
#'  |focusTrapDisabled    |focus-trap-disabled    |When `true`, prevents focus trapping.                                                                                      |boolean                                                                 |TRUE                  |
#'  |fullscreen           |fullscreen             |Sets the component to always be fullscreen. Overrides `widthScale` and `--calcite-modal-width` / `--calcite-modal-height`. |boolean                                                                 |TRUE                  |
#'  |kind                 |kind                   |Specifies the kind of the component, which will apply to top border.                                                       |"brand" &#124; "danger" &#124; "info" &#124; "success" &#124; "warning" |TRUE                  |
#'  |messageOverrides     |NA                     |Use this property to override individual strings used by the component.                                                    |Check API reference                                                     |FALSE                 |
#'  |open                 |open                   |When `true`, displays and positions the component.                                                                         |boolean                                                                 |TRUE                  |
#'  |outsideCloseDisabled |outside-close-disabled |When `true`, disables the closing of the component when clicked outside.                                                   |boolean                                                                 |TRUE                  |
#'  |scale                |scale                  |Specifies the size of the component.                                                                                       |"l" &#124; "m" &#124; "s"                                               |TRUE                  |
#'  |widthScale           |width-scale            |Specifies the width of the component.                                                                                      |"l" &#124; "m" &#124; "s"                                               |TRUE                  |

#' ## Events

#' The following events are observed by shiny:

#'  |Event                   |Description                                                                                              |
#'  |:-----------------------|:--------------------------------------------------------------------------------------------------------|
#'  |calciteModalBeforeClose |Fires when the component is requested to be closed and before the closing transition begins.             |
#'  |calciteModalBeforeOpen  |Fires when the component is added to the DOM but not rendered, and before the opening transition begins. |
#'  |calciteModalClose       |Fires when the component is closed and animation is complete.                                            |
#'  |calciteModalOpen        |Fires when the component is open and animation is complete.                                              |

#' ## Slots

#' The following slots are provided by this component:

#'  |Slot           |Description                                                                                                                                  |
#'  |:--------------|:--------------------------------------------------------------------------------------------------------------------------------------------|
#'  |header         |A slot for adding header text.                                                                                                               |
#'  |content        |A slot for adding the component's content.                                                                                                   |
#'  |content-top    |A slot for adding content to the component's sticky header, where content remains at the top of the component when scrolling up and down.    |
#'  |content-bottom |A slot for adding content to the component's sticky footer, where content remains at the bottom of the component when scrolling up and down. |
#'  |primary        |A slot for adding a primary button.                                                                                                          |
#'  |secondary      |A slot for adding a secondary button.                                                                                                        |
#'  |back           |A slot for adding a back button.                                                                                                             |
#'
#' @param ... named attributes passed to `htmltools::tag()`
#' @export
#' @return an object of class `calcite_component` which is a subclass of `shiny.tag`
#' @references [Official Documentation](https://developers.arcgis.com/calcite-design-system/components/modal/)
#' @examples
#' calcite_modal()
calcite_modal <- function(...) {
  res <- htmltools::tag(
    "calcite-modal",
    rlang::dots_list(..., calcite_dependency(), calcite_bindings())
  )

  class(res) <- c("calcite_component", class(res))
  res
}
#' Create a Navigation component
#'
#'
#'
#'
#'
#' @details
#' ## Properties

#' The following properties are provided by this component:

#'  |Name             |Attribute         |Description                                                                                              |Values  |Reflects to Attribute |
#'  |:----------------|:-----------------|:--------------------------------------------------------------------------------------------------------|:-------|:---------------------|
#'  |label            |label             |When `navigationAction` is `true`, specifies the label of the `calcite-action`.                          |string  |FALSE                 |
#'  |navigationAction |navigation-action |When `true`, displays a `calcite-action` and emits a `calciteNavActionSelect` event on selection change. |boolean |TRUE                  |

#' ## Events

#' The following events are observed by shiny:

#'  |Event                         |Description                                                                           |
#'  |:-----------------------------|:-------------------------------------------------------------------------------------|
#'  |calciteNavigationActionSelect |When `navigationAction` is `true`, emits when the displayed action selection changes. |

#' ## Slots

#' The following slots are provided by this component:

#'  |Slot                 |Description                                                                                                                                                                                        |
#'  |:--------------------|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
#'  |logo                 |A slot for adding a `calcite-logo` component to the primary navigation level.                                                                                                                      |
#'  |user                 |A slot for adding a `calcite-user` component to the primary navigation level.                                                                                                                      |
#'  |progress             |A slot for adding a `calcite-progress` component to the primary navigation level.                                                                                                                  |
#'  |navigation-action    |A slot for adding a `calcite-action` component to the primary navigation level.                                                                                                                    |
#'  |content-start        |A slot for adding a `calcite-menu`, `calcite-action`, or other interactive elements in the start position of any navigation level.                                                                 |
#'  |content-center       |A slot for adding a `calcite-menu`, `calcite-action`, or other interactive elements in the center position of the primary navigation level.                                                        |
#'  |content-end          |A slot for adding a `calcite-menu`, `calcite-action`, or other interactive elements in the end position of any navigation level.                                                                   |
#'  |navigation-secondary |A slot for adding a `calcite-navigation` component in the secondary navigation level. Components rendered here will not display `calcite-navigation-logo` or `calcite-navigation-user` components. |
#'  |navigation-tertiary  |A slot for adding a `calcite-navigation` component in the tertiary navigation level.  Components rendered here will not display `calcite-navigation-logo` or `calcite-navigation-user` components. |
#'
#' @param ... named attributes passed to `htmltools::tag()`
#' @export
#' @return an object of class `calcite_component` which is a subclass of `shiny.tag`
#' @references [Official Documentation](https://developers.arcgis.com/calcite-design-system/components/navigation/)
#' @examples
#' calcite_navigation()
calcite_navigation <- function(...) {
  res <- htmltools::tag(
    "calcite-navigation",
    rlang::dots_list(..., calcite_dependency(), calcite_bindings())
  )

  class(res) <- c("calcite_component", class(res))
  res
}
#' Create a NavigationLogo component
#'
#'
#'
#'
#'
#' @details
#' ## Properties

#' The following properties are provided by this component:

#'  |Name         |Attribute     |Description                                                                                                                               |Values                                         |Reflects to Attribute |
#'  |:------------|:-------------|:-----------------------------------------------------------------------------------------------------------------------------------------|:----------------------------------------------|:---------------------|
#'  |active       |active        |When `true`, the component is highlighted.                                                                                                |boolean                                        |TRUE                  |
#'  |description  |description   |A description for the component, which displays below the `heading`.                                                                      |string                                         |FALSE                 |
#'  |heading      |heading       |Specifies heading text for the component, such as a product or organization name.                                                         |string                                         |FALSE                 |
#'  |headingLevel |heading-level |Specifies the heading level of the component's heading for proper document structure, without affecting visual styling.                   |1 &#124; 2 &#124; 3 &#124; 4 &#124; 5 &#124; 6 |TRUE                  |
#'  |href         |href          |Specifies the URL destination of the component, which can be set as an absolute or relative path.                                         |string                                         |TRUE                  |
#'  |icon         |icon          |Specifies an icon to display.                                                                                                             |string                                         |TRUE                  |
#'  |iconFlipRtl  |icon-flip-rtl |When `true`, the icon will be flipped when the element direction is right-to-left (`"rtl"`).                                              |boolean                                        |TRUE                  |
#'  |label        |label         |Describes the appearance or function of the `thumbnail`. If no label is provided, context will not be provided to assistive technologies. |string                                         |FALSE                 |
#'  |rel          |rel           |Defines the relationship between the `href` value and the current document.                                                               |string                                         |TRUE                  |
#'  |target       |target        |Specifies where to open the linked document defined in the `href` property.                                                               |string                                         |TRUE                  |
#'  |thumbnail    |thumbnail     |Specifies the `src` to an image.                                                                                                          |string                                         |FALSE                 |
#'
#' @param ... named attributes passed to `htmltools::tag()`
#' @export
#' @return an object of class `calcite_component` which is a subclass of `shiny.tag`
#' @references [Official Documentation](https://developers.arcgis.com/calcite-design-system/components/navigation-logo/)
#' @examples
#' calcite_navigation_logo()
calcite_navigation_logo <- function(...) {
  res <- htmltools::tag(
    "calcite-navigation-logo",
    rlang::dots_list(..., calcite_dependency(), calcite_bindings())
  )

  class(res) <- c("calcite_component", class(res))
  res
}
#' Create a NavigationUser component
#'
#'
#'
#'
#'
#' @details
#' ## Properties

#' The following properties are provided by this component:

#'  |Name         |Attribute     |Description                                                                                                              |Values  |Reflects to Attribute |
#'  |:------------|:-------------|:------------------------------------------------------------------------------------------------------------------------|:-------|:---------------------|
#'  |active       |active        |When `true`, the component is highlighted.                                                                               |boolean |TRUE                  |
#'  |fullName     |full-name     |Specifies the full name of the user.                                                                                     |string  |FALSE                 |
#'  |label        |label         |Describes the appearance of the avatar. If no label is provided, context will not be provided to assistive technologies. |string  |FALSE                 |
#'  |textDisabled |text-disabled |When `true`, hides the `fullName` and `username` contents.                                                               |boolean |TRUE                  |
#'  |thumbnail    |thumbnail     |Specifies the `src` to an image (remember to add a token if the user is private).                                        |string  |FALSE                 |
#'  |userId       |user-id       |Specifies the unique id of the user.                                                                                     |string  |FALSE                 |
#'  |username     |username      |Specifies the username of the user.                                                                                      |string  |FALSE                 |
#'
#' @param ... named attributes passed to `htmltools::tag()`
#' @export
#' @return an object of class `calcite_component` which is a subclass of `shiny.tag`
#' @references [Official Documentation](https://developers.arcgis.com/calcite-design-system/components/navigation-user/)
#' @examples
#' calcite_navigation_user()
calcite_navigation_user <- function(...) {
  res <- htmltools::tag(
    "calcite-navigation-user",
    rlang::dots_list(..., calcite_dependency(), calcite_bindings())
  )

  class(res) <- c("calcite_component", class(res))
  res
}

#' Create a OptionGroup component
#'
#'
#'
#'
#'
#' @details
#' ## Properties

#' The following properties are provided by this component:

#'  |Name     |Attribute |Description                                                                              |Values  |Reflects to Attribute |
#'  |:--------|:---------|:----------------------------------------------------------------------------------------|:-------|:---------------------|
#'  |disabled |disabled  |When `true`, interaction is prevented and the component is displayed with lower opacity. |boolean |TRUE                  |
#'  |label    |label     |Accessible name for the component.                                                       |string  |FALSE                 |

#' ## Slots

#' The following slots are provided by this component:

#'  |Slot              |Description                          |
#'  |:-----------------|:------------------------------------|
#'  |Default (unnamed) |A slot for adding `calcite-option`s. |
#'
#' @param ... named attributes passed to `htmltools::tag()`
#' @export
#' @return an object of class `calcite_component` which is a subclass of `shiny.tag`
#' @references [Official Documentation](https://developers.arcgis.com/calcite-design-system/components/option-group/)
#' @examples
#' calcite_option_group()
calcite_option_group <- function(...) {
  res <- htmltools::tag(
    "calcite-option-group",
    rlang::dots_list(..., calcite_dependency(), calcite_bindings())
  )

  class(res) <- c("calcite_component", class(res))
  res
}
#' Create a Pagination component
#'
#'
#'
#'
#'
#' @details
#' ## Properties

#' The following properties are provided by this component:

#'  |Name             |Attribute        |Description                                                                                                       |Values                                |Reflects to Attribute |
#'  |:----------------|:----------------|:-----------------------------------------------------------------------------------------------------------------|:-------------------------------------|:---------------------|
#'  |groupSeparator   |group-separator  |When `true`, number values are displayed with a group separator corresponding to the language and country format. |boolean                               |TRUE                  |
#'  |messageOverrides |NA               |Use this property to override individual strings used by the component.                                           |Check API reference                   |FALSE                 |
#'  |numberingSystem  |numbering-system |Specifies the Unicode numeral system used by the component for localization.                                      |"arab" &#124; "arabext" &#124; "latn" |FALSE                 |
#'  |pageSize         |page-size        |Specifies the number of items per page.                                                                           |number                                |TRUE                  |
#'  |scale            |scale            |Specifies the size of the component.                                                                              |"l" &#124; "m" &#124; "s"             |TRUE                  |
#'  |startItem        |start-item       |Specifies the starting item number.                                                                               |number                                |TRUE                  |
#'  |totalItems       |total-items      |Specifies the total number of items.                                                                              |number                                |TRUE                  |

#' ## Events

#' The following events are observed by shiny:

#'  |Event                   |Description                           |
#'  |:-----------------------|:-------------------------------------|
#'  |calcitePaginationChange |Emits when the selected page changes. |
#'
#' @param ... named attributes passed to `htmltools::tag()`
#' @export
#' @return an object of class `calcite_component` which is a subclass of `shiny.tag`
#' @references [Official Documentation](https://developers.arcgis.com/calcite-design-system/components/pagination/)
#' @examples
#' calcite_pagination()
calcite_pagination <- function(...) {
  res <- htmltools::tag(
    "calcite-pagination",
    rlang::dots_list(..., calcite_dependency(), calcite_bindings())
  )

  class(res) <- c("calcite_component", class(res))
  res
}

#' Create a Popover component
#'
#'
#'
#'
#'
#' @details
#' ## Properties

#' The following properties are provided by this component:

#'  |Name                  |Attribute                |Description                                                                                                                                                                                                                                                                                                                                                                         |Values                                                                                                                                                                                                                                                                                                                                                                                          |Reflects to Attribute |
#'  |:---------------------|:------------------------|:-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|:-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|:---------------------|
#'  |autoClose             |auto-close               |When `true`, clicking outside of the component automatically closes open `calcite-popover`s.                                                                                                                                                                                                                                                                                        |boolean                                                                                                                                                                                                                                                                                                                                                                                         |TRUE                  |
#'  |closable              |closable                 |When `true`, displays a close button within the component.                                                                                                                                                                                                                                                                                                                          |boolean                                                                                                                                                                                                                                                                                                                                                                                         |TRUE                  |
#'  |flipDisabled          |flip-disabled            |When `true`, prevents flipping the component's placement when overlapping its `referenceElement`.                                                                                                                                                                                                                                                                                   |boolean                                                                                                                                                                                                                                                                                                                                                                                         |TRUE                  |
#'  |flipPlacements        |NA                       |Specifies the component's fallback `placement` when it's initial or specified `placement` has insufficient space available.                                                                                                                                                                                                                                                         |Check API reference                                                                                                                                                                                                                                                                                                                                                                             |FALSE                 |
#'  |focusTrapDisabled     |focus-trap-disabled      |When `true`, prevents focus trapping.                                                                                                                                                                                                                                                                                                                                               |boolean                                                                                                                                                                                                                                                                                                                                                                                         |TRUE                  |
#'  |heading               |heading                  |The component header text.                                                                                                                                                                                                                                                                                                                                                          |string                                                                                                                                                                                                                                                                                                                                                                                          |FALSE                 |
#'  |headingLevel          |heading-level            |Specifies the heading level of the component's `heading` for proper document structure, without affecting visual styling.                                                                                                                                                                                                                                                           |1 &#124; 2 &#124; 3 &#124; 4 &#124; 5 &#124; 6                                                                                                                                                                                                                                                                                                                                                  |TRUE                  |
#'  |initialFocusTrapFocus |initial-focus-trap-focus |Specifies whether focus should move to the popover when the focus trap is activated.  `@internal`                                                                                                                                                                                                                                                                                   |((() => FocusTargetValueOrFalse)) &#124; HTMLElement &#124; SVGElement &#124; boolean &#124; string                                                                                                                                                                                                                                                                                             |FALSE                 |
#'  |label                 |label                    |Accessible name for the component.                                                                                                                                                                                                                                                                                                                                                  |string                                                                                                                                                                                                                                                                                                                                                                                          |FALSE                 |
#'  |messageOverrides      |NA                       |Use this property to override individual strings used by the component.                                                                                                                                                                                                                                                                                                             |Check API reference                                                                                                                                                                                                                                                                                                                                                                             |FALSE                 |
#'  |offsetDistance        |offset-distance          |Offsets the position of the popover away from the `referenceElement`.                                                                                                                                                                                                                                                                                                               |number                                                                                                                                                                                                                                                                                                                                                                                          |TRUE                  |
#'  |offsetSkidding        |offset-skidding          |Offsets the position of the component along the `referenceElement`.                                                                                                                                                                                                                                                                                                                 |number                                                                                                                                                                                                                                                                                                                                                                                          |TRUE                  |
#'  |open                  |open                     |When `true`, displays and positions the component.                                                                                                                                                                                                                                                                                                                                  |boolean                                                                                                                                                                                                                                                                                                                                                                                         |TRUE                  |
#'  |overlayPositioning    |overlay-positioning      |Determines the type of positioning to use for the overlaid content.  Using `"absolute"` will work for most cases. The component will be positioned inside of overflowing parent containers and will affect the container's layout.  `"fixed"` value should be used to escape an overflowing parent container, or when the reference element's `position` CSS property is `"fixed"`. |"absolute" &#124; "fixed"                                                                                                                                                                                                                                                                                                                                                                       |TRUE                  |
#'  |placement             |placement                |Determines where the component will be positioned relative to the `referenceElement`.                                                                                                                                                                                                                                                                                               |"auto" &#124; "auto-end" &#124; "auto-start" &#124; "bottom" &#124; "bottom-end" &#124; "bottom-start" &#124; "leading" &#124; "leading-end" &#124; "leading-start" &#124; "left" &#124; "left-end" &#124; "left-start" &#124; "right" &#124; "right-end" &#124; "right-start" &#124; "top" &#124; "top-end" &#124; "top-start" &#124; "trailing" &#124; "trailing-end" &#124; "trailing-start" |TRUE                  |
#'  |pointerDisabled       |pointer-disabled         |When `true`, removes the caret pointer.                                                                                                                                                                                                                                                                                                                                             |boolean                                                                                                                                                                                                                                                                                                                                                                                         |TRUE                  |
#'  |referenceElement      |reference-element        |The `referenceElement` used to position the component according to its `placement` value. Setting to an `HTMLElement` is preferred so the component does not need to query the DOM. However, a string `id` of the reference element can also be used.                                                                                                                               |Element &#124; VirtualElement &#124; string                                                                                                                                                                                                                                                                                                                                                     |FALSE                 |
#'  |scale                 |scale                    |Specifies the size of the component.                                                                                                                                                                                                                                                                                                                                                |"l" &#124; "m" &#124; "s"                                                                                                                                                                                                                                                                                                                                                                       |TRUE                  |
#'  |triggerDisabled       |trigger-disabled         |When `true`, disables automatically toggling the component when its `referenceElement` has been triggered.  This property can be set to `true` to manage when the component is open.                                                                                                                                                                                                |boolean                                                                                                                                                                                                                                                                                                                                                                                         |TRUE                  |

#' ## Events

#' The following events are observed by shiny:

#'  |Event                     |Description                                                                                              |
#'  |:-------------------------|:--------------------------------------------------------------------------------------------------------|
#'  |calcitePopoverBeforeClose |Fires when the component is requested to be closed and before the closing transition begins.             |
#'  |calcitePopoverBeforeOpen  |Fires when the component is added to the DOM but not rendered, and before the opening transition begins. |
#'  |calcitePopoverClose       |Fires when the component is closed and animation is complete.                                            |
#'  |calcitePopoverOpen        |Fires when the component is open and animation is complete.                                              |

#' ## Slots

#' The following slots are provided by this component:

#'  |Slot              |Description                       |
#'  |:-----------------|:---------------------------------|
#'  |Default (unnamed) |A slot for adding custom content. |
#'
#' @param ... named attributes passed to `htmltools::tag()`
#' @export
#' @return an object of class `calcite_component` which is a subclass of `shiny.tag`
#' @references [Official Documentation](https://developers.arcgis.com/calcite-design-system/components/popover/)
#' @examples
#' calcite_popover()
calcite_popover <- function(...) {
  res <- htmltools::tag(
    "calcite-popover",
    rlang::dots_list(..., calcite_dependency(), calcite_bindings())
  )

  class(res) <- c("calcite_component", class(res))
  res
}
#' Create a Progress component
#'
#'
#'
#'
#'
#' @details
#' ## Properties

#' The following properties are provided by this component:

#'  |Name     |Attribute |Description                                                                                          |Values                               |Reflects to Attribute |
#'  |:--------|:---------|:----------------------------------------------------------------------------------------------------|:------------------------------------|:---------------------|
#'  |label    |label     |Accessible name for the component.                                                                   |string                               |FALSE                 |
#'  |reversed |reversed  |When `true` and for `"indeterminate"` progress bars, reverses the animation direction.               |boolean                              |TRUE                  |
#'  |text     |text      |Text that displays under the component's indicator.                                                  |string                               |FALSE                 |
#'  |type     |type      |Specifies the component type.  Use `"indeterminate"` if finding actual progress value is impossible. |"determinate" &#124; "indeterminate" |TRUE                  |
#'  |value    |value     |When `type` is `"determinate"`, specifies the component's value with a range of 0 to 100.            |number                               |FALSE                 |
#'
#' @param ... named attributes passed to `htmltools::tag()`
#' @export
#' @return an object of class `calcite_component` which is a subclass of `shiny.tag`
#' @references [Official Documentation](https://developers.arcgis.com/calcite-design-system/components/progress/)
#' @examples
#' calcite_progress()
calcite_progress <- function(...) {
  res <- htmltools::tag(
    "calcite-progress",
    rlang::dots_list(..., calcite_dependency(), calcite_bindings())
  )

  class(res) <- c("calcite_component", class(res))
  res
}
#' Create a RadioButton component
#'
#'
#'
#'
#'
#' @details
#' ## Properties

#' The following properties are provided by this component:

#'  |Name     |Attribute |Description                                                                                                                                                      |Values                    |Reflects to Attribute |
#'  |:--------|:---------|:----------------------------------------------------------------------------------------------------------------------------------------------------------------|:-------------------------|:---------------------|
#'  |checked  |checked   |When `true`, the component is checked.                                                                                                                           |boolean                   |TRUE                  |
#'  |disabled |disabled  |When `true`, interaction is prevented and the component is displayed with lower opacity.                                                                         |boolean                   |TRUE                  |
#'  |form     |form      |The `id` of the form that will be associated with the component.  When not set, the component will be associated with its ancestor form element, if any.         |string                    |TRUE                  |
#'  |name     |name      |Specifies the name of the component. Can be inherited from `calcite-radio-button-group`.  Required to pass the component's `value` on form submission.           |string                    |TRUE                  |
#'  |required |required  |When `true` and the component resides in a form, the component must have a value selected from the `calcite-radio-button-group` in order for the form to submit. |boolean                   |TRUE                  |
#'  |scale    |scale     |Specifies the size of the component inherited from the `calcite-radio-button-group`.                                                                             |"l" &#124; "m" &#124; "s" |TRUE                  |
#'  |value    |value     |The component's value.                                                                                                                                           |any                       |FALSE                 |

#' ## Events

#' The following events are observed by shiny:

#'  |Event                    |Description                                                                                                                                                                                                                                                                                                                                                                                                                                                  |
#'  |:------------------------|:------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
#'  |calciteRadioButtonChange |Fires only when the radio button is checked.  This behavior is identical to the native HTML input element. Since this event does not fire when the radio button is unchecked, it's not recommended to attach a listener for this event directly on the element, but instead either attach it to a node that contains all of the radio buttons in the group or use the `calciteRadioButtonGroupChange` event if using this with `calcite-radio-button-group`. |
#'
#' @param ... named attributes passed to `htmltools::tag()`
#' @export
#' @return an object of class `calcite_component` which is a subclass of `shiny.tag`
#' @references [Official Documentation](https://developers.arcgis.com/calcite-design-system/components/radio-button/)
#' @examples
#' calcite_radio_button()
calcite_radio_button <- function(...) {
  res <- htmltools::tag(
    "calcite-radio-button",
    rlang::dots_list(..., calcite_dependency(), calcite_bindings())
  )

  class(res) <- c("calcite_component", class(res))
  res
}
#' Create a RadioButtonGroup component
#'
#'
#'
#'
#'
#' @details
#' ## Properties

#' The following properties are provided by this component:

#'  |Name              |Attribute          |Description                                                                                                       |Values                                       |Reflects to Attribute |
#'  |:-----------------|:------------------|:-----------------------------------------------------------------------------------------------------------------|:--------------------------------------------|:---------------------|
#'  |disabled          |disabled           |When `true`, interaction is prevented and the component is displayed with lower opacity.                          |boolean                                      |TRUE                  |
#'  |layout            |layout             |Defines the layout of the component.                                                                              |"grid" &#124; "horizontal" &#124; "vertical" |TRUE                  |
#'  |name              |name               |Specifies the name of the component on form submission. Must be unique to other component instances.              |string                                       |TRUE                  |
#'  |required          |required           |When `true` and the component resides in a form, the component must have a value in order for the form to submit. |boolean                                      |TRUE                  |
#'  |scale             |scale              |Specifies the size of the component.                                                                              |"l" &#124; "m" &#124; "s"                    |TRUE                  |
#'  |selectedItem      |NA                 |Specifies the component's selected item.                                                                          |HTMLCalciteRadioButtonElement                |FALSE                 |
#'  |status            |status             |Specifies the status of the validation message.                                                                   |"idle" &#124; "invalid" &#124; "valid"       |TRUE                  |
#'  |validationIcon    |validation-icon    |Specifies the validation icon to display under the component.                                                     |boolean &#124; string                        |TRUE                  |
#'  |validationMessage |validation-message |Specifies the validation message to display under the component.                                                  |string                                       |FALSE                 |

#' ## Events

#' The following events are observed by shiny:

#'  |Event                         |Description                           |
#'  |:-----------------------------|:-------------------------------------|
#'  |calciteRadioButtonGroupChange |Fires when the component has changed. |

#' ## Slots

#' The following slots are provided by this component:

#'  |Slot              |Description                                |
#'  |:-----------------|:------------------------------------------|
#'  |Default (unnamed) |A slot for adding `calcite-radio-button`s. |
#'
#' @param ... named attributes passed to `htmltools::tag()`
#' @export
#' @return an object of class `calcite_component` which is a subclass of `shiny.tag`
#' @references [Official Documentation](https://developers.arcgis.com/calcite-design-system/components/radio-button-group/)
#' @examples
#' calcite_radio_button_group()
calcite_radio_button_group <- function(...) {
  res <- htmltools::tag(
    "calcite-radio-button-group",
    rlang::dots_list(..., calcite_dependency(), calcite_bindings())
  )

  class(res) <- c("calcite_component", class(res))
  res
}
#' Create a Rating component
#'
#'
#'
#'
#'
#' @details
#' ## Properties

#' The following properties are provided by this component:

#'  |Name              |Attribute          |Description                                                                                                                                              |Values                                 |Reflects to Attribute |
#'  |:-----------------|:------------------|:--------------------------------------------------------------------------------------------------------------------------------------------------------|:--------------------------------------|:---------------------|
#'  |average           |average            |Specifies a cumulative average from previous ratings to display.                                                                                         |number                                 |TRUE                  |
#'  |count             |count              |Specifies the number of previous ratings to display.                                                                                                     |number                                 |TRUE                  |
#'  |disabled          |disabled           |When `true`, interaction is prevented and the component is displayed with lower opacity.                                                                 |boolean                                |TRUE                  |
#'  |form              |form               |The `id` of the form that will be associated with the component.  When not set, the component will be associated with its ancestor form element, if any. |string                                 |TRUE                  |
#'  |messageOverrides  |NA                 |Use this property to override individual strings used by the component.                                                                                  |Check API reference                    |FALSE                 |
#'  |name              |name               |Specifies the name of the component.  Required to pass the component's `value` on form submission.                                                       |string                                 |TRUE                  |
#'  |readOnly          |read-only          |When `true`, the component's value can be read, but cannot be modified.                                                                                  |boolean                                |TRUE                  |
#'  |scale             |scale              |Specifies the size of the component.                                                                                                                     |"l" &#124; "m" &#124; "s"              |TRUE                  |
#'  |showChip          |show-chip          |When `true`, and if available, displays the `average` and/or `count` data summary in a `calcite-chip`.                                                   |boolean                                |TRUE                  |
#'  |status            |status             |Specifies the status of the input field, which determines message and icons.                                                                             |"idle" &#124; "invalid" &#124; "valid" |TRUE                  |
#'  |validationIcon    |validation-icon    |Specifies the validation icon to display under the component.                                                                                            |boolean &#124; string                  |TRUE                  |
#'  |validationMessage |validation-message |Specifies the validation message to display under the component.                                                                                         |string                                 |FALSE                 |
#'  |validity          |NA                 |The current validation state of the component.                                                                                                           |Check API reference                    |FALSE                 |
#'  |value             |value              |The component's value.                                                                                                                                   |number                                 |TRUE                  |

#' ## Events

#' The following events are observed by shiny:

#'  |Event               |Description                               |
#'  |:-------------------|:-----------------------------------------|
#'  |calciteRatingChange |Fires when the component's value changes. |
#'
#' @param ... named attributes passed to `htmltools::tag()`
#' @export
#' @return an object of class `calcite_component` which is a subclass of `shiny.tag`
#' @references [Official Documentation](https://developers.arcgis.com/calcite-design-system/components/rating/)
#' @examples
#' calcite_rating()
calcite_rating <- function(...) {
  res <- htmltools::tag(
    "calcite-rating",
    rlang::dots_list(..., calcite_dependency(), calcite_bindings())
  )

  class(res) <- c("calcite_component", class(res))
  res
}
#' Create a Scrim component
#'
#'
#'
#'
#'
#' @details
#' ## Properties

#' The following properties are provided by this component:

#'  |Name             |Attribute |Description                                                             |Values              |Reflects to Attribute |
#'  |:----------------|:---------|:-----------------------------------------------------------------------|:-------------------|:---------------------|
#'  |loading          |loading   |When `true`, a busy indicator is displayed.                             |boolean             |TRUE                  |
#'  |messageOverrides |NA        |Use this property to override individual strings used by the component. |Check API reference |FALSE                 |

#' ## Slots

#' The following slots are provided by this component:

#'  |Slot              |Description                                                      |
#'  |:-----------------|:----------------------------------------------------------------|
#'  |Default (unnamed) |A slot for adding custom content, primarily loading information. |
#'
#' @param ... named attributes passed to `htmltools::tag()`
#' @export
#' @return an object of class `calcite_component` which is a subclass of `shiny.tag`
#' @references [Official Documentation](https://developers.arcgis.com/calcite-design-system/components/scrim/)
#' @examples
#' calcite_scrim()
calcite_scrim <- function(...) {
  res <- htmltools::tag(
    "calcite-scrim",
    rlang::dots_list(..., calcite_dependency(), calcite_bindings())
  )

  class(res) <- c("calcite_component", class(res))
  res
}
#' Create a Sheet component
#'
#'
#'
#'
#'
#' @details
#' ## Properties

#' The following properties are provided by this component:

#'  |Name                 |Attribute              |Description                                                                                                                 |Values                                                                     |Reflects to Attribute |
#'  |:--------------------|:----------------------|:---------------------------------------------------------------------------------------------------------------------------|:--------------------------------------------------------------------------|:---------------------|
#'  |beforeClose          |NA                     |Passes a function to run before the component closes.                                                                       |Check API reference                                                        |FALSE                 |
#'  |displayMode          |display-mode           |Specifies the display mode - `"float"` (content is separated detached), or `"overlay"` (displays on top of center content). |"float" &#124; "overlay"                                                   |TRUE                  |
#'  |escapeDisabled       |escape-disabled        |When `true`, disables the default close on escape behavior.                                                                 |boolean                                                                    |TRUE                  |
#'  |focusTrapDisabled    |focus-trap-disabled    |When `true`, prevents focus trapping.                                                                                       |boolean                                                                    |TRUE                  |
#'  |height               |height                 |Specifies the height of the component.                                                                                      |"l" &#124; "m" &#124; "s"                                                  |TRUE                  |
#'  |heightScale          |height-scale           |When `position` is `"block-start"` or `"block-end"`, specifies the height of the component.                                 |"l" &#124; "m" &#124; "s"                                                  |TRUE                  |
#'  |label                |label                  |Specifies the label of the component.                                                                                       |string                                                                     |FALSE                 |
#'  |messageOverrides     |NA                     |Use this property to override individual strings used by the component.                                                     |Check API reference                                                        |FALSE                 |
#'  |open                 |open                   |When `true`, displays and positions the component.                                                                          |boolean                                                                    |TRUE                  |
#'  |outsideCloseDisabled |outside-close-disabled |When `true`, disables the closing of the component when clicked outside.                                                    |boolean                                                                    |TRUE                  |
#'  |position             |position               |Determines where the component will be positioned.                                                                          |"block-end" &#124; "block-start" &#124; "inline-end" &#124; "inline-start" |TRUE                  |
#'  |resizable            |resizable              |When `true`, the component is resizable.                                                                                    |boolean                                                                    |TRUE                  |
#'  |width                |width                  |Specifies the width of the component.                                                                                       |"l" &#124; "m" &#124; "s"                                                  |TRUE                  |
#'  |widthScale           |width-scale            |When `position` is `"inline-start"` or `"inline-end"`, specifies the width of the component.                                |"l" &#124; "m" &#124; "s"                                                  |TRUE                  |

#' ## Events

#' The following events are observed by shiny:

#'  |Event                   |Description                                                                                              |
#'  |:-----------------------|:--------------------------------------------------------------------------------------------------------|
#'  |calciteSheetBeforeClose |Fires when the component is requested to be closed and before the closing transition begins.             |
#'  |calciteSheetBeforeOpen  |Fires when the component is added to the DOM but not rendered, and before the opening transition begins. |
#'  |calciteSheetClose       |Fires when the component is closed and animation is complete.                                            |
#'  |calciteSheetOpen        |Fires when the component is open and animation is complete.                                              |
#'
#' @param ... named attributes passed to `htmltools::tag()`
#' @export
#' @return an object of class `calcite_component` which is a subclass of `shiny.tag`
#' @references [Official Documentation](https://developers.arcgis.com/calcite-design-system/components/sheet/)
#' @examples
#' calcite_sheet()
calcite_sheet <- function(...) {
  res <- htmltools::tag(
    "calcite-sheet",
    rlang::dots_list(..., calcite_dependency(), calcite_bindings())
  )

  class(res) <- c("calcite_component", class(res))
  res
}

#' Create a ShellCenterRow component
#'
#' Use the `calcite-shell-panel` component instead.
#'
#'
#'
#' @details
#' ## Properties

#' The following properties are provided by this component:

#'  |Name        |Attribute    |Description                                                                                                |Values                    |Reflects to Attribute |
#'  |:-----------|:------------|:----------------------------------------------------------------------------------------------------------|:-------------------------|:---------------------|
#'  |detached    |detached     |When `true`, the content area displays like a floating panel.                                              |boolean                   |TRUE                  |
#'  |heightScale |height-scale |Specifies the maximum height of the component.                                                             |"l" &#124; "m" &#124; "s" |TRUE                  |
#'  |position    |position     |Specifies the component's position. Will be flipped when the element direction is right-to-left (`"rtl"`). |"end" &#124; "start"      |TRUE                  |

#' ## Slots

#' The following slots are provided by this component:

#'  |Slot              |Description                                                            |
#'  |:-----------------|:----------------------------------------------------------------------|
#'  |Default (unnamed) |A slot for adding content to the `calcite-shell-panel`.                |
#'  |action-bar        |A slot for adding a `calcite-action-bar` to the `calcite-shell-panel`. |
#'
#' @param ... named attributes passed to `htmltools::tag()`
#' @export
#' @return an object of class `calcite_component` which is a subclass of `shiny.tag`
#' @references [Official Documentation](https://developers.arcgis.com/calcite-design-system/components/shell-center-row/)
#' @examples
#' calcite_shell_center_row()
calcite_shell_center_row <- function(...) {
  res <- htmltools::tag(
    "calcite-shell-center-row",
    rlang::dots_list(..., calcite_dependency(), calcite_bindings())
  )

  class(res) <- c("calcite_component", class(res))
  res
}
#' Create a ShellPanel component
#'
#'
#'
#'
#'
#' @details
#' ## Properties

#' The following properties are provided by this component:

#'  |Name             |Attribute    |Description                                                                                                 |Values                                                                           |Reflects to Attribute |
#'  |:----------------|:------------|:-----------------------------------------------------------------------------------------------------------|:--------------------------------------------------------------------------------|:---------------------|
#'  |collapsed        |collapsed    |When `true`, hides the component's content area.                                                            |boolean                                                                          |TRUE                  |
#'  |displayMode      |display-mode |Check API reference                                                                                         |"dock" &#124; "float" &#124; "float-all" &#124; "float-content" &#124; "overlay" |TRUE                  |
#'  |height           |height       |Specifies the height of the component.                                                                      |"l" &#124; "m" &#124; "s"                                                        |TRUE                  |
#'  |heightScale      |height-scale |When `layout` is `horizontal`, specifies the maximum height of the component.                               |"l" &#124; "m" &#124; "s"                                                        |TRUE                  |
#'  |layout           |layout       |The direction of the component.                                                                             |"horizontal" &#124; "vertical"                                                   |TRUE                  |
#'  |messageOverrides |NA           |Use this property to override individual strings used by the component.                                     |Check API reference                                                              |FALSE                 |
#'  |position         |position     |Specifies the component's position. Will be flipped when the element direction is right-to-left (`"rtl"`).  |"end" &#124; "start"                                                             |TRUE                  |
#'  |resizable        |resizable    |When `true` and `displayMode` is not `float-content` or `float`, the component's content area is resizable. |boolean                                                                          |TRUE                  |
#'  |width            |width        |Specifies the width of the component.                                                                       |"l" &#124; "m" &#124; "s"                                                        |TRUE                  |
#'  |widthScale       |width-scale  |When `layout` is `vertical`, specifies the width of the component.                                          |"l" &#124; "m" &#124; "s"                                                        |TRUE                  |

#' ## Slots

#' The following slots are provided by this component:

#'  |Slot              |Description                                                |
#'  |:-----------------|:----------------------------------------------------------|
#'  |Default (unnamed) |A slot for adding custom content.                          |
#'  |action-bar        |A slot for adding a `calcite-action-bar` to the component. |
#'
#' @param ... named attributes passed to `htmltools::tag()`
#' @export
#' @return an object of class `calcite_component` which is a subclass of `shiny.tag`
#' @references [Official Documentation](https://developers.arcgis.com/calcite-design-system/components/shell-panel/)
#' @examples
#' calcite_shell_panel()
calcite_shell_panel <- function(...) {
  res <- htmltools::tag(
    "calcite-shell-panel",
    rlang::dots_list(..., calcite_dependency(), calcite_bindings())
  )

  class(res) <- c("calcite_component", class(res))
  res
}

#' Create a SplitButton component
#'
#'
#'
#'
#'
#' @details
#' ## Properties

#' The following properties are provided by this component:

#'  |Name               |Attribute             |Description                                                                                                                                                                                                                                                                                                                                                                   |Values                                                                                              |Reflects to Attribute |
#'  |:------------------|:---------------------|:-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|:---------------------------------------------------------------------------------------------------|:---------------------|
#'  |appearance         |appearance            |Specifies the appearance style of the component.                                                                                                                                                                                                                                                                                                                              |"outline" &#124; "outline-fill" &#124; "solid" &#124; "transparent"                                 |TRUE                  |
#'  |disabled           |disabled              |When `true`, interaction is prevented and the component is displayed with lower opacity.                                                                                                                                                                                                                                                                                      |boolean                                                                                             |TRUE                  |
#'  |dropdownIconType   |dropdown-icon-type    |Specifies the icon used for the dropdown menu.                                                                                                                                                                                                                                                                                                                                |"caret" &#124; "chevron" &#124; "ellipsis" &#124; "overflow"                                        |TRUE                  |
#'  |dropdownLabel      |dropdown-label        |Accessible name for the dropdown menu.                                                                                                                                                                                                                                                                                                                                        |string                                                                                              |TRUE                  |
#'  |flipPlacements     |NA                    |Specifies the component's fallback slotted content `placement` when it's initial or specified `placement` has insufficient space available.                                                                                                                                                                                                                                   |Check API reference                                                                                 |FALSE                 |
#'  |kind               |kind                  |Specifies the kind of the component, which will apply to border and background, if applicable.                                                                                                                                                                                                                                                                                |"brand" &#124; "danger" &#124; "inverse" &#124; "neutral"                                           |TRUE                  |
#'  |loading            |loading               |When `true`, a busy indicator is displayed on the primary button.                                                                                                                                                                                                                                                                                                             |boolean                                                                                             |TRUE                  |
#'  |overlayPositioning |overlay-positioning   |Determines the type of positioning to use for the overlaid content.  Using `"absolute"` will work for most cases. The component will be positioned inside of overflowing parent containers and will affect the container's layout.  `"fixed"` should be used to escape an overflowing parent container, or when the reference element's `position` CSS property is `"fixed"`. |"absolute" &#124; "fixed"                                                                           |TRUE                  |
#'  |placement          |placement             |Determines where the component will be positioned relative to the container element.                                                                                                                                                                                                                                                                                          |"bottom" &#124; "bottom-end" &#124; "bottom-start" &#124; "top" &#124; "top-end" &#124; "top-start" |TRUE                  |
#'  |primaryIconEnd     |primary-icon-end      |Specifies an icon to display at the end of the primary button.                                                                                                                                                                                                                                                                                                                |string                                                                                              |TRUE                  |
#'  |primaryIconFlipRtl |primary-icon-flip-rtl |Displays the `primaryIconStart` and/or `primaryIconEnd` as flipped when the element direction is right-to-left (`"rtl"`).                                                                                                                                                                                                                                                     |"both" &#124; "end" &#124; "start"                                                                  |TRUE                  |
#'  |primaryIconStart   |primary-icon-start    |Specifies an icon to display at the start of the primary button.                                                                                                                                                                                                                                                                                                              |string                                                                                              |TRUE                  |
#'  |primaryLabel       |primary-label         |Accessible name for the primary button.                                                                                                                                                                                                                                                                                                                                       |string                                                                                              |TRUE                  |
#'  |primaryText        |primary-text          |Text displayed in the primary button.                                                                                                                                                                                                                                                                                                                                         |string                                                                                              |TRUE                  |
#'  |scale              |scale                 |Specifies the size of the component.                                                                                                                                                                                                                                                                                                                                          |"l" &#124; "m" &#124; "s"                                                                           |TRUE                  |
#'  |width              |width                 |Check API reference                                                                                                                                                                                                                                                                                                                                                           |"auto" &#124; "full" &#124; "half"                                                                  |TRUE                  |

#' ## Events

#' The following events are observed by shiny:

#'  |Event                            |Description                               |
#'  |:--------------------------------|:-----------------------------------------|
#'  |calciteSplitButtonPrimaryClick   |Fires when the primary button is clicked. |
#'  |calciteSplitButtonSecondaryClick |Fires when the dropdown menu is clicked.  |

#' ## Slots

#' The following slots are provided by this component:

#'  |Slot              |Description                                   |
#'  |:-----------------|:---------------------------------------------|
#'  |Default (unnamed) |A slot for adding `calcite-dropdown` content. |
#'
#' @param ... named attributes passed to `htmltools::tag()`
#' @export
#' @return an object of class `calcite_component` which is a subclass of `shiny.tag`
#' @references [Official Documentation](https://developers.arcgis.com/calcite-design-system/components/split-button/)
#' @examples
#' calcite_split_button()
calcite_split_button <- function(...) {
  res <- htmltools::tag(
    "calcite-split-button",
    rlang::dots_list(..., calcite_dependency(), calcite_bindings())
  )

  class(res) <- c("calcite_component", class(res))
  res
}
#' Create a Stepper component
#'
#'
#'
#'
#'
#' @details
#' ## Properties

#' The following properties are provided by this component:

#'  |Name             |Attribute        |Description                                                                  |Values                                                    |Reflects to Attribute |
#'  |:----------------|:----------------|:----------------------------------------------------------------------------|:---------------------------------------------------------|:---------------------|
#'  |icon             |icon             |When `true`, displays a status icon in the `calcite-stepper-item` heading.   |boolean                                                   |TRUE                  |
#'  |layout           |layout           |Defines the layout of the component.                                         |"horizontal" &#124; "horizontal-single" &#124; "vertical" |TRUE                  |
#'  |messageOverrides |NA               |Use this property to override individual strings used by the component.      |Check API reference                                       |FALSE                 |
#'  |numbered         |numbered         |When `true`, displays the step number in the `calcite-stepper-item` heading. |boolean                                                   |TRUE                  |
#'  |numberingSystem  |numbering-system |Specifies the Unicode numeral system used by the component for localization. |"arab" &#124; "arabext" &#124; "latn"                     |TRUE                  |
#'  |scale            |scale            |Specifies the size of the component.                                         |"l" &#124; "m" &#124; "s"                                 |TRUE                  |
#'  |selectedItem     |NA               |Specifies the component's selected item.                                     |HTMLCalciteStepperItemElement                             |FALSE                 |

#' ## Events

#' The following events are observed by shiny:

#'  |Event                    |Description                                           |
#'  |:------------------------|:-----------------------------------------------------|
#'  |calciteStepperChange     |Fires when the active `calcite-stepper-item` changes. |
#'  |calciteStepperItemChange |Fires when the active `calcite-stepper-item` changes. |

#' ## Slots

#' The following slots are provided by this component:

#'  |Slot              |Description                                        |
#'  |:-----------------|:--------------------------------------------------|
#'  |Default (unnamed) |A slot for adding `calcite-stepper-item` elements. |
#'
#' @param ... named attributes passed to `htmltools::tag()`
#' @export
#' @return an object of class `calcite_component` which is a subclass of `shiny.tag`
#' @references [Official Documentation](https://developers.arcgis.com/calcite-design-system/components/stepper/)
#' @examples
#' calcite_stepper()
calcite_stepper <- function(...) {
  res <- htmltools::tag(
    "calcite-stepper",
    rlang::dots_list(..., calcite_dependency(), calcite_bindings())
  )

  class(res) <- c("calcite_component", class(res))
  res
}
#' Create a StepperItem component
#'
#'
#'
#'
#'
#' @details
#' ## Properties

#' The following properties are provided by this component:

#'  |Name             |Attribute     |Description                                                                                  |Values              |Reflects to Attribute |
#'  |:----------------|:-------------|:--------------------------------------------------------------------------------------------|:-------------------|:---------------------|
#'  |complete         |complete      |When `true`, the step has been completed.                                                    |boolean             |TRUE                  |
#'  |description      |description   |A description for the component. Displays below the header text.                             |string              |FALSE                 |
#'  |disabled         |disabled      |When `true`, interaction is prevented and the component is displayed with lower opacity.     |boolean             |TRUE                  |
#'  |error            |error         |When `true`, the component contains an error that requires resolution from the user.         |boolean             |TRUE                  |
#'  |heading          |heading       |The component header text.                                                                   |string              |FALSE                 |
#'  |iconFlipRtl      |icon-flip-rtl |When `true`, the icon will be flipped when the element direction is right-to-left (`"rtl"`). |boolean             |TRUE                  |
#'  |messageOverrides |NA            |Use this property to override individual strings used by the component.                      |Check API reference |FALSE                 |
#'  |selected         |selected      |When `true`, the component is selected.                                                      |boolean             |TRUE                  |

#' ## Events

#' The following events are observed by shiny:

#'  |Event                    |Description                                           |
#'  |:------------------------|:-----------------------------------------------------|
#'  |calciteStepperItemSelect |Fires when the active `calcite-stepper-item` changes. |

#' ## Slots

#' The following slots are provided by this component:

#'  |Slot              |Description                       |
#'  |:-----------------|:---------------------------------|
#'  |Default (unnamed) |A slot for adding custom content. |
#'
#' @param ... named attributes passed to `htmltools::tag()`
#' @export
#' @return an object of class `calcite_component` which is a subclass of `shiny.tag`
#' @references [Official Documentation](https://developers.arcgis.com/calcite-design-system/components/stepper-item/)
#' @examples
#' calcite_stepper_item()
calcite_stepper_item <- function(...) {
  res <- htmltools::tag(
    "calcite-stepper-item",
    rlang::dots_list(..., calcite_dependency(), calcite_bindings())
  )

  class(res) <- c("calcite_component", class(res))
  res
}

#' Create a Tab component
#'
#'
#'
#'
#'
#' @details
#' ## Properties

#' The following properties are provided by this component:

#'  |Name     |Attribute |Description                                                                                                         |Values  |Reflects to Attribute |
#'  |:--------|:---------|:-------------------------------------------------------------------------------------------------------------------|:-------|:---------------------|
#'  |selected |selected  |When `true`, the component's contents are selected.  Only one tab can be selected within the `calcite-tabs` parent. |boolean |TRUE                  |
#'  |tab      |tab       |Specifies a unique name for the component.  When specified, use the same value on the `calcite-tab-title`.          |string  |TRUE                  |

#' ## Slots

#' The following slots are provided by this component:

#'  |Slot              |Description                       |
#'  |:-----------------|:---------------------------------|
#'  |Default (unnamed) |A slot for adding custom content. |
#'
#' @param ... named attributes passed to `htmltools::tag()`
#' @export
#' @return an object of class `calcite_component` which is a subclass of `shiny.tag`
#' @references [Official Documentation](https://developers.arcgis.com/calcite-design-system/components/tab/)
#' @examples
#' calcite_tab()
calcite_tab <- function(...) {
  res <- htmltools::tag(
    "calcite-tab",
    rlang::dots_list(..., calcite_dependency(), calcite_bindings())
  )

  class(res) <- c("calcite_component", class(res))
  res
}
#' Create a TabNav component
#'
#'
#'
#'
#'
#' @details
#' ## Properties

#' The following properties are provided by this component:

#'  |Name             |Attribute  |Description                                                                                                                                                                      |Values                     |Reflects to Attribute |
#'  |:----------------|:----------|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|:--------------------------|:---------------------|
#'  |messageOverrides |NA         |Use this property to override individual strings used by the component.                                                                                                          |Check API reference        |FALSE                 |
#'  |position         |position   |Specifies the position of `calcite-tab-nav` and `calcite-tab-title` components in relation to, and is inherited from the parent `calcite-tabs`, defaults to `top`.   `@internal` |"bottom" &#124; "top"      |FALSE                 |
#'  |selectedTitle    |NA         |Specifies the component's selected `calcite-tab-title`.                                                                                                                          |HTMLCalciteTabTitleElement |FALSE                 |
#'  |storageId        |storage-id |Specifies the name when saving selected `calcite-tab` data to `localStorage`.                                                                                                    |string                     |TRUE                  |
#'  |syncId           |sync-id    |Specifies text to update multiple components to keep in sync if one changes.                                                                                                     |string                     |TRUE                  |

#' ## Events

#' The following events are observed by shiny:

#'  |Event            |Description                                    |
#'  |:----------------|:----------------------------------------------|
#'  |calciteTabChange |Emits when the selected `calcite-tab` changes. |

#' ## Slots

#' The following slots are provided by this component:

#'  |Slot              |Description                             |
#'  |:-----------------|:---------------------------------------|
#'  |Default (unnamed) |A slot for adding `calcite-tab-title`s. |
#'
#' @param ... named attributes passed to `htmltools::tag()`
#' @export
#' @return an object of class `calcite_component` which is a subclass of `shiny.tag`
#' @references [Official Documentation](https://developers.arcgis.com/calcite-design-system/components/tab-nav/)
#' @examples
#' calcite_tab_nav()
calcite_tab_nav <- function(...) {
  res <- htmltools::tag(
    "calcite-tab-nav",
    rlang::dots_list(..., calcite_dependency(), calcite_bindings())
  )

  class(res) <- c("calcite_component", class(res))
  res
}
#' Create a TabTitle component
#'
#' Tab-titles are optionally individually closable.
#'
#' @details
#' ## Properties

#' The following properties are provided by this component:

#'  |Name             |Attribute     |Description                                                                                                                                                                      |Values                             |Reflects to Attribute |
#'  |:----------------|:-------------|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|:----------------------------------|:---------------------|
#'  |closable         |closable      |When `true`, a close button is added to the component.                                                                                                                           |boolean                            |TRUE                  |
#'  |closed           |closed        |When `true`, does not display or position the component.                                                                                                                         |boolean                            |TRUE                  |
#'  |disabled         |disabled      |When `true`, interaction is prevented and the component is displayed with lower opacity.                                                                                         |boolean                            |TRUE                  |
#'  |iconEnd          |icon-end      |Specifies an icon to display at the end of the component.                                                                                                                        |string                             |TRUE                  |
#'  |iconFlipRtl      |icon-flip-rtl |Displays the `iconStart` and/or `iconEnd` as flipped when the element direction is right-to-left (`"rtl"`).                                                                      |"both" &#124; "end" &#124; "start" |TRUE                  |
#'  |iconStart        |icon-start    |Specifies an icon to display at the start of the component.                                                                                                                      |string                             |TRUE                  |
#'  |messageOverrides |NA            |Use this property to override individual strings used by the component.                                                                                                          |Check API reference                |FALSE                 |
#'  |position         |position      |Specifies the position of `calcite-tab-nav` and `calcite-tab-title` components in relation to, and is inherited from the parent `calcite-tabs`, defaults to `top`.   `@internal` |"bottom" &#124; "top"              |FALSE                 |
#'  |selected         |selected      |When `true`, the component and its respective `calcite-tab` contents are selected.  Only one tab can be selected within the `calcite-tabs` parent.                               |boolean                            |TRUE                  |
#'  |tab              |tab           |Specifies a unique name for the component.  When specified, use the same value on the `calcite-tab`.                                                                             |string                             |TRUE                  |

#' ## Events

#' The following events are observed by shiny:

#'  |Event               |Description                             |
#'  |:-------------------|:---------------------------------------|
#'  |calciteTabsActivate |Fires when a `calcite-tab` is selected. |
#'  |calciteTabsClose    |Fires when a `calcite-tab` is closed.   |

#' ## Slots

#' The following slots are provided by this component:

#'  |Slot              |Description             |
#'  |:-----------------|:-----------------------|
#'  |Default (unnamed) |A slot for adding text. |
#'
#' @param ... named attributes passed to `htmltools::tag()`
#' @export
#' @return an object of class `calcite_component` which is a subclass of `shiny.tag`
#' @references [Official Documentation](https://developers.arcgis.com/calcite-design-system/components/tab-title/)
#' @examples
#' calcite_tab_title()
calcite_tab_title <- function(...) {
  res <- htmltools::tag(
    "calcite-tab-title",
    rlang::dots_list(..., calcite_dependency(), calcite_bindings())
  )

  class(res) <- c("calcite_component", class(res))
  res
}

#' Create a Tabs component
#'
#'
#'
#'
#'
#' @details
#' ## Properties

#' The following properties are provided by this component:

#'  |Name     |Attribute |Description                                                                                                                                        |Values                    |Reflects to Attribute |
#'  |:--------|:---------|:--------------------------------------------------------------------------------------------------------------------------------------------------|:-------------------------|:---------------------|
#'  |bordered |bordered  |When `true`, the component will display with a folder style menu.                                                                                  |boolean                   |FALSE                 |
#'  |layout   |layout    |Specifies the layout of the `calcite-tab-nav`, justifying the `calcite-tab-title`s to the start (`"inline"`), or across and centered (`"center"`). |"center" &#124; "inline"  |TRUE                  |
#'  |position |position  |Specifies the position of `calcite-tab-nav` and `calcite-tab-title` components in relation to the `calcite-tabs`.                                  |"bottom" &#124; "top"     |TRUE                  |
#'  |scale    |scale     |Specifies the size of the component.                                                                                                               |"l" &#124; "m" &#124; "s" |TRUE                  |

#' ## Slots

#' The following slots are provided by this component:

#'  |Slot              |Description                            |
#'  |:-----------------|:--------------------------------------|
#'  |Default (unnamed) |A slot for adding `calcite-tab`s.      |
#'  |title-group       |A slot for adding a `calcite-tab-nav`. |
#'
#' @param ... named attributes passed to `htmltools::tag()`
#' @export
#' @return an object of class `calcite_component` which is a subclass of `shiny.tag`
#' @references [Official Documentation](https://developers.arcgis.com/calcite-design-system/components/tabs/)
#' @examples
#' calcite_tabs()
calcite_tabs <- function(...) {
  res <- htmltools::tag(
    "calcite-tabs",
    rlang::dots_list(..., calcite_dependency(), calcite_bindings())
  )

  class(res) <- c("calcite_component", class(res))
  res
}
#' Create a TextArea component
#'
#'
#'
#'
#'
#' @details
#' ## Properties

#' The following properties are provided by this component:

#'  |Name              |Attribute          |Description                                                                                                                                              |Values                                                     |Reflects to Attribute |
#'  |:-----------------|:------------------|:--------------------------------------------------------------------------------------------------------------------------------------------------------|:----------------------------------------------------------|:---------------------|
#'  |columns           |columns            |Specifies the component's number of columns.                                                                                                             |number                                                     |TRUE                  |
#'  |disabled          |disabled           |When `true`, interaction is prevented and the component is displayed with lower opacity.                                                                 |boolean                                                    |TRUE                  |
#'  |form              |form               |The `id` of the form that will be associated with the component.  When not set, the component will be associated with its ancestor form element, if any. |string                                                     |TRUE                  |
#'  |groupSeparator    |group-separator    |When `true`, number values are displayed with a group separator corresponding to the language and country format.                                        |boolean                                                    |TRUE                  |
#'  |label             |label              |Accessible name for the component.                                                                                                                       |string                                                     |FALSE                 |
#'  |limitText         |limit-text         |Check API reference                                                                                                                                      |boolean                                                    |TRUE                  |
#'  |maxLength         |max-length         |When the component resides in a form, specifies the maximum number of characters allowed.                                                                |number                                                     |TRUE                  |
#'  |messageOverrides  |NA                 |Use this property to override individual strings used by the component.                                                                                  |Check API reference                                        |FALSE                 |
#'  |minLength         |min-length         |When the component resides in a form, specifies the minimum number of characters allowed.                                                                |number                                                     |TRUE                  |
#'  |name              |name               |Specifies the name of the component.                                                                                                                     |string                                                     |TRUE                  |
#'  |numberingSystem   |numbering-system   |Specifies the Unicode numeral system used by the component for localization.                                                                             |"arab" &#124; "arabext" &#124; "latn"                      |FALSE                 |
#'  |placeholder       |placeholder        |Specifies the placeholder text for the component.                                                                                                        |string                                                     |FALSE                 |
#'  |readOnly          |read-only          |When `true`, the component's `value` can be read, but cannot be modified.                                                                                |boolean                                                    |TRUE                  |
#'  |required          |required           |When `true` and the component resides in a form, the component must have a value in order for the form to submit.                                        |boolean                                                    |TRUE                  |
#'  |resize            |resize             |Specifies if the component is resizable.                                                                                                                 |"both" &#124; "horizontal" &#124; "none" &#124; "vertical" |TRUE                  |
#'  |rows              |rows               |Specifies the component's number of rows.                                                                                                                |number                                                     |TRUE                  |
#'  |scale             |scale              |Specifies the size of the component.                                                                                                                     |"l" &#124; "m" &#124; "s"                                  |TRUE                  |
#'  |status            |status             |Specifies the status of the input field, which determines message and icons.                                                                             |"idle" &#124; "invalid" &#124; "valid"                     |TRUE                  |
#'  |validationIcon    |validation-icon    |Specifies the validation icon to display under the component.                                                                                            |boolean &#124; string                                      |TRUE                  |
#'  |validationMessage |validation-message |Specifies the validation message to display under the component.                                                                                         |string                                                     |FALSE                 |
#'  |validity          |NA                 |The current validation state of the component.                                                                                                           |Check API reference                                        |FALSE                 |
#'  |value             |value              |The component's value.                                                                                                                                   |string                                                     |FALSE                 |
#'  |wrap              |wrap               |Specifies the wrapping mechanism for the text.                                                                                                           |"hard" &#124; "soft"                                       |TRUE                  |

#' ## Events

#' The following events are observed by shiny:

#'  |Event                 |Description                                           |
#'  |:---------------------|:-----------------------------------------------------|
#'  |calciteTextAreaChange |Fires each time a new `value` is typed and committed. |
#'  |calciteTextAreaInput  |Fires each time a new `value` is typed.               |

#' ## Slots

#' The following slots are provided by this component:

#'  |Slot              |Description                                                       |
#'  |:-----------------|:-----------------------------------------------------------------|
#'  |Default (unnamed) |A slot for adding text.                                           |
#'  |footer-start      |A slot for adding content to the start of the component's footer. |
#'  |footer-end        |A slot for adding content to the end of the component's footer.   |
#'
#' @param ... named attributes passed to `htmltools::tag()`
#' @export
#' @return an object of class `calcite_component` which is a subclass of `shiny.tag`
#' @references [Official Documentation](https://developers.arcgis.com/calcite-design-system/components/text-area/)
#' @examples
#' calcite_text_area()
calcite_text_area <- function(...) {
  res <- htmltools::tag(
    "calcite-text-area",
    rlang::dots_list(..., calcite_dependency(), calcite_bindings())
  )

  class(res) <- c("calcite_component", class(res))
  res
}

#' Create a TimePicker component
#'
#'
#'
#'
#'
#' @details
#' ## Properties

#' The following properties are provided by this component:

#'  |Name             |Attribute        |Description                                                                                                                                                        |Values                                |Reflects to Attribute |
#'  |:----------------|:----------------|:------------------------------------------------------------------------------------------------------------------------------------------------------------------|:-------------------------------------|:---------------------|
#'  |hourFormat       |hour-format      |Specifies the component's hour format, where:  `"user"` displays the user's locale format, `"12"` displays a 12-hour format, and `"24"` displays a 24-hour format. |"12" &#124; "24" &#124; "user"        |TRUE                  |
#'  |messageOverrides |NA               |Use this property to override individual strings used by the component.                                                                                            |Check API reference                   |FALSE                 |
#'  |numberingSystem  |numbering-system |Specifies the Unicode numeral system used by the component for localization.                                                                                       |"arab" &#124; "arabext" &#124; "latn" |FALSE                 |
#'  |scale            |scale            |Specifies the size of the component.                                                                                                                               |"l" &#124; "m" &#124; "s"             |TRUE                  |
#'  |step             |step             |Specifies the granularity the `value` must adhere to (in seconds).                                                                                                 |number                                |TRUE                  |
#'  |value            |value            |The component's value in UTC (always 24-hour format).                                                                                                              |string                                |FALSE                 |

#' ## Events

#' The following events are observed by shiny:

#'  |Event                   |Description |
#'  |:-----------------------|:-----------|
#'  |calciteTimePickerChange |            |
#'
#' @param ... named attributes passed to `htmltools::tag()`
#' @export
#' @return an object of class `calcite_component` which is a subclass of `shiny.tag`
#' @references [Official Documentation](https://developers.arcgis.com/calcite-design-system/components/time-picker/)
#' @examples
#' calcite_time_picker()
calcite_time_picker <- function(...) {
  res <- htmltools::tag(
    "calcite-time-picker",
    rlang::dots_list(..., calcite_dependency(), calcite_bindings())
  )

  class(res) <- c("calcite_component", class(res))
  res
}
#' Create a Tip component
#'
#' Use the `calcite-card`, `calcite-notice`, `calcite-panel`, or `calcite-tile` component instead.
#'
#'
#'
#' @details
#' ## Properties

#' The following properties are provided by this component:

#'  |Name             |Attribute      |Description                                                                                                                                             |Values                                         |Reflects to Attribute |
#'  |:----------------|:--------------|:-------------------------------------------------------------------------------------------------------------------------------------------------------|:----------------------------------------------|:---------------------|
#'  |closed           |closed         |When `true`, the component does not display.                                                                                                            |boolean                                        |TRUE                  |
#'  |closeDisabled    |close-disabled |When `true`, the close button is not present on the component.                                                                                          |boolean                                        |TRUE                  |
#'  |heading          |heading        |The component header text.                                                                                                                              |string                                         |FALSE                 |
#'  |headingLevel     |heading-level  |Specifies the heading level of the component's `heading` for proper document structure, without affecting visual styling.                               |1 &#124; 2 &#124; 3 &#124; 4 &#124; 5 &#124; 6 |TRUE                  |
#'  |messageOverrides |NA             |Use this property to override individual strings used by the component.                                                                                 |Check API reference                            |FALSE                 |
#'  |selected         |selected       |When `true`, the component is selected if it has a parent `calcite-tip-manager`.  Only one tip can be selected within the `calcite-tip-manager` parent. |boolean                                        |TRUE                  |

#' ## Events

#' The following events are observed by shiny:

#'  |Event             |Description                               |
#'  |:-----------------|:-----------------------------------------|
#'  |calciteTipDismiss |Emits when the component has been closed. |

#' ## Slots

#' The following slots are provided by this component:

#'  |Slot              |Description                              |
#'  |:-----------------|:----------------------------------------|
#'  |Default (unnamed) |A slot for adding text and a hyperlink.  |
#'  |thumbnail         |A slot for adding an HTML image element. |
#'
#' @param ... named attributes passed to `htmltools::tag()`
#' @export
#' @return an object of class `calcite_component` which is a subclass of `shiny.tag`
#' @references [Official Documentation](https://developers.arcgis.com/calcite-design-system/components/tip/)
#' @examples
#' calcite_tip()
calcite_tip <- function(...) {
  res <- htmltools::tag(
    "calcite-tip",
    rlang::dots_list(..., calcite_dependency(), calcite_bindings())
  )

  class(res) <- c("calcite_component", class(res))
  res
}
#' Create a TipGroup component
#'
#' Use the `calcite-carousel` and `calcite-carousel-item` components instead.
#'
#'
#'
#' @details
#' ## Properties

#' The following properties are provided by this component:

#'  |Name       |Attribute   |Description                                              |Values |Reflects to Attribute |
#'  |:----------|:-----------|:--------------------------------------------------------|:------|:---------------------|
#'  |groupTitle |group-title |The component header text for all nested `calcite-tip`s. |string |FALSE                 |

#' ## Slots

#' The following slots are provided by this component:

#'  |Slot              |Description                       |
#'  |:-----------------|:---------------------------------|
#'  |Default (unnamed) |A slot for adding `calcite-tip`s. |
#'
#' @param ... named attributes passed to `htmltools::tag()`
#' @export
#' @return an object of class `calcite_component` which is a subclass of `shiny.tag`
#' @references [Official Documentation](https://developers.arcgis.com/calcite-design-system/components/tip-group/)
#' @examples
#' calcite_tip_group()
calcite_tip_group <- function(...) {
  res <- htmltools::tag(
    "calcite-tip-group",
    rlang::dots_list(..., calcite_dependency(), calcite_bindings())
  )

  class(res) <- c("calcite_component", class(res))
  res
}
#' Create a TipManager component
#'
#' Use the `calcite-carousel` and `calcite-carousel-item` components instead.
#'
#'
#'
#' @details
#' ## Properties

#' The following properties are provided by this component:

#'  |Name             |Attribute     |Description                                                                                                               |Values                                         |Reflects to Attribute |
#'  |:----------------|:-------------|:-------------------------------------------------------------------------------------------------------------------------|:----------------------------------------------|:---------------------|
#'  |closed           |closed        |When `true`, does not display or position the component.                                                                  |boolean                                        |TRUE                  |
#'  |headingLevel     |heading-level |Specifies the heading level of the component's `heading` for proper document structure, without affecting visual styling. |1 &#124; 2 &#124; 3 &#124; 4 &#124; 5 &#124; 6 |TRUE                  |
#'  |messageOverrides |NA            |Use this property to override individual strings used by the component.                                                   |Check API reference                            |FALSE                 |

#' ## Events

#' The following events are observed by shiny:

#'  |Event                  |Description                               |
#'  |:----------------------|:-----------------------------------------|
#'  |calciteTipManagerClose |Emits when the component has been closed. |

#' ## Slots

#' The following slots are provided by this component:

#'  |Slot              |Description                       |
#'  |:-----------------|:---------------------------------|
#'  |Default (unnamed) |A slot for adding `calcite-tip`s. |
#'
#' @param ... named attributes passed to `htmltools::tag()`
#' @export
#' @return an object of class `calcite_component` which is a subclass of `shiny.tag`
#' @references [Official Documentation](https://developers.arcgis.com/calcite-design-system/components/tip-manager/)
#' @examples
#' calcite_tip_manager()
calcite_tip_manager <- function(...) {
  res <- htmltools::tag(
    "calcite-tip-manager",
    rlang::dots_list(..., calcite_dependency(), calcite_bindings())
  )

  class(res) <- c("calcite_component", class(res))
  res
}
#' Create a Tooltip component
#'
#'
#'
#'
#'
#' @details
#' ## Properties

#' The following properties are provided by this component:

#'  |Name               |Attribute           |Description                                                                                                                                                                                                                                                                                                                                                                             |Values                                                                                                                                                                                                                                                                                                                                                                                          |Reflects to Attribute |
#'  |:------------------|:-------------------|:---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|:-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|:---------------------|
#'  |closeOnClick       |close-on-click      |Closes the component when the `referenceElement` is clicked.                                                                                                                                                                                                                                                                                                                            |boolean                                                                                                                                                                                                                                                                                                                                                                                         |TRUE                  |
#'  |label              |label               |Accessible name for the component.                                                                                                                                                                                                                                                                                                                                                      |string                                                                                                                                                                                                                                                                                                                                                                                          |FALSE                 |
#'  |offsetDistance     |offset-distance     |Offset the position of the component away from the `referenceElement`.                                                                                                                                                                                                                                                                                                                  |number                                                                                                                                                                                                                                                                                                                                                                                          |TRUE                  |
#'  |offsetSkidding     |offset-skidding     |Offset the position of the component along the `referenceElement`.                                                                                                                                                                                                                                                                                                                      |number                                                                                                                                                                                                                                                                                                                                                                                          |TRUE                  |
#'  |open               |open                |When `true`, the component is open.                                                                                                                                                                                                                                                                                                                                                     |boolean                                                                                                                                                                                                                                                                                                                                                                                         |TRUE                  |
#'  |overlayPositioning |overlay-positioning |Determines the type of positioning to use for the overlaid content.  Using `"absolute"` will work for most cases. The component will be positioned inside of overflowing parent containers and will affect the container's layout.  The `"fixed"` value should be used to escape an overflowing parent container, or when the reference element's `position` CSS property is `"fixed"`. |"absolute" &#124; "fixed"                                                                                                                                                                                                                                                                                                                                                                       |TRUE                  |
#'  |placement          |placement           |Determines where the component will be positioned relative to the `referenceElement`.                                                                                                                                                                                                                                                                                                   |"auto" &#124; "auto-end" &#124; "auto-start" &#124; "bottom" &#124; "bottom-end" &#124; "bottom-start" &#124; "leading" &#124; "leading-end" &#124; "leading-start" &#124; "left" &#124; "left-end" &#124; "left-start" &#124; "right" &#124; "right-end" &#124; "right-start" &#124; "top" &#124; "top-end" &#124; "top-start" &#124; "trailing" &#124; "trailing-end" &#124; "trailing-start" |TRUE                  |
#'  |referenceElement   |reference-element   |The `referenceElement` to position the component according to its `"placement"` value.  Setting to the `HTMLElement` is preferred so the component does not need to query the DOM for the `referenceElement`.  However, a string ID of the reference element can be used.                                                                                                               |Element &#124; VirtualElement &#124; string                                                                                                                                                                                                                                                                                                                                                     |FALSE                 |

#' ## Events

#' The following events are observed by shiny:

#'  |Event                     |Description                                                                                              |
#'  |:-------------------------|:--------------------------------------------------------------------------------------------------------|
#'  |calciteTooltipBeforeClose |Fires when the component is requested to be closed and before the closing transition begins.             |
#'  |calciteTooltipBeforeOpen  |Fires when the component is added to the DOM but not rendered, and before the opening transition begins. |
#'  |calciteTooltipClose       |Fires when the component is closed and animation is complete.                                            |
#'  |calciteTooltipOpen        |Fires when the component is open and animation is complete.                                              |

#' ## Slots

#' The following slots are provided by this component:

#'  |Slot              |Description             |
#'  |:-----------------|:-----------------------|
#'  |Default (unnamed) |A slot for adding text. |
#'
#' @param ... named attributes passed to `htmltools::tag()`
#' @export
#' @return an object of class `calcite_component` which is a subclass of `shiny.tag`
#' @references [Official Documentation](https://developers.arcgis.com/calcite-design-system/components/tooltip/)
#' @examples
#' calcite_tooltip()
calcite_tooltip <- function(...) {
  res <- htmltools::tag(
    "calcite-tooltip",
    rlang::dots_list(..., calcite_dependency(), calcite_bindings())
  )

  class(res) <- c("calcite_component", class(res))
  res
}
#' Create a Tree component
#'
#'
#'
#'
#'
#' @details
#' ## Properties

#' The following properties are provided by this component:

#'  |Name          |Attribute      |Description                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    |Values                                                                                                                       |Reflects to Attribute |
#'  |:-------------|:--------------|:------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|:----------------------------------------------------------------------------------------------------------------------------|:---------------------|
#'  |lines         |lines          |When `true`, displays indentation guide lines.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 |boolean                                                                                                                      |TRUE                  |
#'  |scale         |scale          |Specifies the size of the component.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           |"l" &#124; "m" &#124; "s"                                                                                                    |TRUE                  |
#'  |selectedItems |NA             |Specifies the component's selected items.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      |Check API reference                                                                                                          |FALSE                 |
#'  |selectionMode |selection-mode |Specifies the selection mode of the component, where:  `"ancestors"` displays with a checkbox and allows any number of selections from corresponding parent and child selections,  `"children"` allows any number of selections from one parent from corresponding parent and child selections,  `"multichildren"` allows any number of selections from corresponding parent and child selections,  `"multiple"` allows any number of selections,  `"none"` allows no selections,  `"single"` allows one selection, and  `"single-persist"` allows and requires one selection. |"ancestors" &#124; "children" &#124; "multichildren" &#124; "multiple" &#124; "none" &#124; "single" &#124; "single-persist" |TRUE                  |

#' ## Events

#' The following events are observed by shiny:

#'  |Event             |Description                                                 |
#'  |:-----------------|:-----------------------------------------------------------|
#'  |calciteTreeSelect |Fires when the user selects/deselects `calcite-tree-items`. |

#' ## Slots

#' The following slots are provided by this component:

#'  |Slot              |Description                              |
#'  |:-----------------|:----------------------------------------|
#'  |Default (unnamed) |A slot for `calcite-tree-item` elements. |
#'
#' @param ... named attributes passed to `htmltools::tag()`
#' @export
#' @return an object of class `calcite_component` which is a subclass of `shiny.tag`
#' @references [Official Documentation](https://developers.arcgis.com/calcite-design-system/components/tree/)
#' @examples
#' calcite_tree()
calcite_tree <- function(...) {
  res <- htmltools::tag(
    "calcite-tree",
    rlang::dots_list(..., calcite_dependency(), calcite_bindings())
  )

  class(res) <- c("calcite_component", class(res))
  res
}
#' Create a TreeItem component
#'
#'
#'
#'
#'
#' @details
#' ## Properties

#' The following properties are provided by this component:

#'  |Name        |Attribute     |Description                                                                                  |Values                             |Reflects to Attribute |
#'  |:-----------|:-------------|:--------------------------------------------------------------------------------------------|:----------------------------------|:---------------------|
#'  |disabled    |disabled      |When `true`, interaction is prevented and the component is displayed with lower opacity.     |boolean                            |TRUE                  |
#'  |expanded    |expanded      |When `true`, the component is expanded.                                                      |boolean                            |TRUE                  |
#'  |iconFlipRtl |icon-flip-rtl |When `true`, the icon will be flipped when the element direction is right-to-left (`"rtl"`). |"both" &#124; "end" &#124; "start" |TRUE                  |
#'  |iconStart   |icon-start    |Specifies an icon to display at the start of the component.                                  |string                             |TRUE                  |
#'  |label       |label         |Accessible name for the component.                                                           |string                             |FALSE                 |
#'  |selected    |selected      |When `true`, the component is selected.                                                      |boolean                            |TRUE                  |

#' ## Slots

#' The following slots are provided by this component:

#'  |Slot              |Description                                                                                           |
#'  |:-----------------|:-----------------------------------------------------------------------------------------------------|
#'  |Default (unnamed) |A slot for adding text.                                                                               |
#'  |children          |A slot for adding nested `calcite-tree` elements.                                                     |
#'  |actions-end       |A slot for adding actions to the end of the component. It is recommended to use two or fewer actions. |
#'
#' @param ... named attributes passed to `htmltools::tag()`
#' @export
#' @return an object of class `calcite_component` which is a subclass of `shiny.tag`
#' @references [Official Documentation](https://developers.arcgis.com/calcite-design-system/components/tree-item/)
#' @examples
#' calcite_tree_item()
calcite_tree_item <- function(...) {
  res <- htmltools::tag(
    "calcite-tree-item",
    rlang::dots_list(..., calcite_dependency(), calcite_bindings())
  )

  class(res) <- c("calcite_component", class(res))
  res
}
