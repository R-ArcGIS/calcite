% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/components-generated.R
\name{calcite_table_header}
\alias{calcite_table_header}
\title{Create a TableHeader component}
\usage{
calcite_table_header(...)
}
\arguments{
\item{...}{named attributes passed to \code{htmltools::tag()}}
}
\value{
an object of class \code{calcite_component} which is a subclass of \code{shiny.tag}
}
\description{
Create a TableHeader component
}
\details{
\subsection{Properties}{

The following properties are provided by this component:\tabular{lllll}{
   Name \tab Attribute \tab Description \tab Values \tab Reflects to Attribute \cr
   alignment \tab alignment \tab Specifies the alignment of the component. \tab "center" | "end" | "start" \tab TRUE \cr
   colSpan \tab col-span \tab Specifies the number of columns the component should span. \tab number \tab TRUE \cr
   description \tab description \tab A description to display beneath heading content. \tab string \tab TRUE \cr
   heading \tab heading \tab A heading to display above description content. \tab string \tab TRUE \cr
   messageOverrides \tab NA \tab Use this property to override individual strings used by the component. \tab Check API reference \tab FALSE \cr
   rowSpan \tab row-span \tab Specifies the number of rows the component should span. \tab number \tab TRUE \cr
}

}
}
\examples{
calcite_table_header()
}
\references{
\href{https://developers.arcgis.com/calcite-design-system/components/table-header/}{Official Documentation}
}
