# Calcite Shell Layouts Guide

This guide demonstrates the improved `calcite_shell()` API and new layout helper functions that make it easier to create structured Shiny applications with Calcite Design System components.

## Overview

The Calcite Shell is a foundational layout component that structures your application into distinct regions:

- **header**: Top navigation bar
- **panel-start/panel-end**: Side panels (left/right)
- **panel-top/panel-bottom**: Top/bottom panels
- **Default content**: Main application area
- **footer**: Bottom information/links
- **Overlay slots**: modals, dialogs, alerts, sheets

## Improved `calcite_shell()` Function

The enhanced `calcite_shell()` function provides named parameters for each slot, making it much clearer and easier to use than manually specifying slot attributes.

### Before (manual slots):

```r
calcite_shell(
  div(slot = "header",
    calcite_navigation(...)
  ),
  div(slot = "panel-start",
    calcite_shell_panel(...)
  ),
  "Main content"
)
```

### After (named parameters):

```r
calcite_shell(
  header = calcite_navigation(...),
  panel_start = calcite_shell_panel(...),
  "Main content"
)
```

## Layout Helper Functions

Three new convenience functions create common layout patterns, similar to `bslib::page_sidebar()`:

### 1. `page_actionbar()` - Action Bar Layout

Creates a shell with a navigation header and a collapsible action bar panel. Ideal for map-based applications or tools with multiple layers/options.

**Key Features:**
- Automatic action bar setup
- Collapsible side panel
- Support for header actions
- Configurable panel position (left/right)

**Example:**

```r
page_actionbar(
  title = "Wildlife Areas",

  actions = calcite_action_bar(
    calcite_action(text = "Layers", icon = "layers", active = TRUE),
    calcite_action(text = "Basemap", icon = "basemap"),
    calcite_action(text = "Legend", icon = "legend")
  ),

  panel_content = calcite_panel(
    heading = "Layers",
    "Layer controls here"
  ),

  "Map content here"
)
```

### 2. `page_navbar()` - Navigation Bar Layout

Creates a simple layout with a navigation header and main content area. Ideal for dashboard-style applications.

**Key Features:**
- Clean navigation bar
- Support for nav actions (settings, profile, etc.)
- Custom logo support
- Minimal setup for simple layouts

**Example:**

```r
page_navbar(
  title = "Analytics Dashboard",

  nav_actions = list(
    calcite_action(icon = "bell", text = "Notifications"),
    calcite_action(icon = "gear", text = "Settings"),
    calcite_action(icon = "user", text = "Profile")
  ),

  "Dashboard content here"
)
```

### 3. `page_sidebar()` - Sidebar Layout

Similar to `bslib::page_sidebar()`, creates a layout with a sidebar panel and main content area.

**Key Features:**
- Configurable sidebar position (left/right)
- Adjustable width (s, m, l)
- Optional collapsibility
- Familiar API for bslib users

**Example:**

```r
page_sidebar(
  title = "Data Explorer",

  sidebar = calcite_panel(
    heading = "Filters",
    calcite_input_date_picker(label = "Date"),
    calcite_checkbox(label = "Active only")
  ),

  position = "start",  # left side
  width = "m",

  "Main content here"
)
```

## Parameters Reference

### `page_actionbar()`

| Parameter | Description | Default |
|-----------|-------------|---------|
| `...` | Main content area | - |
| `title` | Application title | `NULL` |
| `header_actions` | Actions for navigation bar | `NULL` |
| `actions` | Action bar content | `NULL` |
| `panel_content` | Side panel content | `NULL` |
| `panel_position` | Panel position: "start" or "end" | `"start"` |
| `panel_width` | Panel width: "s", "m", "l" | `"m"` |
| `footer` | Footer content | `NULL` |

### `page_navbar()`

| Parameter | Description | Default |
|-----------|-------------|---------|
| `...` | Main content area | - |
| `title` | Application title | `NULL` |
| `logo` | Custom logo component | `NULL` |
| `nav_actions` | Navigation bar actions | `NULL` |
| `footer` | Footer content | `NULL` |

### `page_sidebar()`

| Parameter | Description | Default |
|-----------|-------------|---------|
| `...` | Main content area | - |
| `sidebar` | Sidebar content | `NULL` |
| `title` | Application title | `NULL` |
| `position` | Sidebar position: "start" or "end" | `"start"` |
| `width` | Sidebar width: "s", "m", "l" | `"m"` |
| `collapsible` | Allow collapse | `TRUE` |
| `footer` | Footer content | `NULL` |

## Comparison with bslib

If you're familiar with `bslib::page_sidebar()`, the calcite equivalent offers similar functionality with Calcite Design System styling:

### bslib
```r
page_sidebar(
  sidebar = sidebar("Filters"),
  "Main content"
)
```

### calcite
```r
page_sidebar(
  sidebar = calcite_panel(heading = "Filters"),
  "Main content"
)
```

## Use Cases

### Map Applications
Use `page_actionbar()` for map-based apps with layer controls, drawing tools, and settings.

### Dashboards
Use `page_navbar()` for analytics dashboards with top navigation and minimal chrome.

### Data Explorers
Use `page_sidebar()` for data exploration tools with filters and configuration options.

### Custom Layouts
Use `calcite_shell()` directly when you need full control over all shell slots and positions.

## Interactive Examples

See `dev/shell-examples.R` for complete working examples of:

1. Basic shell usage
2. Action bar layouts with CodePen example recreation
3. Simple navbar applications
4. Sidebar layouts
5. Interactive Shiny applications
6. Full-featured applications with navigation

## Tips

1. **Start Simple**: Use the layout helpers (`page_*` functions) for common patterns
2. **Slot Management**: The functions handle slot attributes automatically
3. **Shiny Integration**: All components work seamlessly with Shiny's reactivity
4. **Responsive Design**: Calcite components are mobile-friendly by default
5. **Custom Components**: Drop down to `calcite_shell()` when you need custom layouts

## Next Steps

- Explore the examples in `dev/shell-examples.R`
- Check the [official Calcite documentation](https://developers.arcgis.com/calcite-design-system/components/shell/)
- Build your own layouts using these functions as templates
