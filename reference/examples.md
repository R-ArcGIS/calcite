# Calcite examples

Calcite examples

## Usage

``` r
list_examples()

run_example(name)

open_example(name = NULL)
```

## Arguments

- name:

  the example name (without `.R` extension). See `list_examples()`.

## Examples

``` r
list_examples()
#>  [1] "button-click"              "calcite-accordion"        
#>  [3] "calcite-action-button"     "calcite-alert"            
#>  [5] "calcite-block"             "calcite-button"           
#>  [7] "calcite-checkbox"          "calcite-date-picker"      
#>  [9] "calcite-input-file"        "calcite-input-message"    
#> [11] "calcite-input-number"      "calcite-input-text"       
#> [13] "calcite-label"             "calcite-link"             
#> [15] "calcite-navigation"        "calcite-notice"           
#> [17] "calcite-panel"             "calcite-segmented-control"
#> [19] "calcite-select"            "calcite-shell-panel"      
#> [21] "calcite-slider"            "calcite-switch"           
#> [23] "calcite-table"             "calcite-tile-group"       
#> [25] "earthquake-app"            "page-actionbar"           
#> [27] "page-sidebar-penguins"    

if (interactive()) {
  open_example()
  run_example("calcite-checkbox")
}
```
