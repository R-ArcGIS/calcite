# Create a Calcite Table Header

Creates a header cell for use in calcite_table headers.

## Usage

``` r
calcite_table_header(heading, description = NULL, alignment = "start")
```

## Arguments

- heading:

  Header text to display

- description:

  Optional description text below heading

- alignment:

  Alignment: "start", "center", or "end" (default: "start")

## Value

A calcite-table-header tag

## Examples

``` r
calcite_table_header(
  heading = "Name",
  description = "Person's full name"
)
#> <calcite-table-header heading="Name" description="Person&#39;s full name" alignment="start"></calcite-table-header>
```
