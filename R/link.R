#' Create a Calcite Link Component
#'
#' Creates a link component for navigation or performing actions. Links are useful
#' for tertiary-level actions or inline navigation within text.
#'
#' @param text The link text to display (required)
#' @param href The URL of the linked resource (required) - can be absolute or relative path
#' @param id Component ID (optional)
#' @param disabled When TRUE, interaction is prevented and the component is displayed
#'   with lower opacity (default: FALSE)
#' @param download Prompts the user to save the linked URL instead of navigating to it.
#'   Can be TRUE or a string filename
#' @param icon_end Specifies an icon to display at the end of the link
#' @param icon_flip_rtl Displays the iconStart and/or iconEnd as flipped when the
#'   element direction is RTL: "both", "end", or "start"
#' @param icon_start Specifies an icon to display at the start of the link
#' @param rel Specifies the relationship to the linked document (e.g., "noopener", "noreferrer")
#' @param target Specifies the frame or window to open the linked document
#'   (e.g., "_blank", "_self", "_parent", "_top")
#'
#' @details
#' ## Usage Guidelines
#'
#' **Use Links for:**
#' - Navigation to another page or section
#' - Tertiary-level actions in a group
#' - Inline actions within sentences
#'
#' **Use Buttons instead for:**
#' - Primary actions like "Create", "Submit", "Upload"
#' - Task completion actions
#' - Prominent calls to action
#'
#' ## Best Practices
#'
#' - Avoid making entire sentences into links
#' - Link text should be descriptive of the destination
#' - Use `target = "_blank"` with `rel = "noopener noreferrer"` for external links
#'
#' @export
#' @return An object of class `calcite_component`
#' @references [Official Documentation](https://developers.arcgis.com/calcite-design-system/components/link/)
#' @examples
#' # Basic link
#' calcite_link(
#'   text = "View documentation",
#'   href = "https://developers.arcgis.com/calcite-design-system/"
#' )
#'
#' # Link with icon
#' calcite_link(
#'   text = "External site",
#'   href = "https://example.com",
#'   icon_end = "launch",
#'   target = "_blank",
#'   rel = "noopener noreferrer"
#' )
#'
#' # Download link
#' calcite_link(
#'   text = "Download report",
#'   href = "/files/report.pdf",
#'   download = "monthly-report.pdf",
#'   icon_start = "download"
#' )
#'
#' # Disabled link
#' calcite_link(
#'   text = "Coming soon",
#'   href = "#",
#'   disabled = TRUE
#' )
calcite_link <- function(
  text,
  href,
  id = NULL,
  disabled = NULL,
  download = NULL,
  icon_end = NULL,
  icon_flip_rtl = NULL,
  icon_start = NULL,
  rel = NULL,
  target = NULL
) {
  # Validate icon_flip_rtl if provided
  if (!is.null(icon_flip_rtl)) {
    icon_flip_rtl <- rlang::arg_match(icon_flip_rtl, c("both", "end", "start"))
  }

  # Build attributes list
  attribs <- compact(list(
    id = id,
    href = href,
    disabled = disabled,
    download = download,
    `icon-end` = icon_end,
    `icon-flip-rtl` = icon_flip_rtl,
    `icon-start` = icon_start,
    rel = rel,
    target = target
  ))

  res <- htmltools::tag(
    "calcite-link",
    c(
      attribs,
      list(text, calcite_dependency())
    )
  )

  class(res) <- c("calcite_component", class(res))
  res
}
