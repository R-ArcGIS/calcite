% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/components-generated.R
\name{calcite_carousel_item}
\alias{calcite_carousel_item}
\title{Create a CarouselItem component}
\usage{
calcite_carousel_item(...)
}
\arguments{
\item{...}{named attributes passed to \code{htmltools::tag()}}
}
\value{
an object of class \code{calcite_component} which is a subclass of \code{shiny.tag}
}
\description{
Create a CarouselItem component
}
\details{
\subsection{Properties}{

The following properties are provided by this component:\tabular{lllll}{
   Name \tab Attribute \tab Description \tab Values \tab Reflects to Attribute \cr
   label \tab label \tab Accessible name for the component. \tab string \tab FALSE \cr
   selected \tab selected \tab When \code{true}, the component is selected. \tab boolean \tab TRUE \cr
}

}

\subsection{Slots}{

The following slots are provided by this component:\tabular{ll}{
   Slot \tab Description \cr
   Default (unnamed) \tab A slot for adding content. \cr
}

}
}
\examples{
calcite_carousel_item()
}
\references{
\href{https://developers.arcgis.com/calcite-design-system/components/carousel-item/}{Official Documentation}
}
