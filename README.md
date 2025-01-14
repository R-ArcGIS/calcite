
# Calcite Design System for R

The `{calcite}` package provides R bindings to Esri’s [Calcite Design
System](https://developers.arcgis.com/calcite-design-system/) designed
to work directly with shiny or standalone html.

## Installation

The `{calcite}` package is available on GitHub. Install it using the
following command

``` r
remotes::install_github("r-arcgis/calcite")
```

## Usage

`{calcite}` consists of many components. See them all in the [official
documntation](https://developers.arcgis.com/calcite-design-system/components/).

Use the calcite components to scaffold the UI of your application. The
below replicates the [navigation
example](https://developers.arcgis.com/calcite-design-system/components/navigation).

``` r
library(calcite)

calcite_shell(
  calcite_navigation(
    slot = "header",
    calcite_navigation_logo(
      slot = "logo",
      heading = "Snow Plow Map",
      description = "City of AcmeCo"
    ),
    calcite_menu(
      slot = "content-end",
      calcite_menu_item(text = "Drivers", `icon-start` = "license", `text-enabled` = TRUE),
      calcite_menu_item(text = "Routes", `icon-start` = "road-sign", `text-enabled` = TRUE),
      calcite_menu_item(text = "Forecast", `icon-start` = "snow", `text-enabled` = TRUE)
    ),
    calcite_navigation(
      slot = "navigation-secondary",
      calcite_menu(
        slot = "content-start",
        calcite_menu_item(breadcrumb = TRUE, text = "All Routes", `icon-start` = "book", `text-enabled` = TRUE),
        calcite_menu_item(breadcrumb = TRUE, text = "South Hills", `icon-start` = "apps", `text-enabled` = TRUE, active = TRUE)
      )
    ),
    calcite_navigation_user(slot = "user", `full-name` = "Wendell Berry", username = "w_berry")
  )
)
```

![](images/paste-1.png)

## Setting Attributes

Each component has attributes that can be set in their corresponding
function. The `calcite_{component}()` functions take `...` as their only
argument. To set attributes, they must be passed in as named values to
the function.

For example to use the [**Calcite UI
Icons**](https://developers.arcgis.com/calcite-design-system/icons), the
`icon` attribute must be set.

``` r
calcite_icon(icon = "coordinate-system")
```

<svg aria-hidden="true" class="svg" fill="currentColor" height="100%" viewBox="0 0 24 24" width="100%" xmlns="http://www.w3.org/2000/svg">

<path d="M19.899 4.65h-.001c-.3-.321-.614-.63-.95-.914l-.004-.002a10.76 10.76 0 0 0-1.933-1.297c-.016-.009-.033-.015-.047-.022-.109-.056-.219-.106-.33-.16-.178-.084-.355-.17-.537-.245-.049-.02-.1-.036-.149-.055-.061-.024-.124-.045-.186-.068l-.004-.001c-.204-.077-.41-.156-.62-.219-.1-.03-.203-.05-.303-.079-.234-.063-.465-.128-.704-.176-.17-.034-.344-.054-.516-.079-.177-.026-.351-.061-.53-.078a10.666 10.666 0 0 0-2.17 0c-.177.017-.348.051-.524.078-.173.025-.352.045-.523.079-.24.048-.47.113-.705.176-.099.03-.2.048-.3.079-.198.06-.388.133-.58.203-.077.029-.154.055-.231.085-.05.019-.1.034-.15.055a10.32 10.32 0 0 0-.865.405l-.049.023a10.835 10.835 0 0 0-2.442 1.758c-.187.179-.365.368-.539.56h-.002a10.752 10.752 0 0 0-2.567 9.494l.007.083a10.734 10.734 0 0 0 .92 2.532c.074.143.147.287.225.427.005.005.008.014.012.02 0 .002.003 0 .003.003C4.46 20.587 7.969 22.8 12 22.8c5.964 0 10.8-4.835 10.8-10.8 0-2.843-1.106-5.42-2.901-7.35zM14.71 21.725c.135-.992.23-2.012.283-3.054a13.236 13.236 0 0 0 3.096-1.104 13.97 13.97 0 0 1-.983 3.14 10.01 10.01 0 0 1-2.396 1.018zm.32-3.717c.019-.514.029-1.032.029-1.554 0-.765-.023-1.526-.068-2.278a13.454 13.454 0 0 0 3.354-1.054c.031.414.052.832.052 1.26 0 .842-.067 1.672-.187 2.477a12.71 12.71 0 0 1-3.18 1.149zm-8.3 2.6a13.926 13.926 0 0 1-.95-3.104c.98.51 2.062.907 3.217 1.166a37.22 37.22 0 0 0 .284 3.052 10 10 0 0 1-2.552-1.114zm-1.07-3.82a16.902 16.902 0 0 1-.176-2.406c0-.445.024-.88.058-1.312 1.007.492 2.178.872 3.46 1.105a39.004 39.004 0 0 0-.04 3.831 12.6 12.6 0 0 1-3.302-1.218zM4.238 5.535c.027.383.142.754.348 1.104a10.275 10.275 0 0 0-2.15 3.08c-.065-.111-.131-.222-.184-.338a10.082 10.082 0 0 1 1.986-3.846zm17.51 3.846c-.035.077-.081.148-.12.223a10.254 10.254 0 0 0-2.174-3.04c.178-.328.283-.674.307-1.031a10.06 10.06 0 0 1 1.986 3.848zm.109.422c.047.213.083.432.116.65-.057-.16-.127-.316-.192-.473.025-.06.052-.117.076-.177zM8.865 3.987c0-.061.023-.12.04-.181.58-.054 1.123-.08 1.617-.07-.56.079-1.109.188-1.634.35-.006-.034-.023-.065-.023-.099zm-.299-.673c-.657.038-1.353.113-2.081.226.64-.418 1.33-.757 2.06-1.024.293.077.579.158.852.242a2.829 2.829 0 0 0-.83.556zm1.378-.372c.406.144.782.295 1.117.457-.53-.081-1.12-.117-1.76-.11.172-.131.388-.247.643-.347zm5.191 1.045c0 .021-.011.042-.013.064-.479-.14-.977-.236-1.48-.31.443-.015.93 0 1.446.041a.614.614 0 0 1 .047.205zM8.83 5.236c.43.318 1.045.565 1.767.706-.32.816-.6 1.744-.834 2.755-1.083-.166-2.054-.448-2.85-.817.528-1.07 1.18-1.97 1.917-2.644zm3.523-1.308c.763.082 1.497.384 2.175.878-.354.215-.84.383-1.408.48a8.69 8.69 0 0 0-.767-1.358zm.325 1.419A7.045 7.045 0 0 1 12 5.38a7.19 7.19 0 0 1-.683-.035c.211-.535.438-1 .68-1.393.242.393.47.858.68 1.395zm-1.8-.062c-.602-.103-1.116-.283-1.473-.517.699-.497 1.457-.788 2.246-.85-.276.39-.534.846-.773 1.367zm.198.733c.297.037.607.06.925.06.316 0 .623-.023.92-.059.269.812.506 1.738.702 2.757a15.122 15.122 0 0 1-3.25-.001c.197-1.02.433-1.946.703-2.757zm2.323-.075c.687-.134 1.277-.365 1.706-.66.725.676 1.368 1.575 1.889 2.64-.78.348-1.718.617-2.761.776a19.771 19.771 0 0 0-.834-2.756zM15.442 5c.115-.117.204-.24.27-.368a9.752 9.752 0 0 1 3.07 2.05c-.304.36-.732.69-1.256.977-.574-1.074-1.281-1.98-2.084-2.66zm-.586-.443a6.081 6.081 0 0 0-.743-.434c.302.068.598.148.89.242a1.02 1.02 0 0 1-.147.192zm-.212-1.782c.27-.085.557-.166.85-.244.678.25 1.323.567 1.922.95-.7-.098-1.37-.16-1.999-.184a2.905 2.905 0 0 0-.773-.522zm.054.512c-.637.008-1.226.056-1.745.154.345-.169.73-.33 1.149-.482.236.096.435.206.596.328zm-2.6.305c-.001-.003-.006-.002-.009-.004-.005-.003-.004-.011-.01-.016a.14.14 0 0 0-.077-.026l-.006-.002c-.014 0-.029.01-.041.014a7.72 7.72 0 0 0-1.35-.813 6.429 6.429 0 0 1 2.854.016 7.484 7.484 0 0 0-1.36.831zm-2.532.646a5.65 5.65 0 0 0-.47.27c-.032-.036-.05-.072-.076-.11.18-.06.362-.11.546-.16zm-1.06.706c-.819.676-1.539 1.584-2.122 2.668-.457-.261-.838-.554-1.12-.87a9.734 9.734 0 0 1 3.044-2.074c.051.095.117.187.197.276zM6.131 8.118a13.841 13.841 0 0 0-1.178 3.941c-.823-.468-1.512-1.019-2.023-1.629a10.085 10.085 0 0 1 1.994-3.323c.313.368.72.708 1.207 1.01zm.53.296c.833.425 1.838.753 2.956.945a33.434 33.434 0 0 0-.57 4.124c-1.274-.227-2.437-.6-3.44-1.083A14.4 14.4 0 0 1 6.66 8.414zm3.59 1.037c.562.07 1.147.11 1.748.11.6 0 1.181-.04 1.743-.109.215 1.278.37 2.674.455 4.144a17.04 17.04 0 0 1-2.198.146c-.757 0-1.493-.054-2.204-.147.085-1.47.24-2.867.455-4.145zm4.123-.09c1.08-.187 2.053-.498 2.868-.901.507 1.182.867 2.536 1.039 3.995-.98.458-2.11.81-3.336 1.03a33.584 33.584 0 0 0-.571-4.125zm3.405-1.19c.555-.333 1.015-.71 1.35-1.127a10.087 10.087 0 0 1 2.017 3.29c-.542.676-1.291 1.28-2.205 1.788A13.903 13.903 0 0 0 17.78 8.17zm1.536-2.79c0 .295-.085.58-.23.854A10.476 10.476 0 0 0 15.82 4.29c.004-.043.012-.086.012-.128 0-.11-.023-.215-.055-.319.859.098 1.795.26 2.784.482.246.213.482.433.707.667.03.129.048.257.048.388zM14.64 2.257c-.23.084-.45.174-.662.264A6.898 6.898 0 0 0 12 2.245c-.702 0-1.357.095-1.921.26a17.23 17.23 0 0 0-.662-.263A10.108 10.108 0 0 1 12 1.897c.915 0 1.797.132 2.64.36zM5.342 4.415a27.6 27.6 0 0 1 2.87-.532.98.98 0 0 0-.044.279c0 .06.008.117.017.174a10.502 10.502 0 0 0-3.23 1.973 1.825 1.825 0 0 1-.27-.929c0-.131.017-.26.047-.388.194-.201.4-.393.61-.577zm-3.07 5.684a9.35 9.35 0 0 0-.326.93c.04-.416.11-.825.197-1.226.039.1.083.198.13.296zm.037 3.818c0-1.05.16-2.06.45-3.011.513.679 1.231 1.29 2.115 1.808a16.369 16.369 0 0 0-.097 1.695c0 .652.042 1.294.116 1.922-1.034-.671-1.915-1.484-2.583-2.405v-.01zm7.409 2.333c0-.663.013-1.319.042-1.962a16.905 16.905 0 0 0 4.474.001 43.999 43.999 0 0 1-.002 3.867c-.72.115-1.465.182-2.232.182a14.11 14.11 0 0 1-2.238-.183 44.589 44.589 0 0 1-.044-1.905zm9.299-3.478c.976-.552 1.767-1.218 2.3-1.963.297.938.465 1.936.477 2.97-.705 1.019-1.664 1.913-2.813 2.634a16.03 16.03 0 0 0 .128-2.004c0-.558-.038-1.101-.092-1.637zM2.389 15.109c-.012-.101-.028-.205-.037-.307.711.848 1.608 1.613 2.644 2.254.172 1.024.448 2.003.818 2.92a10.116 10.116 0 0 1-3.425-4.867zm7.7 6.808a39.796 39.796 0 0 1-.294-3.095c.714.117 1.45.184 2.205.184.753 0 1.487-.067 2.2-.182a39.72 39.72 0 0 1-.295 3.094 10.12 10.12 0 0 1-1.905.185 10.11 10.11 0 0 1-1.912-.186zm7.938-1.823c.386-.925.673-1.917.852-2.962 1.129-.68 2.094-1.509 2.847-2.43a10.095 10.095 0 0 1-3.699 5.392z"></path>
</svg>

## Accessing Properties

The properties of each component is accessible via the `input` argument
in a shiny `server` function. They can be accessed in the format of
`input${id}_{property}`. Which returns a `list` with one element
`values`.

In the below example a `calcite_block()` is created with an id of
`block_container`. The `open` property can be observed and fetched using
`input$block_container_open`.

``` r
library(calcite)

ui <- calcite_shell(
  calcite_block(
    id = "block_container",
    collapsible = TRUE,
    heading = "Example Block",
    calcite_notice(open = TRUE, div(slot = "message", "User layer effects sparingly, for emphasis"))
  )
)

server <- function(input, output, session) {
  observeEvent(input$block_container_open, {
    is_open <- input$block_container_open$values
    cat(
      sprintf("Calcite block is %s\n", ifelse(is_open, "open", "closed"))
    )
  })
}

shiny::shinyApp(ui, server)
```

Opening and closing the block writes to the console:

    Listening on http://127.0.0.1:3086
    Calcite block is open
    Calcite block is closed
    Calcite block is open
    Calcite block is closed

## Updating properties

Properties can be updated using the `update_calcite()` function which
requires the `id` of the element to update and then named values pass to
`...`.

In this example we create a checkbox and an alert. When the checkbox is
checked we show the alert by updating the `open` property using
`update_calcite()`

``` r
ui <- calcite_shell(
  calcite_card(
    heading = "Content",
    calcite_label(
      layout = "inline",
      calcite_checkbox(id = "checked"),
      "Click me"
    )
  ),
  calcite_notice(
    id = "initial-note",
    div(slot = "title", "Nice!"),
    div(slot = "message", "This is a success message")
  )
)

server <- function(input, output, session) {
  observeEvent(input$checked_checked, {
    checked <- input$checked_checked$values
    # Update the `initial-note` property here
    update_calcite("initial-note", open = checked)
  })
}

shiny::shinyApp(ui, server)
```
