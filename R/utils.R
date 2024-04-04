# this function is used to ensure that each component is named
check_dots_named <- function(dots, call = rlang::caller_env()) {
  print(dots)
  if (length(dots) == 0) {
    return(invisible(NULL))
  }

  if (!rlang::is_named2(dots)) {
    cli::cli_abort(
      "All arguments provided to {.arg ...} must be named",
      call = call
    )
  }
  invisible(dots)
}
