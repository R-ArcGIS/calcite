% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/components-generated.R
\name{calcite_table_row}
\alias{calcite_table_row}
\title{Create a TableRow component}
\usage{
calcite_table_row(...)
}
\arguments{
\item{...}{named attributes passed to \code{htmltools::tag()}}
}
\value{
an object of class \code{calcite_component} which is a subclass of \code{shiny.tag}
}
\description{
Create a TableRow component
}
\details{
\subsection{Properties}{

The following properties are provided by this component:\tabular{lllll}{
   Name \tab Attribute \tab Description \tab Values \tab Reflects to Attribute \cr
   alignment \tab alignment \tab Specifies the alignment of the component. \tab "center" | "end" | "start" \tab TRUE \cr
   disabled \tab disabled \tab When \code{true}, interaction is prevented and the component is displayed with lower opacity. \tab boolean \tab TRUE \cr
   selected \tab selected \tab When \code{true}, the component is selected. \tab boolean \tab TRUE \cr
}

}

\subsection{Events}{

The following events are observed by shiny:\tabular{ll}{
   Event \tab Description \cr
   calciteTableRowSelect \tab Fires when the selected state of the component changes. \cr
}

}

\subsection{Slots}{

The following slots are provided by this component:\tabular{ll}{
   Slot \tab Description \cr
   Default (unnamed) \tab A slot for adding \code{calcite-table-cell} or \code{calcite-table-header} elements. \cr
}

}
}
\examples{
calcite_table_row()
}
\references{
\href{https://developers.arcgis.com/calcite-design-system/components/table-row/}{Official Documentation}
}
