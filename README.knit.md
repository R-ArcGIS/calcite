---
format: gfm
prefer-html: true
---



# Calcite Design System for R 

The `{calcite}` package provides R bindings to Esri's [Calcite Design System](https://developers.arcgis.com/calcite-design-system/) designed to work directly with shiny or standalone html. 

## Installation 



::: {.cell}

```{.r .cell-code}
remotes::install_github("r-arcgis/calcite")
```
:::



## Usage 




```{.r .cell-code}
library(calcite)
# https://developers.arcgis.com/calcite-design-system/components/navigation
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
      calcite_menu_item(text = "Drivers", "icon-start" = "license", "text-enabled" = TRUE),
      calcite_menu_item(text = "Routes", "icon-start" = "road-sign", "text-enabled" = TRUE),
      calcite_menu_item(text = "Forecast", "icon-start" = "snow", "text-enabled" = TRUE)
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

```
Warning in file(con, "r"): file("") only supports open = "w+" and open = "w+b":
using the former
Warning in file(con, "r"): file("") only supports open = "w+" and open = "w+b":
using the former
Warning in file(con, "r"): file("") only supports open = "w+" and open = "w+b":
using the former
Warning in file(con, "r"): file("") only supports open = "w+" and open = "w+b":
using the former
Warning in file(con, "r"): file("") only supports open = "w+" and open = "w+b":
using the former
Warning in file(con, "r"): file("") only supports open = "w+" and open = "w+b":
using the former
Warning in file(con, "r"): file("") only supports open = "w+" and open = "w+b":
using the former
Warning in file(con, "r"): file("") only supports open = "w+" and open = "w+b":
using the former
Warning in file(con, "r"): file("") only supports open = "w+" and open = "w+b":
using the former
Warning in file(con, "r"): file("") only supports open = "w+" and open = "w+b":
using the former
Warning in file(con, "r"): file("") only supports open = "w+" and open = "w+b":
using the former
Warning in file(con, "r"): file("") only supports open = "w+" and open = "w+b":
using the former
```

```{=html}
<calcite-shell>
<calcite-navigation slot="header">
<calcite-navigation-logo slot="logo" heading="Snow Plow Map" description="City of AcmeCo">
<!--SHINY.SINGLETON[fa3d99f4d84277b1b3ef4d09e132b0a6077a7df2]-->
<script></script>
<!--/SHINY.SINGLETON[fa3d99f4d84277b1b3ef4d09e132b0a6077a7df2]-->
</calcite-navigation-logo>
<calcite-menu slot="content-end">
<calcite-menu-item text="Drivers" icon-start="license" text-enabled="TRUE">
<!--SHINY.SINGLETON[fa3d99f4d84277b1b3ef4d09e132b0a6077a7df2]-->
<script></script>
<!--/SHINY.SINGLETON[fa3d99f4d84277b1b3ef4d09e132b0a6077a7df2]-->
</calcite-menu-item>
<calcite-menu-item text="Routes" icon-start="road-sign" text-enabled="TRUE">
<!--SHINY.SINGLETON[fa3d99f4d84277b1b3ef4d09e132b0a6077a7df2]-->
<script></script>
<!--/SHINY.SINGLETON[fa3d99f4d84277b1b3ef4d09e132b0a6077a7df2]-->
</calcite-menu-item>
<calcite-menu-item text="Forecast" icon-start="snow" text-enabled="TRUE">
<!--SHINY.SINGLETON[fa3d99f4d84277b1b3ef4d09e132b0a6077a7df2]-->
<script></script>
<!--/SHINY.SINGLETON[fa3d99f4d84277b1b3ef4d09e132b0a6077a7df2]-->
</calcite-menu-item>
<!--SHINY.SINGLETON[fa3d99f4d84277b1b3ef4d09e132b0a6077a7df2]-->
<script></script>
<!--/SHINY.SINGLETON[fa3d99f4d84277b1b3ef4d09e132b0a6077a7df2]-->
</calcite-menu>
<calcite-navigation slot="navigation-secondary">
<calcite-menu slot="content-start">
<calcite-menu-item breadcrumb="TRUE" text="All Routes" icon-start="book" text-enabled="TRUE">
<!--SHINY.SINGLETON[fa3d99f4d84277b1b3ef4d09e132b0a6077a7df2]-->
<script></script>
<!--/SHINY.SINGLETON[fa3d99f4d84277b1b3ef4d09e132b0a6077a7df2]-->
</calcite-menu-item>
<calcite-menu-item breadcrumb="TRUE" text="South Hills" icon-start="apps" text-enabled="TRUE" active="TRUE">
<!--SHINY.SINGLETON[fa3d99f4d84277b1b3ef4d09e132b0a6077a7df2]-->
<script></script>
<!--/SHINY.SINGLETON[fa3d99f4d84277b1b3ef4d09e132b0a6077a7df2]-->
</calcite-menu-item>
<!--SHINY.SINGLETON[fa3d99f4d84277b1b3ef4d09e132b0a6077a7df2]-->
<script></script>
<!--/SHINY.SINGLETON[fa3d99f4d84277b1b3ef4d09e132b0a6077a7df2]-->
</calcite-menu>
<!--SHINY.SINGLETON[fa3d99f4d84277b1b3ef4d09e132b0a6077a7df2]-->
<script></script>
<!--/SHINY.SINGLETON[fa3d99f4d84277b1b3ef4d09e132b0a6077a7df2]-->
</calcite-navigation>
<calcite-navigation-user slot="user" full-name="Wendell Berry" username="w_berry">
<!--SHINY.SINGLETON[fa3d99f4d84277b1b3ef4d09e132b0a6077a7df2]-->
<script></script>
<!--/SHINY.SINGLETON[fa3d99f4d84277b1b3ef4d09e132b0a6077a7df2]-->
</calcite-navigation-user>
<!--SHINY.SINGLETON[fa3d99f4d84277b1b3ef4d09e132b0a6077a7df2]-->
<script></script>
<!--/SHINY.SINGLETON[fa3d99f4d84277b1b3ef4d09e132b0a6077a7df2]-->
</calcite-navigation>
<!--SHINY.SINGLETON[fa3d99f4d84277b1b3ef4d09e132b0a6077a7df2]-->
<script></script>
<!--/SHINY.SINGLETON[fa3d99f4d84277b1b3ef4d09e132b0a6077a7df2]-->
</calcite-shell>
```



## Setting Attributes

## Accessing Properties 

## Updating properties

## Using Slots
