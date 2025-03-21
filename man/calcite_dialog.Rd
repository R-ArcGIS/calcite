% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/components-generated.R
\name{calcite_dialog}
\alias{calcite_dialog}
\title{Create a Dialog component}
\usage{
calcite_dialog(...)
}
\arguments{
\item{...}{named attributes passed to \code{htmltools::tag()}}
}
\value{
an object of class \code{calcite_component} which is a subclass of \code{shiny.tag}
}
\description{
Create a Dialog component
}
\details{
\subsection{Properties}{

The following properties are provided by this component:\tabular{lllll}{
   Name \tab Attribute \tab Description \tab Values \tab Reflects to Attribute \cr
   beforeClose \tab NA \tab Passes a function to run before the component closes. \tab Check API reference \tab FALSE \cr
   closeDisabled \tab close-disabled \tab When \code{true}, disables the component's close button. \tab boolean \tab TRUE \cr
   description \tab description \tab A description for the component. \tab string \tab FALSE \cr
   dragEnabled \tab drag-enabled \tab When \code{true}, the component is draggable. \tab boolean \tab TRUE \cr
   escapeDisabled \tab escape-disabled \tab When \code{true}, disables the default close on escape behavior.  By default, an open dialog can be dismissed by pressing the Esc key. \tab boolean \tab TRUE \cr
   heading \tab heading \tab The component header text. \tab string \tab FALSE \cr
   headingLevel \tab heading-level \tab Specifies the heading level of the component's \code{heading} for proper document structure, without affecting visual styling. \tab 1 | 2 | 3 | 4 | 5 | 6 \tab TRUE \cr
   kind \tab kind \tab Specifies the kind of the component, which will style the top border. \tab "brand" | "danger" | "info" | "success" | "warning" \tab TRUE \cr
   loading \tab loading \tab When \code{true}, a busy indicator is displayed. \tab boolean \tab TRUE \cr
   menuOpen \tab menu-open \tab When \code{true}, the action menu items in the \code{header-menu-actions} slot are open. \tab boolean \tab TRUE \cr
   messageOverrides \tab NA \tab Use this property to override individual strings used by the component. \tab Check API reference \tab FALSE \cr
   modal \tab modal \tab When \code{true}, displays a scrim blocking interaction underneath the component. \tab boolean \tab TRUE \cr
   open \tab open \tab When \code{true}, displays and positions the component. \tab boolean \tab TRUE \cr
   outsideCloseDisabled \tab outside-close-disabled \tab When \code{true}, disables the closing of the component when clicked outside. \tab boolean \tab TRUE \cr
   overlayPositioning \tab overlay-positioning \tab Determines the type of positioning to use for the overlaid content.  Using \code{"absolute"} will work for most cases. The component will be positioned inside of overflowing parent containers and will affect the container's layout.  \code{"fixed"} should be used to escape an overflowing parent container, or when the reference element's \code{position} CSS property is \code{"fixed"}. \tab "absolute" | "fixed" \tab TRUE \cr
   placement \tab placement \tab Specifies the placement of the dialog. \tab "bottom" | "bottom-end" | "bottom-start" | "center" | "cover" | "top" | "top-end" | "top-start" \tab TRUE \cr
   resizable \tab resizable \tab When \code{true}, the component is resizable. \tab boolean \tab TRUE \cr
   scale \tab scale \tab Specifies the size of the component. \tab "l" | "m" | "s" \tab TRUE \cr
   width \tab width \tab Specifies the width of the component. \tab "l" | "m" | "s" \tab TRUE \cr
   widthScale \tab width-scale \tab Specifies the width of the component. \tab "l" | "m" | "s" \tab TRUE \cr
}

}

\subsection{Events}{

The following events are observed by shiny:\tabular{ll}{
   Event \tab Description \cr
   calciteDialogBeforeClose \tab Fires when the component is requested to be closed and before the closing transition begins. \cr
   calciteDialogBeforeOpen \tab Fires when the component is added to the DOM but not rendered, and before the opening transition begins. \cr
   calciteDialogClose \tab Fires when the component is closed and animation is complete. \cr
   calciteDialogOpen \tab Fires when the component is open and animation is complete. \cr
   calciteDialogScroll \tab Fires when the content is scrolled. \cr
}

}

\subsection{Slots}{

The following slots are provided by this component:\tabular{ll}{
   Slot \tab Description \cr
   Default (unnamed) \tab A slot for adding content. \cr
   content \tab \link{Deprecated} Use \code{custom-content} slot instead. \cr
   custom-content \tab A slot for displaying custom content. Will prevent the rendering of any default Dialog UI, except for \code{box-shadow} and \code{corner-radius}. \cr
   action-bar \tab A slot for adding a \code{calcite-action-bar} to the component. \cr
   alerts \tab A slot for adding \code{calcite-alert}s to the component. \cr
   content-bottom \tab A slot for adding content below the unnamed (default) slot and - if populated - the \code{footer} slot. \cr
   content-top \tab A slot for adding content above the unnamed (default) slot and - if populated - below the \code{action-bar} slot. \cr
   header-actions-start \tab A slot for adding actions or content to the starting side of the component's header. \cr
   header-actions-end \tab A slot for adding actions or content to the ending side of the component's header. \cr
   header-content \tab A slot for adding custom content to the component's header. \cr
   header-menu-actions \tab A slot for adding an overflow menu with actions inside a \code{calcite-dropdown}. \cr
   fab \tab A slot for adding a \code{calcite-fab} (floating action button) to perform an action. \cr
   footer \tab A slot for adding custom content to the component's footer. Should not be used with the \code{"footer-start"} or \code{"footer-end"} slots. \cr
   footer-end \tab A slot for adding a trailing footer custom content. Should not be used with the \code{"footer"} slot. \cr
   footer-start \tab A slot for adding a leading footer custom content. Should not be used with the \code{"footer"} slot. \cr
}

}
}
\examples{
calcite_dialog()
}
\references{
\href{https://developers.arcgis.com/calcite-design-system/components/dialog/}{Official Documentation}
}
