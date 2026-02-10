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

# Bulk tag creation - bypass individual calcite_table_cell() calls
make_rows_bulk <- function(x, alignment = "start") {
  n <- nrow(x)
  m <- ncol(x)

  # Pre-allocate all cells at once
  all_cells <- vector("list", n * m)

  # Convert entire data.frame to character in one shot
  char_data <- lapply(x, as.character)

  # Build all cell tags in bulk
  k <- 1
  for (i in seq_len(n)) {
    for (j in seq_len(m)) {
      # Directly construct the tag structure instead of calling calcite_table_cell()
      all_cells[[k]] <- structure(
        list(
          name = "calcite-table-cell",
          attribs = list(alignment = alignment),
          children = list(char_data[[j]][i])
        ),
        class = c("shiny.tag", "list")
      )
      k <- k + 1
    }
  }

  # Now group into rows
  out <- vector("list", n)
  for (i in seq_len(n)) {
    start_idx <- (i - 1) * m + 1
    end_idx <- i * m
    out[[i]] <- calcite::calcite_table_row(all_cells[start_idx:end_idx])
  }

  out
}

# Ultra-optimized: vectorize both cell and row creation
make_rows_ultra <- function(x, alignment = "start") {
  n <- nrow(x)
  m <- ncol(x)

  # Convert entire data.frame to character vectors
  char_data <- lapply(x, as.character)

  # Pre-build the repeated cell tag structure
  cell_template <- list(
    name = "calcite-table-cell",
    attribs = list(alignment = alignment)
  )

  # Build rows directly without intermediate cell storage
  out <- vector("list", n)

  for (i in seq_len(n)) {
    cells <- vector("list", m)

    for (j in seq_len(m)) {
      # Clone template and add content
      cells[[j]] <- structure(
        c(cell_template, children = list(list(char_data[[j]][i]))),
        class = c("shiny.tag", "list")
      )
    }

    out[[i]] <- calcite::calcite_table_row(cells)
  }

  out
}

x <- dplyr::sample_n(penguins, 10000, TRUE)

# Uncomment after sourcing dev/make-rows-c.R
source("dev/make-rows-c.R")

bench::mark(
  # transpose = make_rows1(x),
  # pmap = make_rows2(x),
  # nested_for_loops = make_rows3(x),
  bulk = make_rows_bulk(x),
  ultra = make_rows_ultra(x),
  c_ultra = make_rows_c_ultra_wrapper(x),
  check = FALSE,
  max_iterations = 1
)[, 1:5]
