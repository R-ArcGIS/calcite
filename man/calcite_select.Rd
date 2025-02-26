% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/components-generated.R
\name{calcite_select}
\alias{calcite_select}
\title{Create a Select component}
\usage{
calcite_select(...)
}
\arguments{
\item{...}{named attributes passed to \code{htmltools::tag()}}
}
\value{
an object of class \code{calcite_component} which is a subclass of \code{shiny.tag}
}
\description{
Create a Select component
}
\details{
\subsection{Properties}{

The following properties are provided by this component:\tabular{lllll}{
   Name \tab Attribute \tab Description \tab Values \tab Reflects to Attribute \cr
   disabled \tab disabled \tab When \code{true}, interaction is prevented and the component is displayed with lower opacity. \tab boolean \tab TRUE \cr
   form \tab form \tab The \code{id} of the form that will be associated with the component.  When not set, the component will be associated with its ancestor form element, if any. \tab string \tab TRUE \cr
   label \tab label \tab Accessible name for the component. \tab string \tab FALSE \cr
   name \tab name \tab Specifies the name of the component.  Required to pass the component's \code{value} on form submission. \tab string \tab TRUE \cr
   required \tab required \tab When \code{true} and the component resides in a form, the component must have a value in order for the form to submit. \tab boolean \tab TRUE \cr
   scale \tab scale \tab Specifies the size of the component. \tab "l" | "m" | "s" \tab TRUE \cr
   selectedOption \tab NA \tab The component's selected option \code{HTMLElement}. \tab HTMLCalciteOptionElement \tab FALSE \cr
   status \tab status \tab Specifies the status of the input field, which determines message and icons. \tab "idle" | "invalid" | "valid" \tab TRUE \cr
   validationIcon \tab validation-icon \tab Specifies the validation icon to display under the component. \tab boolean | string \tab TRUE \cr
   validationMessage \tab validation-message \tab Specifies the validation message to display under the component. \tab string \tab FALSE \cr
   validity \tab NA \tab The current validation state of the component. \tab Check API reference \tab FALSE \cr
   value \tab value \tab The component's \code{selectedOption} value. \tab string \tab FALSE \cr
   width \tab width \tab Check API reference \tab "auto" | "full" | "half" \tab TRUE \cr
}

}

\subsection{Events}{

The following events are observed by shiny:\tabular{ll}{
   Event \tab Description \cr
   calciteSelectChange \tab Fires when the \code{selectedOption} changes. \cr
}

}

\subsection{Slots}{

The following slots are provided by this component:\tabular{ll}{
   Slot \tab Description \cr
   Default (unnamed) \tab A slot for adding \code{calcite-option}s. \cr
}

}
}
\examples{
calcite_select()
}
\references{
\href{https://developers.arcgis.com/calcite-design-system/components/select/}{Official Documentation}
}
