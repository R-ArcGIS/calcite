# Create a Avatar component

Create a Avatar component

## Usage

``` r
calcite_avatar(...)
```

## Arguments

- ...:

  named attributes passed to
  [`htmltools::tag()`](https://rstudio.github.io/htmltools/reference/builder.html)

## Value

an object of class `calcite_component` which is a subclass of
`shiny.tag`

## Details

### Properties

The following properties are provided by this component:

|           |           |                                                                                                                                     |                   |                       |
|-----------|-----------|-------------------------------------------------------------------------------------------------------------------------------------|-------------------|-----------------------|
| Name      | Attribute | Description                                                                                                                         | Values            | Reflects to Attribute |
| fullName  | full-name | Specifies the full name of the user. When `label` and `thumbnail` are not defined, specifies the accessible name for the component. | string            | TRUE                  |
| label     | label     | Specifies alternative text when `thumbnail` is defined, otherwise specifies an accessible label.                                    | string            | FALSE                 |
| scale     | scale     | Specifies the size of the component.                                                                                                | "l" \| "m" \| "s" | TRUE                  |
| thumbnail | thumbnail | Specifies the `src` to an image (remember to add a token if the user is private).                                                   | string            | TRUE                  |
| userId    | user-id   | Specifies the unique id of the user.                                                                                                | string            | TRUE                  |
| username  | username  | Specifies the username of the user.                                                                                                 | string            | TRUE                  |

## References

[Official
Documentation](https://developers.arcgis.com/calcite-design-system/components/avatar/)

## Examples

``` r
calcite_avatar()
#> <calcite-avatar></calcite-avatar>
```
