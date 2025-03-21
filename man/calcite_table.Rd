% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/components-generated.R
\name{calcite_table}
\alias{calcite_table}
\title{Create a Table component}
\usage{
calcite_table(...)
}
\arguments{
\item{...}{named attributes passed to \code{htmltools::tag()}}
}
\value{
an object of class \code{calcite_component} which is a subclass of \code{shiny.tag}
}
\description{
Create a Table component
}
\details{
\subsection{Properties}{

The following properties are provided by this component:\tabular{lllll}{
   Name \tab Attribute \tab Description \tab Values \tab Reflects to Attribute \cr
   bordered \tab bordered \tab When \code{true}, displays borders in the component. \tab boolean \tab TRUE \cr
   caption \tab caption \tab Specifies an accessible title for the component. \tab string \tab FALSE \cr
   groupSeparator \tab group-separator \tab When \code{true}, number values are displayed with a group separator corresponding to the language and country format. \tab boolean \tab TRUE \cr
   interactionMode \tab interaction-mode \tab When \code{"interactive"}, allows focus and keyboard navigation of \code{table-header}s and \code{table-cell}s.  When \code{"static"}, prevents focus and keyboard navigation of \code{table-header}s and \code{table-cell}s when assistive technologies are not active. Selection affordances and slotted content within \code{table-cell}s remain focusable. \tab "interactive" | "static" \tab TRUE \cr
   layout \tab layout \tab Specifies the layout of the component. \tab "auto" | "fixed" \tab TRUE \cr
   messageOverrides \tab NA \tab Use this property to override individual strings used by the component. \tab Check API reference \tab FALSE \cr
   numbered \tab numbered \tab When \code{true}, displays the position of the row in numeric form. \tab boolean \tab TRUE \cr
   numberingSystem \tab numbering-system \tab Specifies the Unicode numeral system used by the component for localization. \tab "arab" | "arabext" | "latn" \tab TRUE \cr
   pageSize \tab page-size \tab Specifies the page size of the component. When \code{true}, renders \code{calcite-pagination}. \tab number \tab TRUE \cr
   scale \tab scale \tab Specifies the size of the component. \tab "l" | "m" | "s" \tab TRUE \cr
   selectedItems \tab NA \tab Specifies the component's selected items. \tab Check API reference \tab FALSE \cr
   selectionDisplay \tab selection-display \tab Specifies the display of the selection interface when \code{selection-mode} is not \code{"none"}. When \code{"none"}, content slotted the \code{selection-actions} slot will not be displayed. \tab "none" | "top" \tab TRUE \cr
   selectionMode \tab selection-mode \tab Specifies the selection mode of the component, where:  \code{"multiple"} allows any number of selections,  \code{"single"} allows only one selection, and  \code{"none"} does not allow any selections. \tab "multiple" | "none" | "single" \tab TRUE \cr
   striped \tab striped \tab When \code{true}, displays striped styling in the component. \tab boolean \tab TRUE \cr
}

}

\subsection{Events}{

The following events are observed by shiny:\tabular{ll}{
   Event \tab Description \cr
   calciteTablePageChange \tab Emits when the component's page selection changes. \cr
   calciteTableSelect \tab Emits when the component's selected rows change. \cr
}

}

\subsection{Slots}{

The following slots are provided by this component:\tabular{ll}{
   Slot \tab Description \cr
   Default (unnamed) \tab A slot for adding \code{calcite-table-row} elements containing \code{calcite-table-cell} and/or \code{calcite-table-header} elements. \cr
   table-header \tab A slot for adding \code{calcite-table-row} elements containing \code{calcite-table-header} elements. \cr
   table-footer \tab A slot for adding \code{calcite-table-row} elements containing \code{calcite-table-cell} and/or \code{calcite-table-header} elements. \cr
   selection-actions \tab A slot for adding \code{calcite-actions} or other elements to display when \code{selectionMode} is not \code{"none"} and \code{selectionDisplay} is not \code{"none"}. \cr
}

}
}
\examples{
calcite_table()
}
\references{
\href{https://developers.arcgis.com/calcite-design-system/components/table/}{Official Documentation}
}
