% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/components-generated.R
\name{calcite_chip}
\alias{calcite_chip}
\title{Create a Chip component}
\usage{
calcite_chip(...)
}
\arguments{
\item{...}{named attributes passed to \code{htmltools::tag()}}
}
\value{
an object of class \code{calcite_component} which is a subclass of \code{shiny.tag}
}
\description{
Create a Chip component
}
\details{
\subsection{Properties}{

The following properties are provided by this component:\tabular{lllll}{
   Name \tab Attribute \tab Description \tab Values \tab Reflects to Attribute \cr
   appearance \tab appearance \tab Specifies the appearance style of the component. \tab "outline" | "outline-fill" | "solid" \tab TRUE \cr
   closable \tab closable \tab When \code{true}, a close button is added to the component. \tab boolean \tab TRUE \cr
   closed \tab closed \tab When \code{true}, hides the component. \tab boolean \tab TRUE \cr
   closeOnDelete \tab close-on-delete \tab When \code{true}, the component closes when the Delete or Backspace key is pressed while focused. \tab boolean \tab TRUE \cr
   disabled \tab disabled \tab When \code{true}, interaction is prevented and the component is displayed with lower opacity. \tab boolean \tab TRUE \cr
   icon \tab icon \tab Specifies an icon to display. \tab string \tab TRUE \cr
   iconFlipRtl \tab icon-flip-rtl \tab When \code{true}, the icon will be flipped when the element direction is right-to-left (\code{"rtl"}). \tab boolean \tab TRUE \cr
   kind \tab kind \tab Specifies the kind of the component, which will apply to border and background if applicable. \tab "brand" | "inverse" | "neutral" \tab TRUE \cr
   label \tab label \tab Accessible name for the component. \tab string \tab FALSE \cr
   messageOverrides \tab NA \tab Use this property to override individual strings used by the component. \tab Check API reference \tab FALSE \cr
   scale \tab scale \tab Specifies the size of the component. When contained in a parent \code{calcite-chip-group} inherits the parent's \code{scale} value. \tab "l" | "m" | "s" \tab TRUE \cr
   selected \tab selected \tab When \code{true}, the component is selected. \tab boolean \tab TRUE \cr
   value \tab value \tab The component's value. \tab any \tab FALSE \cr
}

}

\subsection{Events}{

The following events are observed by shiny:\tabular{ll}{
   Event \tab Description \cr
   calciteChipClose \tab Fires when the component's close button is selected. \cr
   calciteChipSelect \tab Fires when the selected state of the component changes. \cr
}

}

\subsection{Slots}{

The following slots are provided by this component:\tabular{ll}{
   Slot \tab Description \cr
   Default (unnamed) \tab A slot for adding text. \cr
   image \tab A slot for adding an image. \cr
}

}
}
\examples{
calcite_chip()
}
\references{
\href{https://developers.arcgis.com/calcite-design-system/components/chip/}{Official Documentation}
}
