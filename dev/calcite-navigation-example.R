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
