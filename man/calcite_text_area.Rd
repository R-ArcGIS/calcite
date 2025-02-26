% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/components-generated.R
\name{calcite_text_area}
\alias{calcite_text_area}
\title{Create a TextArea component}
\usage{
calcite_text_area(...)
}
\arguments{
\item{...}{named attributes passed to \code{htmltools::tag()}}
}
\value{
an object of class \code{calcite_component} which is a subclass of \code{shiny.tag}
}
\description{
Create a TextArea component
}
\details{
\subsection{Properties}{

The following properties are provided by this component:\tabular{lllll}{
   Name \tab Attribute \tab Description \tab Values \tab Reflects to Attribute \cr
   columns \tab columns \tab Specifies the component's number of columns. \tab number \tab TRUE \cr
   disabled \tab disabled \tab When \code{true}, interaction is prevented and the component is displayed with lower opacity. \tab boolean \tab TRUE \cr
   form \tab form \tab The \code{id} of the form that will be associated with the component.  When not set, the component will be associated with its ancestor form element, if any. \tab string \tab TRUE \cr
   groupSeparator \tab group-separator \tab When \code{true}, number values are displayed with a group separator corresponding to the language and country format. \tab boolean \tab TRUE \cr
   label \tab label \tab Accessible name for the component. \tab string \tab FALSE \cr
   limitText \tab limit-text \tab Check API reference \tab boolean \tab TRUE \cr
   maxLength \tab max-length \tab When the component resides in a form, specifies the maximum number of characters allowed. \tab number \tab TRUE \cr
   messageOverrides \tab NA \tab Use this property to override individual strings used by the component. \tab Check API reference \tab FALSE \cr
   minLength \tab min-length \tab When the component resides in a form, specifies the minimum number of characters allowed. \tab number \tab TRUE \cr
   name \tab name \tab Specifies the name of the component. \tab string \tab TRUE \cr
   numberingSystem \tab numbering-system \tab Specifies the Unicode numeral system used by the component for localization. \tab "arab" | "arabext" | "latn" \tab FALSE \cr
   placeholder \tab placeholder \tab Specifies the placeholder text for the component. \tab string \tab FALSE \cr
   readOnly \tab read-only \tab When \code{true}, the component's \code{value} can be read, but cannot be modified. \tab boolean \tab TRUE \cr
   required \tab required \tab When \code{true} and the component resides in a form, the component must have a value in order for the form to submit. \tab boolean \tab TRUE \cr
   resize \tab resize \tab Specifies if the component is resizable. \tab "both" | "horizontal" | "none" | "vertical" \tab TRUE \cr
   rows \tab rows \tab Specifies the component's number of rows. \tab number \tab TRUE \cr
   scale \tab scale \tab Specifies the size of the component. \tab "l" | "m" | "s" \tab TRUE \cr
   status \tab status \tab Specifies the status of the input field, which determines message and icons. \tab "idle" | "invalid" | "valid" \tab TRUE \cr
   validationIcon \tab validation-icon \tab Specifies the validation icon to display under the component. \tab boolean | string \tab TRUE \cr
   validationMessage \tab validation-message \tab Specifies the validation message to display under the component. \tab string \tab FALSE \cr
   validity \tab NA \tab The current validation state of the component. \tab Check API reference \tab FALSE \cr
   value \tab value \tab The component's value. \tab string \tab FALSE \cr
   wrap \tab wrap \tab Specifies the wrapping mechanism for the text. \tab "hard" | "soft" \tab TRUE \cr
}

}

\subsection{Events}{

The following events are observed by shiny:\tabular{ll}{
   Event \tab Description \cr
   calciteTextAreaChange \tab Fires each time a new \code{value} is typed and committed. \cr
   calciteTextAreaInput \tab Fires each time a new \code{value} is typed. \cr
}

}

\subsection{Slots}{

The following slots are provided by this component:\tabular{ll}{
   Slot \tab Description \cr
   Default (unnamed) \tab A slot for adding text. \cr
   footer-start \tab A slot for adding content to the start of the component's footer. \cr
   footer-end \tab A slot for adding content to the end of the component's footer. \cr
}

}
}
\examples{
calcite_text_area()
}
\references{
\href{https://developers.arcgis.com/calcite-design-system/components/text-area/}{Official Documentation}
}
