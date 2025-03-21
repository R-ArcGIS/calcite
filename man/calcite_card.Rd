% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/components-generated.R
\name{calcite_card}
\alias{calcite_card}
\title{Create a Card component}
\usage{
calcite_card(...)
}
\arguments{
\item{...}{named attributes passed to \code{htmltools::tag()}}
}
\value{
an object of class \code{calcite_component} which is a subclass of \code{shiny.tag}
}
\description{
Create a Card component
}
\details{
\subsection{Properties}{

The following properties are provided by this component:\tabular{lllll}{
   Name \tab Attribute \tab Description \tab Values \tab Reflects to Attribute \cr
   disabled \tab disabled \tab When \code{true}, interaction is prevented and the component is displayed with lower opacity. \tab boolean \tab TRUE \cr
   label \tab label \tab Accessible name for the component. \tab string \tab FALSE \cr
   loading \tab loading \tab When \code{true}, a busy indicator is displayed. \tab boolean \tab TRUE \cr
   messageOverrides \tab NA \tab Use this property to override individual strings used by the component. \tab Check API reference \tab FALSE \cr
   selectable \tab selectable \tab When \code{true}, the component is selectable. \tab boolean \tab TRUE \cr
   selected \tab selected \tab When \code{true}, the component is selected. \tab boolean \tab TRUE \cr
   thumbnailPosition \tab thumbnail-position \tab Sets the placement of the thumbnail defined in the \code{thumbnail} slot. \tab "block-end" | "block-start" | "inline-end" | "inline-start" \tab TRUE \cr
}

}

\subsection{Events}{

The following events are observed by shiny:\tabular{ll}{
   Event \tab Description \cr
   calciteCardSelect \tab Fires when the deprecated \code{selectable} is true, or \code{selectionMode} set on parent \code{calcite-card-group} is not \code{none} and the component is selected. \cr
}

}

\subsection{Slots}{

The following slots are provided by this component:\tabular{ll}{
   Slot \tab Description \cr
   Default (unnamed) \tab A slot for adding content. \cr
   title \tab \link{Deprecated} use \code{heading} instead. A slot for adding a heading. \cr
   subtitle \tab \link{Deprecated} use \code{description} instead. A slot for adding a description. \cr
   thumbnail \tab A slot for adding a thumbnail. \cr
   heading \tab A slot for adding a heading. \cr
   description \tab A slot for adding a description. \cr
   footer-start \tab A slot for adding a leading footer. \cr
   footer-end \tab A slot for adding a trailing footer. \cr
}

}
}
\examples{
calcite_card()
}
\references{
\href{https://developers.arcgis.com/calcite-design-system/components/card/}{Official Documentation}
}
