make_rows1 <- function(x) {
  purrr::list_transpose(as.list(x)) |>
    lapply(function(row) {
      calcite::calcite_table_row(
        lapply(row, calcite::calcite_table_cell)
      )
    })
}


make_rows2 <- function(x) {
  x |>
    purrr::pmap(\(...) {
      calcite::calcite_table_row(
        purrr::map(list(...), calcite::calcite_table_cell)
      )
    })
}

make_rows3 <- function(x) {
  n <- nrow(x)
  out <- vector("list", n)

  for (i in seq_len(n)) {
    row <- x[i, , drop = FALSE]
    cells <- vector("list", ncol(row))

    for (j in seq_along(row)) {
      cells[[j]] <- calcite::calcite_table_cell(row[[j]])
    }

    out[[i]] <- calcite::calcite_table_row(cells)
  }
  out
}

x <- dplyr::sample_n(penguins, 5000, TRUE)

bm <- bench::mark(
  transpose = make_rows1(x),
  pmap = make_rows2(x),
  nested_for_loops = make_rows3(x),
  c = make_rows_c(x, calcite::calcite_table_cell, calcite::calcite_table_row),
  check = FALSE,
  max_iterations = 1
)

bm
