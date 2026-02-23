# Create a Calcite Table Component

Creates a table component from a data.frame with automatic row and cell
generation. The table provides pagination, numbering, and various
styling options.

## Usage

``` r
calcite_table(
  data,
  ...,
  id = NULL,
  caption,
  header = NULL,
  alignment = "start",
  bordered = NULL,
  numbered = NULL,
  page_size = NULL,
  scale = NULL,
  striped = NULL,
  numbering_system = NULL
)
```

## Arguments

- data:

  A data.frame to display in the table (required)

- ...:

  Additional attributes passed to the component

- id:

  Component ID (required for Shiny reactivity)

- caption:

  Accessible title for the table (required)

- header:

  Custom header row created with
  [`calcite_table_header()`](https://r.esri.com/calcite/reference/calcite_table_header.md).
  If NULL, column names from data are used

- alignment:

  Alignment for all cells: "start", "center", or "end" (default:
  "start")

- bordered:

  When TRUE, displays borders (default: FALSE)

- numbered:

  When TRUE, displays row numbers (default: FALSE)

- page_size:

  Page size for pagination. When \> 0, renders pagination controls
  (default: 0)

- scale:

  Size of the component: "s" (small), "m" (medium), or "l" (large)
  (default: "m")

- striped:

  When TRUE, displays striped styling (default: FALSE)

- numbering_system:

  Unicode numeral system: "arab", "arabext", or "latn"

## Value

An object of class `calcite_component`

## Details

### Shiny Integration

The table emits events for page changes and selection changes (when
selection is enabled).

**Available properties in `input$id`:**

- `$pageSize` - Current page size

- `$scale` - Component scale

- `$bordered` - Whether borders are displayed

- `$numbered` - Whether row numbers are displayed

- `$striped` - Whether striped styling is applied

- Other component properties

**Events:**

- `calciteTablePageChange` - Fires when the page changes

## References

[Official
Documentation](https://developers.arcgis.com/calcite-design-system/components/table/)

## Examples

``` r
# Basic table from data frame
calcite_table(
  data = mtcars[1:5, 1:4],
  id = "my_table",
  caption = "Motor Trend Car Data",
  bordered = TRUE,
  striped = TRUE
)
#> <calcite-table id="my_table" caption="Motor Trend Car Data" bordered="TRUE" striped="TRUE">
#>   <calcite-table-row slot="table-header">
#>     <calcite-table-header heading="mpg" alignment="start"></calcite-table-header>
#>     <calcite-table-header heading="cyl" alignment="start"></calcite-table-header>
#>     <calcite-table-header heading="disp" alignment="start"></calcite-table-header>
#>     <calcite-table-header heading="hp" alignment="start"></calcite-table-header>
#>   </calcite-table-row>
#>   <calcite-table-row>
#>     <calcite-table-cell alignment="start">21</calcite-table-cell>
#>     <calcite-table-cell alignment="start">6</calcite-table-cell>
#>     <calcite-table-cell alignment="start">160</calcite-table-cell>
#>     <calcite-table-cell alignment="start">110</calcite-table-cell>
#>   </calcite-table-row>
#>   <calcite-table-row>
#>     <calcite-table-cell alignment="start">21</calcite-table-cell>
#>     <calcite-table-cell alignment="start">6</calcite-table-cell>
#>     <calcite-table-cell alignment="start">160</calcite-table-cell>
#>     <calcite-table-cell alignment="start">110</calcite-table-cell>
#>   </calcite-table-row>
#>   <calcite-table-row>
#>     <calcite-table-cell alignment="start">22.8</calcite-table-cell>
#>     <calcite-table-cell alignment="start">4</calcite-table-cell>
#>     <calcite-table-cell alignment="start">108</calcite-table-cell>
#>     <calcite-table-cell alignment="start">93</calcite-table-cell>
#>   </calcite-table-row>
#>   <calcite-table-row>
#>     <calcite-table-cell alignment="start">21.4</calcite-table-cell>
#>     <calcite-table-cell alignment="start">6</calcite-table-cell>
#>     <calcite-table-cell alignment="start">258</calcite-table-cell>
#>     <calcite-table-cell alignment="start">110</calcite-table-cell>
#>   </calcite-table-row>
#>   <calcite-table-row>
#>     <calcite-table-cell alignment="start">18.7</calcite-table-cell>
#>     <calcite-table-cell alignment="start">8</calcite-table-cell>
#>     <calcite-table-cell alignment="start">360</calcite-table-cell>
#>     <calcite-table-cell alignment="start">175</calcite-table-cell>
#>   </calcite-table-row>
#> </calcite-table>

# Table with pagination
calcite_table(
  data = iris,
  id = "iris_table",
  caption = "Iris Dataset",
  page_size = 10,
  numbered = TRUE
)
#> <calcite-table id="iris_table" caption="Iris Dataset" numbered="TRUE" page-size="10">
#>   <calcite-table-row slot="table-header">
#>     <calcite-table-header heading="Sepal.Length" alignment="start"></calcite-table-header>
#>     <calcite-table-header heading="Sepal.Width" alignment="start"></calcite-table-header>
#>     <calcite-table-header heading="Petal.Length" alignment="start"></calcite-table-header>
#>     <calcite-table-header heading="Petal.Width" alignment="start"></calcite-table-header>
#>     <calcite-table-header heading="Species" alignment="start"></calcite-table-header>
#>   </calcite-table-row>
#>   <calcite-table-row>
#>     <calcite-table-cell alignment="start">5.1</calcite-table-cell>
#>     <calcite-table-cell alignment="start">3.5</calcite-table-cell>
#>     <calcite-table-cell alignment="start">1.4</calcite-table-cell>
#>     <calcite-table-cell alignment="start">0.2</calcite-table-cell>
#>     <calcite-table-cell alignment="start">setosa</calcite-table-cell>
#>   </calcite-table-row>
#>   <calcite-table-row>
#>     <calcite-table-cell alignment="start">4.9</calcite-table-cell>
#>     <calcite-table-cell alignment="start">3</calcite-table-cell>
#>     <calcite-table-cell alignment="start">1.4</calcite-table-cell>
#>     <calcite-table-cell alignment="start">0.2</calcite-table-cell>
#>     <calcite-table-cell alignment="start">setosa</calcite-table-cell>
#>   </calcite-table-row>
#>   <calcite-table-row>
#>     <calcite-table-cell alignment="start">4.7</calcite-table-cell>
#>     <calcite-table-cell alignment="start">3.2</calcite-table-cell>
#>     <calcite-table-cell alignment="start">1.3</calcite-table-cell>
#>     <calcite-table-cell alignment="start">0.2</calcite-table-cell>
#>     <calcite-table-cell alignment="start">setosa</calcite-table-cell>
#>   </calcite-table-row>
#>   <calcite-table-row>
#>     <calcite-table-cell alignment="start">4.6</calcite-table-cell>
#>     <calcite-table-cell alignment="start">3.1</calcite-table-cell>
#>     <calcite-table-cell alignment="start">1.5</calcite-table-cell>
#>     <calcite-table-cell alignment="start">0.2</calcite-table-cell>
#>     <calcite-table-cell alignment="start">setosa</calcite-table-cell>
#>   </calcite-table-row>
#>   <calcite-table-row>
#>     <calcite-table-cell alignment="start">5</calcite-table-cell>
#>     <calcite-table-cell alignment="start">3.6</calcite-table-cell>
#>     <calcite-table-cell alignment="start">1.4</calcite-table-cell>
#>     <calcite-table-cell alignment="start">0.2</calcite-table-cell>
#>     <calcite-table-cell alignment="start">setosa</calcite-table-cell>
#>   </calcite-table-row>
#>   <calcite-table-row>
#>     <calcite-table-cell alignment="start">5.4</calcite-table-cell>
#>     <calcite-table-cell alignment="start">3.9</calcite-table-cell>
#>     <calcite-table-cell alignment="start">1.7</calcite-table-cell>
#>     <calcite-table-cell alignment="start">0.4</calcite-table-cell>
#>     <calcite-table-cell alignment="start">setosa</calcite-table-cell>
#>   </calcite-table-row>
#>   <calcite-table-row>
#>     <calcite-table-cell alignment="start">4.6</calcite-table-cell>
#>     <calcite-table-cell alignment="start">3.4</calcite-table-cell>
#>     <calcite-table-cell alignment="start">1.4</calcite-table-cell>
#>     <calcite-table-cell alignment="start">0.3</calcite-table-cell>
#>     <calcite-table-cell alignment="start">setosa</calcite-table-cell>
#>   </calcite-table-row>
#>   <calcite-table-row>
#>     <calcite-table-cell alignment="start">5</calcite-table-cell>
#>     <calcite-table-cell alignment="start">3.4</calcite-table-cell>
#>     <calcite-table-cell alignment="start">1.5</calcite-table-cell>
#>     <calcite-table-cell alignment="start">0.2</calcite-table-cell>
#>     <calcite-table-cell alignment="start">setosa</calcite-table-cell>
#>   </calcite-table-row>
#>   <calcite-table-row>
#>     <calcite-table-cell alignment="start">4.4</calcite-table-cell>
#>     <calcite-table-cell alignment="start">2.9</calcite-table-cell>
#>     <calcite-table-cell alignment="start">1.4</calcite-table-cell>
#>     <calcite-table-cell alignment="start">0.2</calcite-table-cell>
#>     <calcite-table-cell alignment="start">setosa</calcite-table-cell>
#>   </calcite-table-row>
#>   <calcite-table-row>
#>     <calcite-table-cell alignment="start">4.9</calcite-table-cell>
#>     <calcite-table-cell alignment="start">3.1</calcite-table-cell>
#>     <calcite-table-cell alignment="start">1.5</calcite-table-cell>
#>     <calcite-table-cell alignment="start">0.1</calcite-table-cell>
#>     <calcite-table-cell alignment="start">setosa</calcite-table-cell>
#>   </calcite-table-row>
#>   <calcite-table-row>
#>     <calcite-table-cell alignment="start">5.4</calcite-table-cell>
#>     <calcite-table-cell alignment="start">3.7</calcite-table-cell>
#>     <calcite-table-cell alignment="start">1.5</calcite-table-cell>
#>     <calcite-table-cell alignment="start">0.2</calcite-table-cell>
#>     <calcite-table-cell alignment="start">setosa</calcite-table-cell>
#>   </calcite-table-row>
#>   <calcite-table-row>
#>     <calcite-table-cell alignment="start">4.8</calcite-table-cell>
#>     <calcite-table-cell alignment="start">3.4</calcite-table-cell>
#>     <calcite-table-cell alignment="start">1.6</calcite-table-cell>
#>     <calcite-table-cell alignment="start">0.2</calcite-table-cell>
#>     <calcite-table-cell alignment="start">setosa</calcite-table-cell>
#>   </calcite-table-row>
#>   <calcite-table-row>
#>     <calcite-table-cell alignment="start">4.8</calcite-table-cell>
#>     <calcite-table-cell alignment="start">3</calcite-table-cell>
#>     <calcite-table-cell alignment="start">1.4</calcite-table-cell>
#>     <calcite-table-cell alignment="start">0.1</calcite-table-cell>
#>     <calcite-table-cell alignment="start">setosa</calcite-table-cell>
#>   </calcite-table-row>
#>   <calcite-table-row>
#>     <calcite-table-cell alignment="start">4.3</calcite-table-cell>
#>     <calcite-table-cell alignment="start">3</calcite-table-cell>
#>     <calcite-table-cell alignment="start">1.1</calcite-table-cell>
#>     <calcite-table-cell alignment="start">0.1</calcite-table-cell>
#>     <calcite-table-cell alignment="start">setosa</calcite-table-cell>
#>   </calcite-table-row>
#>   <calcite-table-row>
#>     <calcite-table-cell alignment="start">5.8</calcite-table-cell>
#>     <calcite-table-cell alignment="start">4</calcite-table-cell>
#>     <calcite-table-cell alignment="start">1.2</calcite-table-cell>
#>     <calcite-table-cell alignment="start">0.2</calcite-table-cell>
#>     <calcite-table-cell alignment="start">setosa</calcite-table-cell>
#>   </calcite-table-row>
#>   <calcite-table-row>
#>     <calcite-table-cell alignment="start">5.7</calcite-table-cell>
#>     <calcite-table-cell alignment="start">4.4</calcite-table-cell>
#>     <calcite-table-cell alignment="start">1.5</calcite-table-cell>
#>     <calcite-table-cell alignment="start">0.4</calcite-table-cell>
#>     <calcite-table-cell alignment="start">setosa</calcite-table-cell>
#>   </calcite-table-row>
#>   <calcite-table-row>
#>     <calcite-table-cell alignment="start">5.4</calcite-table-cell>
#>     <calcite-table-cell alignment="start">3.9</calcite-table-cell>
#>     <calcite-table-cell alignment="start">1.3</calcite-table-cell>
#>     <calcite-table-cell alignment="start">0.4</calcite-table-cell>
#>     <calcite-table-cell alignment="start">setosa</calcite-table-cell>
#>   </calcite-table-row>
#>   <calcite-table-row>
#>     <calcite-table-cell alignment="start">5.1</calcite-table-cell>
#>     <calcite-table-cell alignment="start">3.5</calcite-table-cell>
#>     <calcite-table-cell alignment="start">1.4</calcite-table-cell>
#>     <calcite-table-cell alignment="start">0.3</calcite-table-cell>
#>     <calcite-table-cell alignment="start">setosa</calcite-table-cell>
#>   </calcite-table-row>
#>   <calcite-table-row>
#>     <calcite-table-cell alignment="start">5.7</calcite-table-cell>
#>     <calcite-table-cell alignment="start">3.8</calcite-table-cell>
#>     <calcite-table-cell alignment="start">1.7</calcite-table-cell>
#>     <calcite-table-cell alignment="start">0.3</calcite-table-cell>
#>     <calcite-table-cell alignment="start">setosa</calcite-table-cell>
#>   </calcite-table-row>
#>   <calcite-table-row>
#>     <calcite-table-cell alignment="start">5.1</calcite-table-cell>
#>     <calcite-table-cell alignment="start">3.8</calcite-table-cell>
#>     <calcite-table-cell alignment="start">1.5</calcite-table-cell>
#>     <calcite-table-cell alignment="start">0.3</calcite-table-cell>
#>     <calcite-table-cell alignment="start">setosa</calcite-table-cell>
#>   </calcite-table-row>
#>   <calcite-table-row>
#>     <calcite-table-cell alignment="start">5.4</calcite-table-cell>
#>     <calcite-table-cell alignment="start">3.4</calcite-table-cell>
#>     <calcite-table-cell alignment="start">1.7</calcite-table-cell>
#>     <calcite-table-cell alignment="start">0.2</calcite-table-cell>
#>     <calcite-table-cell alignment="start">setosa</calcite-table-cell>
#>   </calcite-table-row>
#>   <calcite-table-row>
#>     <calcite-table-cell alignment="start">5.1</calcite-table-cell>
#>     <calcite-table-cell alignment="start">3.7</calcite-table-cell>
#>     <calcite-table-cell alignment="start">1.5</calcite-table-cell>
#>     <calcite-table-cell alignment="start">0.4</calcite-table-cell>
#>     <calcite-table-cell alignment="start">setosa</calcite-table-cell>
#>   </calcite-table-row>
#>   <calcite-table-row>
#>     <calcite-table-cell alignment="start">4.6</calcite-table-cell>
#>     <calcite-table-cell alignment="start">3.6</calcite-table-cell>
#>     <calcite-table-cell alignment="start">1</calcite-table-cell>
#>     <calcite-table-cell alignment="start">0.2</calcite-table-cell>
#>     <calcite-table-cell alignment="start">setosa</calcite-table-cell>
#>   </calcite-table-row>
#>   <calcite-table-row>
#>     <calcite-table-cell alignment="start">5.1</calcite-table-cell>
#>     <calcite-table-cell alignment="start">3.3</calcite-table-cell>
#>     <calcite-table-cell alignment="start">1.7</calcite-table-cell>
#>     <calcite-table-cell alignment="start">0.5</calcite-table-cell>
#>     <calcite-table-cell alignment="start">setosa</calcite-table-cell>
#>   </calcite-table-row>
#>   <calcite-table-row>
#>     <calcite-table-cell alignment="start">4.8</calcite-table-cell>
#>     <calcite-table-cell alignment="start">3.4</calcite-table-cell>
#>     <calcite-table-cell alignment="start">1.9</calcite-table-cell>
#>     <calcite-table-cell alignment="start">0.2</calcite-table-cell>
#>     <calcite-table-cell alignment="start">setosa</calcite-table-cell>
#>   </calcite-table-row>
#>   <calcite-table-row>
#>     <calcite-table-cell alignment="start">5</calcite-table-cell>
#>     <calcite-table-cell alignment="start">3</calcite-table-cell>
#>     <calcite-table-cell alignment="start">1.6</calcite-table-cell>
#>     <calcite-table-cell alignment="start">0.2</calcite-table-cell>
#>     <calcite-table-cell alignment="start">setosa</calcite-table-cell>
#>   </calcite-table-row>
#>   <calcite-table-row>
#>     <calcite-table-cell alignment="start">5</calcite-table-cell>
#>     <calcite-table-cell alignment="start">3.4</calcite-table-cell>
#>     <calcite-table-cell alignment="start">1.6</calcite-table-cell>
#>     <calcite-table-cell alignment="start">0.4</calcite-table-cell>
#>     <calcite-table-cell alignment="start">setosa</calcite-table-cell>
#>   </calcite-table-row>
#>   <calcite-table-row>
#>     <calcite-table-cell alignment="start">5.2</calcite-table-cell>
#>     <calcite-table-cell alignment="start">3.5</calcite-table-cell>
#>     <calcite-table-cell alignment="start">1.5</calcite-table-cell>
#>     <calcite-table-cell alignment="start">0.2</calcite-table-cell>
#>     <calcite-table-cell alignment="start">setosa</calcite-table-cell>
#>   </calcite-table-row>
#>   <calcite-table-row>
#>     <calcite-table-cell alignment="start">5.2</calcite-table-cell>
#>     <calcite-table-cell alignment="start">3.4</calcite-table-cell>
#>     <calcite-table-cell alignment="start">1.4</calcite-table-cell>
#>     <calcite-table-cell alignment="start">0.2</calcite-table-cell>
#>     <calcite-table-cell alignment="start">setosa</calcite-table-cell>
#>   </calcite-table-row>
#>   <calcite-table-row>
#>     <calcite-table-cell alignment="start">4.7</calcite-table-cell>
#>     <calcite-table-cell alignment="start">3.2</calcite-table-cell>
#>     <calcite-table-cell alignment="start">1.6</calcite-table-cell>
#>     <calcite-table-cell alignment="start">0.2</calcite-table-cell>
#>     <calcite-table-cell alignment="start">setosa</calcite-table-cell>
#>   </calcite-table-row>
#>   <calcite-table-row>
#>     <calcite-table-cell alignment="start">4.8</calcite-table-cell>
#>     <calcite-table-cell alignment="start">3.1</calcite-table-cell>
#>     <calcite-table-cell alignment="start">1.6</calcite-table-cell>
#>     <calcite-table-cell alignment="start">0.2</calcite-table-cell>
#>     <calcite-table-cell alignment="start">setosa</calcite-table-cell>
#>   </calcite-table-row>
#>   <calcite-table-row>
#>     <calcite-table-cell alignment="start">5.4</calcite-table-cell>
#>     <calcite-table-cell alignment="start">3.4</calcite-table-cell>
#>     <calcite-table-cell alignment="start">1.5</calcite-table-cell>
#>     <calcite-table-cell alignment="start">0.4</calcite-table-cell>
#>     <calcite-table-cell alignment="start">setosa</calcite-table-cell>
#>   </calcite-table-row>
#>   <calcite-table-row>
#>     <calcite-table-cell alignment="start">5.2</calcite-table-cell>
#>     <calcite-table-cell alignment="start">4.1</calcite-table-cell>
#>     <calcite-table-cell alignment="start">1.5</calcite-table-cell>
#>     <calcite-table-cell alignment="start">0.1</calcite-table-cell>
#>     <calcite-table-cell alignment="start">setosa</calcite-table-cell>
#>   </calcite-table-row>
#>   <calcite-table-row>
#>     <calcite-table-cell alignment="start">5.5</calcite-table-cell>
#>     <calcite-table-cell alignment="start">4.2</calcite-table-cell>
#>     <calcite-table-cell alignment="start">1.4</calcite-table-cell>
#>     <calcite-table-cell alignment="start">0.2</calcite-table-cell>
#>     <calcite-table-cell alignment="start">setosa</calcite-table-cell>
#>   </calcite-table-row>
#>   <calcite-table-row>
#>     <calcite-table-cell alignment="start">4.9</calcite-table-cell>
#>     <calcite-table-cell alignment="start">3.1</calcite-table-cell>
#>     <calcite-table-cell alignment="start">1.5</calcite-table-cell>
#>     <calcite-table-cell alignment="start">0.2</calcite-table-cell>
#>     <calcite-table-cell alignment="start">setosa</calcite-table-cell>
#>   </calcite-table-row>
#>   <calcite-table-row>
#>     <calcite-table-cell alignment="start">5</calcite-table-cell>
#>     <calcite-table-cell alignment="start">3.2</calcite-table-cell>
#>     <calcite-table-cell alignment="start">1.2</calcite-table-cell>
#>     <calcite-table-cell alignment="start">0.2</calcite-table-cell>
#>     <calcite-table-cell alignment="start">setosa</calcite-table-cell>
#>   </calcite-table-row>
#>   <calcite-table-row>
#>     <calcite-table-cell alignment="start">5.5</calcite-table-cell>
#>     <calcite-table-cell alignment="start">3.5</calcite-table-cell>
#>     <calcite-table-cell alignment="start">1.3</calcite-table-cell>
#>     <calcite-table-cell alignment="start">0.2</calcite-table-cell>
#>     <calcite-table-cell alignment="start">setosa</calcite-table-cell>
#>   </calcite-table-row>
#>   <calcite-table-row>
#>     <calcite-table-cell alignment="start">4.9</calcite-table-cell>
#>     <calcite-table-cell alignment="start">3.6</calcite-table-cell>
#>     <calcite-table-cell alignment="start">1.4</calcite-table-cell>
#>     <calcite-table-cell alignment="start">0.1</calcite-table-cell>
#>     <calcite-table-cell alignment="start">setosa</calcite-table-cell>
#>   </calcite-table-row>
#>   <calcite-table-row>
#>     <calcite-table-cell alignment="start">4.4</calcite-table-cell>
#>     <calcite-table-cell alignment="start">3</calcite-table-cell>
#>     <calcite-table-cell alignment="start">1.3</calcite-table-cell>
#>     <calcite-table-cell alignment="start">0.2</calcite-table-cell>
#>     <calcite-table-cell alignment="start">setosa</calcite-table-cell>
#>   </calcite-table-row>
#>   <calcite-table-row>
#>     <calcite-table-cell alignment="start">5.1</calcite-table-cell>
#>     <calcite-table-cell alignment="start">3.4</calcite-table-cell>
#>     <calcite-table-cell alignment="start">1.5</calcite-table-cell>
#>     <calcite-table-cell alignment="start">0.2</calcite-table-cell>
#>     <calcite-table-cell alignment="start">setosa</calcite-table-cell>
#>   </calcite-table-row>
#>   <calcite-table-row>
#>     <calcite-table-cell alignment="start">5</calcite-table-cell>
#>     <calcite-table-cell alignment="start">3.5</calcite-table-cell>
#>     <calcite-table-cell alignment="start">1.3</calcite-table-cell>
#>     <calcite-table-cell alignment="start">0.3</calcite-table-cell>
#>     <calcite-table-cell alignment="start">setosa</calcite-table-cell>
#>   </calcite-table-row>
#>   <calcite-table-row>
#>     <calcite-table-cell alignment="start">4.5</calcite-table-cell>
#>     <calcite-table-cell alignment="start">2.3</calcite-table-cell>
#>     <calcite-table-cell alignment="start">1.3</calcite-table-cell>
#>     <calcite-table-cell alignment="start">0.3</calcite-table-cell>
#>     <calcite-table-cell alignment="start">setosa</calcite-table-cell>
#>   </calcite-table-row>
#>   <calcite-table-row>
#>     <calcite-table-cell alignment="start">4.4</calcite-table-cell>
#>     <calcite-table-cell alignment="start">3.2</calcite-table-cell>
#>     <calcite-table-cell alignment="start">1.3</calcite-table-cell>
#>     <calcite-table-cell alignment="start">0.2</calcite-table-cell>
#>     <calcite-table-cell alignment="start">setosa</calcite-table-cell>
#>   </calcite-table-row>
#>   <calcite-table-row>
#>     <calcite-table-cell alignment="start">5</calcite-table-cell>
#>     <calcite-table-cell alignment="start">3.5</calcite-table-cell>
#>     <calcite-table-cell alignment="start">1.6</calcite-table-cell>
#>     <calcite-table-cell alignment="start">0.6</calcite-table-cell>
#>     <calcite-table-cell alignment="start">setosa</calcite-table-cell>
#>   </calcite-table-row>
#>   <calcite-table-row>
#>     <calcite-table-cell alignment="start">5.1</calcite-table-cell>
#>     <calcite-table-cell alignment="start">3.8</calcite-table-cell>
#>     <calcite-table-cell alignment="start">1.9</calcite-table-cell>
#>     <calcite-table-cell alignment="start">0.4</calcite-table-cell>
#>     <calcite-table-cell alignment="start">setosa</calcite-table-cell>
#>   </calcite-table-row>
#>   <calcite-table-row>
#>     <calcite-table-cell alignment="start">4.8</calcite-table-cell>
#>     <calcite-table-cell alignment="start">3</calcite-table-cell>
#>     <calcite-table-cell alignment="start">1.4</calcite-table-cell>
#>     <calcite-table-cell alignment="start">0.3</calcite-table-cell>
#>     <calcite-table-cell alignment="start">setosa</calcite-table-cell>
#>   </calcite-table-row>
#>   <calcite-table-row>
#>     <calcite-table-cell alignment="start">5.1</calcite-table-cell>
#>     <calcite-table-cell alignment="start">3.8</calcite-table-cell>
#>     <calcite-table-cell alignment="start">1.6</calcite-table-cell>
#>     <calcite-table-cell alignment="start">0.2</calcite-table-cell>
#>     <calcite-table-cell alignment="start">setosa</calcite-table-cell>
#>   </calcite-table-row>
#>   <calcite-table-row>
#>     <calcite-table-cell alignment="start">4.6</calcite-table-cell>
#>     <calcite-table-cell alignment="start">3.2</calcite-table-cell>
#>     <calcite-table-cell alignment="start">1.4</calcite-table-cell>
#>     <calcite-table-cell alignment="start">0.2</calcite-table-cell>
#>     <calcite-table-cell alignment="start">setosa</calcite-table-cell>
#>   </calcite-table-row>
#>   <calcite-table-row>
#>     <calcite-table-cell alignment="start">5.3</calcite-table-cell>
#>     <calcite-table-cell alignment="start">3.7</calcite-table-cell>
#>     <calcite-table-cell alignment="start">1.5</calcite-table-cell>
#>     <calcite-table-cell alignment="start">0.2</calcite-table-cell>
#>     <calcite-table-cell alignment="start">setosa</calcite-table-cell>
#>   </calcite-table-row>
#>   <calcite-table-row>
#>     <calcite-table-cell alignment="start">5</calcite-table-cell>
#>     <calcite-table-cell alignment="start">3.3</calcite-table-cell>
#>     <calcite-table-cell alignment="start">1.4</calcite-table-cell>
#>     <calcite-table-cell alignment="start">0.2</calcite-table-cell>
#>     <calcite-table-cell alignment="start">setosa</calcite-table-cell>
#>   </calcite-table-row>
#>   <calcite-table-row>
#>     <calcite-table-cell alignment="start">7</calcite-table-cell>
#>     <calcite-table-cell alignment="start">3.2</calcite-table-cell>
#>     <calcite-table-cell alignment="start">4.7</calcite-table-cell>
#>     <calcite-table-cell alignment="start">1.4</calcite-table-cell>
#>     <calcite-table-cell alignment="start">versicolor</calcite-table-cell>
#>   </calcite-table-row>
#>   <calcite-table-row>
#>     <calcite-table-cell alignment="start">6.4</calcite-table-cell>
#>     <calcite-table-cell alignment="start">3.2</calcite-table-cell>
#>     <calcite-table-cell alignment="start">4.5</calcite-table-cell>
#>     <calcite-table-cell alignment="start">1.5</calcite-table-cell>
#>     <calcite-table-cell alignment="start">versicolor</calcite-table-cell>
#>   </calcite-table-row>
#>   <calcite-table-row>
#>     <calcite-table-cell alignment="start">6.9</calcite-table-cell>
#>     <calcite-table-cell alignment="start">3.1</calcite-table-cell>
#>     <calcite-table-cell alignment="start">4.9</calcite-table-cell>
#>     <calcite-table-cell alignment="start">1.5</calcite-table-cell>
#>     <calcite-table-cell alignment="start">versicolor</calcite-table-cell>
#>   </calcite-table-row>
#>   <calcite-table-row>
#>     <calcite-table-cell alignment="start">5.5</calcite-table-cell>
#>     <calcite-table-cell alignment="start">2.3</calcite-table-cell>
#>     <calcite-table-cell alignment="start">4</calcite-table-cell>
#>     <calcite-table-cell alignment="start">1.3</calcite-table-cell>
#>     <calcite-table-cell alignment="start">versicolor</calcite-table-cell>
#>   </calcite-table-row>
#>   <calcite-table-row>
#>     <calcite-table-cell alignment="start">6.5</calcite-table-cell>
#>     <calcite-table-cell alignment="start">2.8</calcite-table-cell>
#>     <calcite-table-cell alignment="start">4.6</calcite-table-cell>
#>     <calcite-table-cell alignment="start">1.5</calcite-table-cell>
#>     <calcite-table-cell alignment="start">versicolor</calcite-table-cell>
#>   </calcite-table-row>
#>   <calcite-table-row>
#>     <calcite-table-cell alignment="start">5.7</calcite-table-cell>
#>     <calcite-table-cell alignment="start">2.8</calcite-table-cell>
#>     <calcite-table-cell alignment="start">4.5</calcite-table-cell>
#>     <calcite-table-cell alignment="start">1.3</calcite-table-cell>
#>     <calcite-table-cell alignment="start">versicolor</calcite-table-cell>
#>   </calcite-table-row>
#>   <calcite-table-row>
#>     <calcite-table-cell alignment="start">6.3</calcite-table-cell>
#>     <calcite-table-cell alignment="start">3.3</calcite-table-cell>
#>     <calcite-table-cell alignment="start">4.7</calcite-table-cell>
#>     <calcite-table-cell alignment="start">1.6</calcite-table-cell>
#>     <calcite-table-cell alignment="start">versicolor</calcite-table-cell>
#>   </calcite-table-row>
#>   <calcite-table-row>
#>     <calcite-table-cell alignment="start">4.9</calcite-table-cell>
#>     <calcite-table-cell alignment="start">2.4</calcite-table-cell>
#>     <calcite-table-cell alignment="start">3.3</calcite-table-cell>
#>     <calcite-table-cell alignment="start">1</calcite-table-cell>
#>     <calcite-table-cell alignment="start">versicolor</calcite-table-cell>
#>   </calcite-table-row>
#>   <calcite-table-row>
#>     <calcite-table-cell alignment="start">6.6</calcite-table-cell>
#>     <calcite-table-cell alignment="start">2.9</calcite-table-cell>
#>     <calcite-table-cell alignment="start">4.6</calcite-table-cell>
#>     <calcite-table-cell alignment="start">1.3</calcite-table-cell>
#>     <calcite-table-cell alignment="start">versicolor</calcite-table-cell>
#>   </calcite-table-row>
#>   <calcite-table-row>
#>     <calcite-table-cell alignment="start">5.2</calcite-table-cell>
#>     <calcite-table-cell alignment="start">2.7</calcite-table-cell>
#>     <calcite-table-cell alignment="start">3.9</calcite-table-cell>
#>     <calcite-table-cell alignment="start">1.4</calcite-table-cell>
#>     <calcite-table-cell alignment="start">versicolor</calcite-table-cell>
#>   </calcite-table-row>
#>   <calcite-table-row>
#>     <calcite-table-cell alignment="start">5</calcite-table-cell>
#>     <calcite-table-cell alignment="start">2</calcite-table-cell>
#>     <calcite-table-cell alignment="start">3.5</calcite-table-cell>
#>     <calcite-table-cell alignment="start">1</calcite-table-cell>
#>     <calcite-table-cell alignment="start">versicolor</calcite-table-cell>
#>   </calcite-table-row>
#>   <calcite-table-row>
#>     <calcite-table-cell alignment="start">5.9</calcite-table-cell>
#>     <calcite-table-cell alignment="start">3</calcite-table-cell>
#>     <calcite-table-cell alignment="start">4.2</calcite-table-cell>
#>     <calcite-table-cell alignment="start">1.5</calcite-table-cell>
#>     <calcite-table-cell alignment="start">versicolor</calcite-table-cell>
#>   </calcite-table-row>
#>   <calcite-table-row>
#>     <calcite-table-cell alignment="start">6</calcite-table-cell>
#>     <calcite-table-cell alignment="start">2.2</calcite-table-cell>
#>     <calcite-table-cell alignment="start">4</calcite-table-cell>
#>     <calcite-table-cell alignment="start">1</calcite-table-cell>
#>     <calcite-table-cell alignment="start">versicolor</calcite-table-cell>
#>   </calcite-table-row>
#>   <calcite-table-row>
#>     <calcite-table-cell alignment="start">6.1</calcite-table-cell>
#>     <calcite-table-cell alignment="start">2.9</calcite-table-cell>
#>     <calcite-table-cell alignment="start">4.7</calcite-table-cell>
#>     <calcite-table-cell alignment="start">1.4</calcite-table-cell>
#>     <calcite-table-cell alignment="start">versicolor</calcite-table-cell>
#>   </calcite-table-row>
#>   <calcite-table-row>
#>     <calcite-table-cell alignment="start">5.6</calcite-table-cell>
#>     <calcite-table-cell alignment="start">2.9</calcite-table-cell>
#>     <calcite-table-cell alignment="start">3.6</calcite-table-cell>
#>     <calcite-table-cell alignment="start">1.3</calcite-table-cell>
#>     <calcite-table-cell alignment="start">versicolor</calcite-table-cell>
#>   </calcite-table-row>
#>   <calcite-table-row>
#>     <calcite-table-cell alignment="start">6.7</calcite-table-cell>
#>     <calcite-table-cell alignment="start">3.1</calcite-table-cell>
#>     <calcite-table-cell alignment="start">4.4</calcite-table-cell>
#>     <calcite-table-cell alignment="start">1.4</calcite-table-cell>
#>     <calcite-table-cell alignment="start">versicolor</calcite-table-cell>
#>   </calcite-table-row>
#>   <calcite-table-row>
#>     <calcite-table-cell alignment="start">5.6</calcite-table-cell>
#>     <calcite-table-cell alignment="start">3</calcite-table-cell>
#>     <calcite-table-cell alignment="start">4.5</calcite-table-cell>
#>     <calcite-table-cell alignment="start">1.5</calcite-table-cell>
#>     <calcite-table-cell alignment="start">versicolor</calcite-table-cell>
#>   </calcite-table-row>
#>   <calcite-table-row>
#>     <calcite-table-cell alignment="start">5.8</calcite-table-cell>
#>     <calcite-table-cell alignment="start">2.7</calcite-table-cell>
#>     <calcite-table-cell alignment="start">4.1</calcite-table-cell>
#>     <calcite-table-cell alignment="start">1</calcite-table-cell>
#>     <calcite-table-cell alignment="start">versicolor</calcite-table-cell>
#>   </calcite-table-row>
#>   <calcite-table-row>
#>     <calcite-table-cell alignment="start">6.2</calcite-table-cell>
#>     <calcite-table-cell alignment="start">2.2</calcite-table-cell>
#>     <calcite-table-cell alignment="start">4.5</calcite-table-cell>
#>     <calcite-table-cell alignment="start">1.5</calcite-table-cell>
#>     <calcite-table-cell alignment="start">versicolor</calcite-table-cell>
#>   </calcite-table-row>
#>   <calcite-table-row>
#>     <calcite-table-cell alignment="start">5.6</calcite-table-cell>
#>     <calcite-table-cell alignment="start">2.5</calcite-table-cell>
#>     <calcite-table-cell alignment="start">3.9</calcite-table-cell>
#>     <calcite-table-cell alignment="start">1.1</calcite-table-cell>
#>     <calcite-table-cell alignment="start">versicolor</calcite-table-cell>
#>   </calcite-table-row>
#>   <calcite-table-row>
#>     <calcite-table-cell alignment="start">5.9</calcite-table-cell>
#>     <calcite-table-cell alignment="start">3.2</calcite-table-cell>
#>     <calcite-table-cell alignment="start">4.8</calcite-table-cell>
#>     <calcite-table-cell alignment="start">1.8</calcite-table-cell>
#>     <calcite-table-cell alignment="start">versicolor</calcite-table-cell>
#>   </calcite-table-row>
#>   <calcite-table-row>
#>     <calcite-table-cell alignment="start">6.1</calcite-table-cell>
#>     <calcite-table-cell alignment="start">2.8</calcite-table-cell>
#>     <calcite-table-cell alignment="start">4</calcite-table-cell>
#>     <calcite-table-cell alignment="start">1.3</calcite-table-cell>
#>     <calcite-table-cell alignment="start">versicolor</calcite-table-cell>
#>   </calcite-table-row>
#>   <calcite-table-row>
#>     <calcite-table-cell alignment="start">6.3</calcite-table-cell>
#>     <calcite-table-cell alignment="start">2.5</calcite-table-cell>
#>     <calcite-table-cell alignment="start">4.9</calcite-table-cell>
#>     <calcite-table-cell alignment="start">1.5</calcite-table-cell>
#>     <calcite-table-cell alignment="start">versicolor</calcite-table-cell>
#>   </calcite-table-row>
#>   <calcite-table-row>
#>     <calcite-table-cell alignment="start">6.1</calcite-table-cell>
#>     <calcite-table-cell alignment="start">2.8</calcite-table-cell>
#>     <calcite-table-cell alignment="start">4.7</calcite-table-cell>
#>     <calcite-table-cell alignment="start">1.2</calcite-table-cell>
#>     <calcite-table-cell alignment="start">versicolor</calcite-table-cell>
#>   </calcite-table-row>
#>   <calcite-table-row>
#>     <calcite-table-cell alignment="start">6.4</calcite-table-cell>
#>     <calcite-table-cell alignment="start">2.9</calcite-table-cell>
#>     <calcite-table-cell alignment="start">4.3</calcite-table-cell>
#>     <calcite-table-cell alignment="start">1.3</calcite-table-cell>
#>     <calcite-table-cell alignment="start">versicolor</calcite-table-cell>
#>   </calcite-table-row>
#>   <calcite-table-row>
#>     <calcite-table-cell alignment="start">6.6</calcite-table-cell>
#>     <calcite-table-cell alignment="start">3</calcite-table-cell>
#>     <calcite-table-cell alignment="start">4.4</calcite-table-cell>
#>     <calcite-table-cell alignment="start">1.4</calcite-table-cell>
#>     <calcite-table-cell alignment="start">versicolor</calcite-table-cell>
#>   </calcite-table-row>
#>   <calcite-table-row>
#>     <calcite-table-cell alignment="start">6.8</calcite-table-cell>
#>     <calcite-table-cell alignment="start">2.8</calcite-table-cell>
#>     <calcite-table-cell alignment="start">4.8</calcite-table-cell>
#>     <calcite-table-cell alignment="start">1.4</calcite-table-cell>
#>     <calcite-table-cell alignment="start">versicolor</calcite-table-cell>
#>   </calcite-table-row>
#>   <calcite-table-row>
#>     <calcite-table-cell alignment="start">6.7</calcite-table-cell>
#>     <calcite-table-cell alignment="start">3</calcite-table-cell>
#>     <calcite-table-cell alignment="start">5</calcite-table-cell>
#>     <calcite-table-cell alignment="start">1.7</calcite-table-cell>
#>     <calcite-table-cell alignment="start">versicolor</calcite-table-cell>
#>   </calcite-table-row>
#>   <calcite-table-row>
#>     <calcite-table-cell alignment="start">6</calcite-table-cell>
#>     <calcite-table-cell alignment="start">2.9</calcite-table-cell>
#>     <calcite-table-cell alignment="start">4.5</calcite-table-cell>
#>     <calcite-table-cell alignment="start">1.5</calcite-table-cell>
#>     <calcite-table-cell alignment="start">versicolor</calcite-table-cell>
#>   </calcite-table-row>
#>   <calcite-table-row>
#>     <calcite-table-cell alignment="start">5.7</calcite-table-cell>
#>     <calcite-table-cell alignment="start">2.6</calcite-table-cell>
#>     <calcite-table-cell alignment="start">3.5</calcite-table-cell>
#>     <calcite-table-cell alignment="start">1</calcite-table-cell>
#>     <calcite-table-cell alignment="start">versicolor</calcite-table-cell>
#>   </calcite-table-row>
#>   <calcite-table-row>
#>     <calcite-table-cell alignment="start">5.5</calcite-table-cell>
#>     <calcite-table-cell alignment="start">2.4</calcite-table-cell>
#>     <calcite-table-cell alignment="start">3.8</calcite-table-cell>
#>     <calcite-table-cell alignment="start">1.1</calcite-table-cell>
#>     <calcite-table-cell alignment="start">versicolor</calcite-table-cell>
#>   </calcite-table-row>
#>   <calcite-table-row>
#>     <calcite-table-cell alignment="start">5.5</calcite-table-cell>
#>     <calcite-table-cell alignment="start">2.4</calcite-table-cell>
#>     <calcite-table-cell alignment="start">3.7</calcite-table-cell>
#>     <calcite-table-cell alignment="start">1</calcite-table-cell>
#>     <calcite-table-cell alignment="start">versicolor</calcite-table-cell>
#>   </calcite-table-row>
#>   <calcite-table-row>
#>     <calcite-table-cell alignment="start">5.8</calcite-table-cell>
#>     <calcite-table-cell alignment="start">2.7</calcite-table-cell>
#>     <calcite-table-cell alignment="start">3.9</calcite-table-cell>
#>     <calcite-table-cell alignment="start">1.2</calcite-table-cell>
#>     <calcite-table-cell alignment="start">versicolor</calcite-table-cell>
#>   </calcite-table-row>
#>   <calcite-table-row>
#>     <calcite-table-cell alignment="start">6</calcite-table-cell>
#>     <calcite-table-cell alignment="start">2.7</calcite-table-cell>
#>     <calcite-table-cell alignment="start">5.1</calcite-table-cell>
#>     <calcite-table-cell alignment="start">1.6</calcite-table-cell>
#>     <calcite-table-cell alignment="start">versicolor</calcite-table-cell>
#>   </calcite-table-row>
#>   <calcite-table-row>
#>     <calcite-table-cell alignment="start">5.4</calcite-table-cell>
#>     <calcite-table-cell alignment="start">3</calcite-table-cell>
#>     <calcite-table-cell alignment="start">4.5</calcite-table-cell>
#>     <calcite-table-cell alignment="start">1.5</calcite-table-cell>
#>     <calcite-table-cell alignment="start">versicolor</calcite-table-cell>
#>   </calcite-table-row>
#>   <calcite-table-row>
#>     <calcite-table-cell alignment="start">6</calcite-table-cell>
#>     <calcite-table-cell alignment="start">3.4</calcite-table-cell>
#>     <calcite-table-cell alignment="start">4.5</calcite-table-cell>
#>     <calcite-table-cell alignment="start">1.6</calcite-table-cell>
#>     <calcite-table-cell alignment="start">versicolor</calcite-table-cell>
#>   </calcite-table-row>
#>   <calcite-table-row>
#>     <calcite-table-cell alignment="start">6.7</calcite-table-cell>
#>     <calcite-table-cell alignment="start">3.1</calcite-table-cell>
#>     <calcite-table-cell alignment="start">4.7</calcite-table-cell>
#>     <calcite-table-cell alignment="start">1.5</calcite-table-cell>
#>     <calcite-table-cell alignment="start">versicolor</calcite-table-cell>
#>   </calcite-table-row>
#>   <calcite-table-row>
#>     <calcite-table-cell alignment="start">6.3</calcite-table-cell>
#>     <calcite-table-cell alignment="start">2.3</calcite-table-cell>
#>     <calcite-table-cell alignment="start">4.4</calcite-table-cell>
#>     <calcite-table-cell alignment="start">1.3</calcite-table-cell>
#>     <calcite-table-cell alignment="start">versicolor</calcite-table-cell>
#>   </calcite-table-row>
#>   <calcite-table-row>
#>     <calcite-table-cell alignment="start">5.6</calcite-table-cell>
#>     <calcite-table-cell alignment="start">3</calcite-table-cell>
#>     <calcite-table-cell alignment="start">4.1</calcite-table-cell>
#>     <calcite-table-cell alignment="start">1.3</calcite-table-cell>
#>     <calcite-table-cell alignment="start">versicolor</calcite-table-cell>
#>   </calcite-table-row>
#>   <calcite-table-row>
#>     <calcite-table-cell alignment="start">5.5</calcite-table-cell>
#>     <calcite-table-cell alignment="start">2.5</calcite-table-cell>
#>     <calcite-table-cell alignment="start">4</calcite-table-cell>
#>     <calcite-table-cell alignment="start">1.3</calcite-table-cell>
#>     <calcite-table-cell alignment="start">versicolor</calcite-table-cell>
#>   </calcite-table-row>
#>   <calcite-table-row>
#>     <calcite-table-cell alignment="start">5.5</calcite-table-cell>
#>     <calcite-table-cell alignment="start">2.6</calcite-table-cell>
#>     <calcite-table-cell alignment="start">4.4</calcite-table-cell>
#>     <calcite-table-cell alignment="start">1.2</calcite-table-cell>
#>     <calcite-table-cell alignment="start">versicolor</calcite-table-cell>
#>   </calcite-table-row>
#>   <calcite-table-row>
#>     <calcite-table-cell alignment="start">6.1</calcite-table-cell>
#>     <calcite-table-cell alignment="start">3</calcite-table-cell>
#>     <calcite-table-cell alignment="start">4.6</calcite-table-cell>
#>     <calcite-table-cell alignment="start">1.4</calcite-table-cell>
#>     <calcite-table-cell alignment="start">versicolor</calcite-table-cell>
#>   </calcite-table-row>
#>   <calcite-table-row>
#>     <calcite-table-cell alignment="start">5.8</calcite-table-cell>
#>     <calcite-table-cell alignment="start">2.6</calcite-table-cell>
#>     <calcite-table-cell alignment="start">4</calcite-table-cell>
#>     <calcite-table-cell alignment="start">1.2</calcite-table-cell>
#>     <calcite-table-cell alignment="start">versicolor</calcite-table-cell>
#>   </calcite-table-row>
#>   <calcite-table-row>
#>     <calcite-table-cell alignment="start">5</calcite-table-cell>
#>     <calcite-table-cell alignment="start">2.3</calcite-table-cell>
#>     <calcite-table-cell alignment="start">3.3</calcite-table-cell>
#>     <calcite-table-cell alignment="start">1</calcite-table-cell>
#>     <calcite-table-cell alignment="start">versicolor</calcite-table-cell>
#>   </calcite-table-row>
#>   <calcite-table-row>
#>     <calcite-table-cell alignment="start">5.6</calcite-table-cell>
#>     <calcite-table-cell alignment="start">2.7</calcite-table-cell>
#>     <calcite-table-cell alignment="start">4.2</calcite-table-cell>
#>     <calcite-table-cell alignment="start">1.3</calcite-table-cell>
#>     <calcite-table-cell alignment="start">versicolor</calcite-table-cell>
#>   </calcite-table-row>
#>   <calcite-table-row>
#>     <calcite-table-cell alignment="start">5.7</calcite-table-cell>
#>     <calcite-table-cell alignment="start">3</calcite-table-cell>
#>     <calcite-table-cell alignment="start">4.2</calcite-table-cell>
#>     <calcite-table-cell alignment="start">1.2</calcite-table-cell>
#>     <calcite-table-cell alignment="start">versicolor</calcite-table-cell>
#>   </calcite-table-row>
#>   <calcite-table-row>
#>     <calcite-table-cell alignment="start">5.7</calcite-table-cell>
#>     <calcite-table-cell alignment="start">2.9</calcite-table-cell>
#>     <calcite-table-cell alignment="start">4.2</calcite-table-cell>
#>     <calcite-table-cell alignment="start">1.3</calcite-table-cell>
#>     <calcite-table-cell alignment="start">versicolor</calcite-table-cell>
#>   </calcite-table-row>
#>   <calcite-table-row>
#>     <calcite-table-cell alignment="start">6.2</calcite-table-cell>
#>     <calcite-table-cell alignment="start">2.9</calcite-table-cell>
#>     <calcite-table-cell alignment="start">4.3</calcite-table-cell>
#>     <calcite-table-cell alignment="start">1.3</calcite-table-cell>
#>     <calcite-table-cell alignment="start">versicolor</calcite-table-cell>
#>   </calcite-table-row>
#>   <calcite-table-row>
#>     <calcite-table-cell alignment="start">5.1</calcite-table-cell>
#>     <calcite-table-cell alignment="start">2.5</calcite-table-cell>
#>     <calcite-table-cell alignment="start">3</calcite-table-cell>
#>     <calcite-table-cell alignment="start">1.1</calcite-table-cell>
#>     <calcite-table-cell alignment="start">versicolor</calcite-table-cell>
#>   </calcite-table-row>
#>   <calcite-table-row>
#>     <calcite-table-cell alignment="start">5.7</calcite-table-cell>
#>     <calcite-table-cell alignment="start">2.8</calcite-table-cell>
#>     <calcite-table-cell alignment="start">4.1</calcite-table-cell>
#>     <calcite-table-cell alignment="start">1.3</calcite-table-cell>
#>     <calcite-table-cell alignment="start">versicolor</calcite-table-cell>
#>   </calcite-table-row>
#>   <calcite-table-row>
#>     <calcite-table-cell alignment="start">6.3</calcite-table-cell>
#>     <calcite-table-cell alignment="start">3.3</calcite-table-cell>
#>     <calcite-table-cell alignment="start">6</calcite-table-cell>
#>     <calcite-table-cell alignment="start">2.5</calcite-table-cell>
#>     <calcite-table-cell alignment="start">virginica</calcite-table-cell>
#>   </calcite-table-row>
#>   <calcite-table-row>
#>     <calcite-table-cell alignment="start">5.8</calcite-table-cell>
#>     <calcite-table-cell alignment="start">2.7</calcite-table-cell>
#>     <calcite-table-cell alignment="start">5.1</calcite-table-cell>
#>     <calcite-table-cell alignment="start">1.9</calcite-table-cell>
#>     <calcite-table-cell alignment="start">virginica</calcite-table-cell>
#>   </calcite-table-row>
#>   <calcite-table-row>
#>     <calcite-table-cell alignment="start">7.1</calcite-table-cell>
#>     <calcite-table-cell alignment="start">3</calcite-table-cell>
#>     <calcite-table-cell alignment="start">5.9</calcite-table-cell>
#>     <calcite-table-cell alignment="start">2.1</calcite-table-cell>
#>     <calcite-table-cell alignment="start">virginica</calcite-table-cell>
#>   </calcite-table-row>
#>   <calcite-table-row>
#>     <calcite-table-cell alignment="start">6.3</calcite-table-cell>
#>     <calcite-table-cell alignment="start">2.9</calcite-table-cell>
#>     <calcite-table-cell alignment="start">5.6</calcite-table-cell>
#>     <calcite-table-cell alignment="start">1.8</calcite-table-cell>
#>     <calcite-table-cell alignment="start">virginica</calcite-table-cell>
#>   </calcite-table-row>
#>   <calcite-table-row>
#>     <calcite-table-cell alignment="start">6.5</calcite-table-cell>
#>     <calcite-table-cell alignment="start">3</calcite-table-cell>
#>     <calcite-table-cell alignment="start">5.8</calcite-table-cell>
#>     <calcite-table-cell alignment="start">2.2</calcite-table-cell>
#>     <calcite-table-cell alignment="start">virginica</calcite-table-cell>
#>   </calcite-table-row>
#>   <calcite-table-row>
#>     <calcite-table-cell alignment="start">7.6</calcite-table-cell>
#>     <calcite-table-cell alignment="start">3</calcite-table-cell>
#>     <calcite-table-cell alignment="start">6.6</calcite-table-cell>
#>     <calcite-table-cell alignment="start">2.1</calcite-table-cell>
#>     <calcite-table-cell alignment="start">virginica</calcite-table-cell>
#>   </calcite-table-row>
#>   <calcite-table-row>
#>     <calcite-table-cell alignment="start">4.9</calcite-table-cell>
#>     <calcite-table-cell alignment="start">2.5</calcite-table-cell>
#>     <calcite-table-cell alignment="start">4.5</calcite-table-cell>
#>     <calcite-table-cell alignment="start">1.7</calcite-table-cell>
#>     <calcite-table-cell alignment="start">virginica</calcite-table-cell>
#>   </calcite-table-row>
#>   <calcite-table-row>
#>     <calcite-table-cell alignment="start">7.3</calcite-table-cell>
#>     <calcite-table-cell alignment="start">2.9</calcite-table-cell>
#>     <calcite-table-cell alignment="start">6.3</calcite-table-cell>
#>     <calcite-table-cell alignment="start">1.8</calcite-table-cell>
#>     <calcite-table-cell alignment="start">virginica</calcite-table-cell>
#>   </calcite-table-row>
#>   <calcite-table-row>
#>     <calcite-table-cell alignment="start">6.7</calcite-table-cell>
#>     <calcite-table-cell alignment="start">2.5</calcite-table-cell>
#>     <calcite-table-cell alignment="start">5.8</calcite-table-cell>
#>     <calcite-table-cell alignment="start">1.8</calcite-table-cell>
#>     <calcite-table-cell alignment="start">virginica</calcite-table-cell>
#>   </calcite-table-row>
#>   <calcite-table-row>
#>     <calcite-table-cell alignment="start">7.2</calcite-table-cell>
#>     <calcite-table-cell alignment="start">3.6</calcite-table-cell>
#>     <calcite-table-cell alignment="start">6.1</calcite-table-cell>
#>     <calcite-table-cell alignment="start">2.5</calcite-table-cell>
#>     <calcite-table-cell alignment="start">virginica</calcite-table-cell>
#>   </calcite-table-row>
#>   <calcite-table-row>
#>     <calcite-table-cell alignment="start">6.5</calcite-table-cell>
#>     <calcite-table-cell alignment="start">3.2</calcite-table-cell>
#>     <calcite-table-cell alignment="start">5.1</calcite-table-cell>
#>     <calcite-table-cell alignment="start">2</calcite-table-cell>
#>     <calcite-table-cell alignment="start">virginica</calcite-table-cell>
#>   </calcite-table-row>
#>   <calcite-table-row>
#>     <calcite-table-cell alignment="start">6.4</calcite-table-cell>
#>     <calcite-table-cell alignment="start">2.7</calcite-table-cell>
#>     <calcite-table-cell alignment="start">5.3</calcite-table-cell>
#>     <calcite-table-cell alignment="start">1.9</calcite-table-cell>
#>     <calcite-table-cell alignment="start">virginica</calcite-table-cell>
#>   </calcite-table-row>
#>   <calcite-table-row>
#>     <calcite-table-cell alignment="start">6.8</calcite-table-cell>
#>     <calcite-table-cell alignment="start">3</calcite-table-cell>
#>     <calcite-table-cell alignment="start">5.5</calcite-table-cell>
#>     <calcite-table-cell alignment="start">2.1</calcite-table-cell>
#>     <calcite-table-cell alignment="start">virginica</calcite-table-cell>
#>   </calcite-table-row>
#>   <calcite-table-row>
#>     <calcite-table-cell alignment="start">5.7</calcite-table-cell>
#>     <calcite-table-cell alignment="start">2.5</calcite-table-cell>
#>     <calcite-table-cell alignment="start">5</calcite-table-cell>
#>     <calcite-table-cell alignment="start">2</calcite-table-cell>
#>     <calcite-table-cell alignment="start">virginica</calcite-table-cell>
#>   </calcite-table-row>
#>   <calcite-table-row>
#>     <calcite-table-cell alignment="start">5.8</calcite-table-cell>
#>     <calcite-table-cell alignment="start">2.8</calcite-table-cell>
#>     <calcite-table-cell alignment="start">5.1</calcite-table-cell>
#>     <calcite-table-cell alignment="start">2.4</calcite-table-cell>
#>     <calcite-table-cell alignment="start">virginica</calcite-table-cell>
#>   </calcite-table-row>
#>   <calcite-table-row>
#>     <calcite-table-cell alignment="start">6.4</calcite-table-cell>
#>     <calcite-table-cell alignment="start">3.2</calcite-table-cell>
#>     <calcite-table-cell alignment="start">5.3</calcite-table-cell>
#>     <calcite-table-cell alignment="start">2.3</calcite-table-cell>
#>     <calcite-table-cell alignment="start">virginica</calcite-table-cell>
#>   </calcite-table-row>
#>   <calcite-table-row>
#>     <calcite-table-cell alignment="start">6.5</calcite-table-cell>
#>     <calcite-table-cell alignment="start">3</calcite-table-cell>
#>     <calcite-table-cell alignment="start">5.5</calcite-table-cell>
#>     <calcite-table-cell alignment="start">1.8</calcite-table-cell>
#>     <calcite-table-cell alignment="start">virginica</calcite-table-cell>
#>   </calcite-table-row>
#>   <calcite-table-row>
#>     <calcite-table-cell alignment="start">7.7</calcite-table-cell>
#>     <calcite-table-cell alignment="start">3.8</calcite-table-cell>
#>     <calcite-table-cell alignment="start">6.7</calcite-table-cell>
#>     <calcite-table-cell alignment="start">2.2</calcite-table-cell>
#>     <calcite-table-cell alignment="start">virginica</calcite-table-cell>
#>   </calcite-table-row>
#>   <calcite-table-row>
#>     <calcite-table-cell alignment="start">7.7</calcite-table-cell>
#>     <calcite-table-cell alignment="start">2.6</calcite-table-cell>
#>     <calcite-table-cell alignment="start">6.9</calcite-table-cell>
#>     <calcite-table-cell alignment="start">2.3</calcite-table-cell>
#>     <calcite-table-cell alignment="start">virginica</calcite-table-cell>
#>   </calcite-table-row>
#>   <calcite-table-row>
#>     <calcite-table-cell alignment="start">6</calcite-table-cell>
#>     <calcite-table-cell alignment="start">2.2</calcite-table-cell>
#>     <calcite-table-cell alignment="start">5</calcite-table-cell>
#>     <calcite-table-cell alignment="start">1.5</calcite-table-cell>
#>     <calcite-table-cell alignment="start">virginica</calcite-table-cell>
#>   </calcite-table-row>
#>   <calcite-table-row>
#>     <calcite-table-cell alignment="start">6.9</calcite-table-cell>
#>     <calcite-table-cell alignment="start">3.2</calcite-table-cell>
#>     <calcite-table-cell alignment="start">5.7</calcite-table-cell>
#>     <calcite-table-cell alignment="start">2.3</calcite-table-cell>
#>     <calcite-table-cell alignment="start">virginica</calcite-table-cell>
#>   </calcite-table-row>
#>   <calcite-table-row>
#>     <calcite-table-cell alignment="start">5.6</calcite-table-cell>
#>     <calcite-table-cell alignment="start">2.8</calcite-table-cell>
#>     <calcite-table-cell alignment="start">4.9</calcite-table-cell>
#>     <calcite-table-cell alignment="start">2</calcite-table-cell>
#>     <calcite-table-cell alignment="start">virginica</calcite-table-cell>
#>   </calcite-table-row>
#>   <calcite-table-row>
#>     <calcite-table-cell alignment="start">7.7</calcite-table-cell>
#>     <calcite-table-cell alignment="start">2.8</calcite-table-cell>
#>     <calcite-table-cell alignment="start">6.7</calcite-table-cell>
#>     <calcite-table-cell alignment="start">2</calcite-table-cell>
#>     <calcite-table-cell alignment="start">virginica</calcite-table-cell>
#>   </calcite-table-row>
#>   <calcite-table-row>
#>     <calcite-table-cell alignment="start">6.3</calcite-table-cell>
#>     <calcite-table-cell alignment="start">2.7</calcite-table-cell>
#>     <calcite-table-cell alignment="start">4.9</calcite-table-cell>
#>     <calcite-table-cell alignment="start">1.8</calcite-table-cell>
#>     <calcite-table-cell alignment="start">virginica</calcite-table-cell>
#>   </calcite-table-row>
#>   <calcite-table-row>
#>     <calcite-table-cell alignment="start">6.7</calcite-table-cell>
#>     <calcite-table-cell alignment="start">3.3</calcite-table-cell>
#>     <calcite-table-cell alignment="start">5.7</calcite-table-cell>
#>     <calcite-table-cell alignment="start">2.1</calcite-table-cell>
#>     <calcite-table-cell alignment="start">virginica</calcite-table-cell>
#>   </calcite-table-row>
#>   <calcite-table-row>
#>     <calcite-table-cell alignment="start">7.2</calcite-table-cell>
#>     <calcite-table-cell alignment="start">3.2</calcite-table-cell>
#>     <calcite-table-cell alignment="start">6</calcite-table-cell>
#>     <calcite-table-cell alignment="start">1.8</calcite-table-cell>
#>     <calcite-table-cell alignment="start">virginica</calcite-table-cell>
#>   </calcite-table-row>
#>   <calcite-table-row>
#>     <calcite-table-cell alignment="start">6.2</calcite-table-cell>
#>     <calcite-table-cell alignment="start">2.8</calcite-table-cell>
#>     <calcite-table-cell alignment="start">4.8</calcite-table-cell>
#>     <calcite-table-cell alignment="start">1.8</calcite-table-cell>
#>     <calcite-table-cell alignment="start">virginica</calcite-table-cell>
#>   </calcite-table-row>
#>   <calcite-table-row>
#>     <calcite-table-cell alignment="start">6.1</calcite-table-cell>
#>     <calcite-table-cell alignment="start">3</calcite-table-cell>
#>     <calcite-table-cell alignment="start">4.9</calcite-table-cell>
#>     <calcite-table-cell alignment="start">1.8</calcite-table-cell>
#>     <calcite-table-cell alignment="start">virginica</calcite-table-cell>
#>   </calcite-table-row>
#>   <calcite-table-row>
#>     <calcite-table-cell alignment="start">6.4</calcite-table-cell>
#>     <calcite-table-cell alignment="start">2.8</calcite-table-cell>
#>     <calcite-table-cell alignment="start">5.6</calcite-table-cell>
#>     <calcite-table-cell alignment="start">2.1</calcite-table-cell>
#>     <calcite-table-cell alignment="start">virginica</calcite-table-cell>
#>   </calcite-table-row>
#>   <calcite-table-row>
#>     <calcite-table-cell alignment="start">7.2</calcite-table-cell>
#>     <calcite-table-cell alignment="start">3</calcite-table-cell>
#>     <calcite-table-cell alignment="start">5.8</calcite-table-cell>
#>     <calcite-table-cell alignment="start">1.6</calcite-table-cell>
#>     <calcite-table-cell alignment="start">virginica</calcite-table-cell>
#>   </calcite-table-row>
#>   <calcite-table-row>
#>     <calcite-table-cell alignment="start">7.4</calcite-table-cell>
#>     <calcite-table-cell alignment="start">2.8</calcite-table-cell>
#>     <calcite-table-cell alignment="start">6.1</calcite-table-cell>
#>     <calcite-table-cell alignment="start">1.9</calcite-table-cell>
#>     <calcite-table-cell alignment="start">virginica</calcite-table-cell>
#>   </calcite-table-row>
#>   <calcite-table-row>
#>     <calcite-table-cell alignment="start">7.9</calcite-table-cell>
#>     <calcite-table-cell alignment="start">3.8</calcite-table-cell>
#>     <calcite-table-cell alignment="start">6.4</calcite-table-cell>
#>     <calcite-table-cell alignment="start">2</calcite-table-cell>
#>     <calcite-table-cell alignment="start">virginica</calcite-table-cell>
#>   </calcite-table-row>
#>   <calcite-table-row>
#>     <calcite-table-cell alignment="start">6.4</calcite-table-cell>
#>     <calcite-table-cell alignment="start">2.8</calcite-table-cell>
#>     <calcite-table-cell alignment="start">5.6</calcite-table-cell>
#>     <calcite-table-cell alignment="start">2.2</calcite-table-cell>
#>     <calcite-table-cell alignment="start">virginica</calcite-table-cell>
#>   </calcite-table-row>
#>   <calcite-table-row>
#>     <calcite-table-cell alignment="start">6.3</calcite-table-cell>
#>     <calcite-table-cell alignment="start">2.8</calcite-table-cell>
#>     <calcite-table-cell alignment="start">5.1</calcite-table-cell>
#>     <calcite-table-cell alignment="start">1.5</calcite-table-cell>
#>     <calcite-table-cell alignment="start">virginica</calcite-table-cell>
#>   </calcite-table-row>
#>   <calcite-table-row>
#>     <calcite-table-cell alignment="start">6.1</calcite-table-cell>
#>     <calcite-table-cell alignment="start">2.6</calcite-table-cell>
#>     <calcite-table-cell alignment="start">5.6</calcite-table-cell>
#>     <calcite-table-cell alignment="start">1.4</calcite-table-cell>
#>     <calcite-table-cell alignment="start">virginica</calcite-table-cell>
#>   </calcite-table-row>
#>   <calcite-table-row>
#>     <calcite-table-cell alignment="start">7.7</calcite-table-cell>
#>     <calcite-table-cell alignment="start">3</calcite-table-cell>
#>     <calcite-table-cell alignment="start">6.1</calcite-table-cell>
#>     <calcite-table-cell alignment="start">2.3</calcite-table-cell>
#>     <calcite-table-cell alignment="start">virginica</calcite-table-cell>
#>   </calcite-table-row>
#>   <calcite-table-row>
#>     <calcite-table-cell alignment="start">6.3</calcite-table-cell>
#>     <calcite-table-cell alignment="start">3.4</calcite-table-cell>
#>     <calcite-table-cell alignment="start">5.6</calcite-table-cell>
#>     <calcite-table-cell alignment="start">2.4</calcite-table-cell>
#>     <calcite-table-cell alignment="start">virginica</calcite-table-cell>
#>   </calcite-table-row>
#>   <calcite-table-row>
#>     <calcite-table-cell alignment="start">6.4</calcite-table-cell>
#>     <calcite-table-cell alignment="start">3.1</calcite-table-cell>
#>     <calcite-table-cell alignment="start">5.5</calcite-table-cell>
#>     <calcite-table-cell alignment="start">1.8</calcite-table-cell>
#>     <calcite-table-cell alignment="start">virginica</calcite-table-cell>
#>   </calcite-table-row>
#>   <calcite-table-row>
#>     <calcite-table-cell alignment="start">6</calcite-table-cell>
#>     <calcite-table-cell alignment="start">3</calcite-table-cell>
#>     <calcite-table-cell alignment="start">4.8</calcite-table-cell>
#>     <calcite-table-cell alignment="start">1.8</calcite-table-cell>
#>     <calcite-table-cell alignment="start">virginica</calcite-table-cell>
#>   </calcite-table-row>
#>   <calcite-table-row>
#>     <calcite-table-cell alignment="start">6.9</calcite-table-cell>
#>     <calcite-table-cell alignment="start">3.1</calcite-table-cell>
#>     <calcite-table-cell alignment="start">5.4</calcite-table-cell>
#>     <calcite-table-cell alignment="start">2.1</calcite-table-cell>
#>     <calcite-table-cell alignment="start">virginica</calcite-table-cell>
#>   </calcite-table-row>
#>   <calcite-table-row>
#>     <calcite-table-cell alignment="start">6.7</calcite-table-cell>
#>     <calcite-table-cell alignment="start">3.1</calcite-table-cell>
#>     <calcite-table-cell alignment="start">5.6</calcite-table-cell>
#>     <calcite-table-cell alignment="start">2.4</calcite-table-cell>
#>     <calcite-table-cell alignment="start">virginica</calcite-table-cell>
#>   </calcite-table-row>
#>   <calcite-table-row>
#>     <calcite-table-cell alignment="start">6.9</calcite-table-cell>
#>     <calcite-table-cell alignment="start">3.1</calcite-table-cell>
#>     <calcite-table-cell alignment="start">5.1</calcite-table-cell>
#>     <calcite-table-cell alignment="start">2.3</calcite-table-cell>
#>     <calcite-table-cell alignment="start">virginica</calcite-table-cell>
#>   </calcite-table-row>
#>   <calcite-table-row>
#>     <calcite-table-cell alignment="start">5.8</calcite-table-cell>
#>     <calcite-table-cell alignment="start">2.7</calcite-table-cell>
#>     <calcite-table-cell alignment="start">5.1</calcite-table-cell>
#>     <calcite-table-cell alignment="start">1.9</calcite-table-cell>
#>     <calcite-table-cell alignment="start">virginica</calcite-table-cell>
#>   </calcite-table-row>
#>   <calcite-table-row>
#>     <calcite-table-cell alignment="start">6.8</calcite-table-cell>
#>     <calcite-table-cell alignment="start">3.2</calcite-table-cell>
#>     <calcite-table-cell alignment="start">5.9</calcite-table-cell>
#>     <calcite-table-cell alignment="start">2.3</calcite-table-cell>
#>     <calcite-table-cell alignment="start">virginica</calcite-table-cell>
#>   </calcite-table-row>
#>   <calcite-table-row>
#>     <calcite-table-cell alignment="start">6.7</calcite-table-cell>
#>     <calcite-table-cell alignment="start">3.3</calcite-table-cell>
#>     <calcite-table-cell alignment="start">5.7</calcite-table-cell>
#>     <calcite-table-cell alignment="start">2.5</calcite-table-cell>
#>     <calcite-table-cell alignment="start">virginica</calcite-table-cell>
#>   </calcite-table-row>
#>   <calcite-table-row>
#>     <calcite-table-cell alignment="start">6.7</calcite-table-cell>
#>     <calcite-table-cell alignment="start">3</calcite-table-cell>
#>     <calcite-table-cell alignment="start">5.2</calcite-table-cell>
#>     <calcite-table-cell alignment="start">2.3</calcite-table-cell>
#>     <calcite-table-cell alignment="start">virginica</calcite-table-cell>
#>   </calcite-table-row>
#>   <calcite-table-row>
#>     <calcite-table-cell alignment="start">6.3</calcite-table-cell>
#>     <calcite-table-cell alignment="start">2.5</calcite-table-cell>
#>     <calcite-table-cell alignment="start">5</calcite-table-cell>
#>     <calcite-table-cell alignment="start">1.9</calcite-table-cell>
#>     <calcite-table-cell alignment="start">virginica</calcite-table-cell>
#>   </calcite-table-row>
#>   <calcite-table-row>
#>     <calcite-table-cell alignment="start">6.5</calcite-table-cell>
#>     <calcite-table-cell alignment="start">3</calcite-table-cell>
#>     <calcite-table-cell alignment="start">5.2</calcite-table-cell>
#>     <calcite-table-cell alignment="start">2</calcite-table-cell>
#>     <calcite-table-cell alignment="start">virginica</calcite-table-cell>
#>   </calcite-table-row>
#>   <calcite-table-row>
#>     <calcite-table-cell alignment="start">6.2</calcite-table-cell>
#>     <calcite-table-cell alignment="start">3.4</calcite-table-cell>
#>     <calcite-table-cell alignment="start">5.4</calcite-table-cell>
#>     <calcite-table-cell alignment="start">2.3</calcite-table-cell>
#>     <calcite-table-cell alignment="start">virginica</calcite-table-cell>
#>   </calcite-table-row>
#>   <calcite-table-row>
#>     <calcite-table-cell alignment="start">5.9</calcite-table-cell>
#>     <calcite-table-cell alignment="start">3</calcite-table-cell>
#>     <calcite-table-cell alignment="start">5.1</calcite-table-cell>
#>     <calcite-table-cell alignment="start">1.8</calcite-table-cell>
#>     <calcite-table-cell alignment="start">virginica</calcite-table-cell>
#>   </calcite-table-row>
#> </calcite-table>

# Table with custom headers
calcite_table(
  data = mtcars[1:5, 1:3],
  caption = "Cars",
  header = list(
    calcite_table_header(heading = "Miles/Gallon", description = "Fuel efficiency"),
    calcite_table_header(heading = "Cylinders", description = "Number of cylinders"),
    calcite_table_header(heading = "Displacement", description = "Engine size")
  )
)
#> <calcite-table caption="Cars">
#>   <calcite-table-row slot="table-header">
#>     <calcite-table-header heading="Miles/Gallon" description="Fuel efficiency" alignment="start"></calcite-table-header>
#>     <calcite-table-header heading="Cylinders" description="Number of cylinders" alignment="start"></calcite-table-header>
#>     <calcite-table-header heading="Displacement" description="Engine size" alignment="start"></calcite-table-header>
#>   </calcite-table-row>
#>   <calcite-table-row>
#>     <calcite-table-cell alignment="start">21</calcite-table-cell>
#>     <calcite-table-cell alignment="start">6</calcite-table-cell>
#>     <calcite-table-cell alignment="start">160</calcite-table-cell>
#>   </calcite-table-row>
#>   <calcite-table-row>
#>     <calcite-table-cell alignment="start">21</calcite-table-cell>
#>     <calcite-table-cell alignment="start">6</calcite-table-cell>
#>     <calcite-table-cell alignment="start">160</calcite-table-cell>
#>   </calcite-table-row>
#>   <calcite-table-row>
#>     <calcite-table-cell alignment="start">22.8</calcite-table-cell>
#>     <calcite-table-cell alignment="start">4</calcite-table-cell>
#>     <calcite-table-cell alignment="start">108</calcite-table-cell>
#>   </calcite-table-row>
#>   <calcite-table-row>
#>     <calcite-table-cell alignment="start">21.4</calcite-table-cell>
#>     <calcite-table-cell alignment="start">6</calcite-table-cell>
#>     <calcite-table-cell alignment="start">258</calcite-table-cell>
#>   </calcite-table-row>
#>   <calcite-table-row>
#>     <calcite-table-cell alignment="start">18.7</calcite-table-cell>
#>     <calcite-table-cell alignment="start">8</calcite-table-cell>
#>     <calcite-table-cell alignment="start">360</calcite-table-cell>
#>   </calcite-table-row>
#> </calcite-table>
```
