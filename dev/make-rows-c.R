code <- r"-{
#include <R.h>
#include <Rinternals.h>

/* extract i-th element from a column as an SEXP scalar */
static inline SEXP get_scalar(SEXP col, R_xlen_t i) {
  switch (TYPEOF(col)) {
  case REALSXP:
    return Rf_ScalarReal(REAL(col)[i]);

  case INTSXP:
    return Rf_ScalarInteger(INTEGER(col)[i]);

  case LGLSXP:
    return Rf_ScalarLogical(LOGICAL(col)[i]);

  case STRSXP:
    return STRING_ELT(col, i);

  case VECSXP:
    return VECTOR_ELT(col, i);

  default:
    Rf_error("Unsupported column type");
  }
}

SEXP make_rows_c(SEXP df, SEXP cell_fn, SEXP row_fn) {
  if (!Rf_isFrame(df)) {
    Rf_error("df must be a data.frame");
  }

  R_xlen_t ncol = Rf_length(df);
  R_xlen_t nrow = Rf_length(VECTOR_ELT(df, 0));

  /* cache columns */
  SEXP cols = PROTECT(Rf_allocVector(VECSXP, ncol));
  for (R_xlen_t j = 0; j < ncol; j++) {
    SET_VECTOR_ELT(cols, j, VECTOR_ELT(df, j));
  }

  /* output rows */
  SEXP out = PROTECT(Rf_allocVector(VECSXP, nrow));

  for (R_xlen_t i = 0; i < nrow; i++) {
    SEXP cells = PROTECT(Rf_allocVector(VECSXP, ncol));

    for (R_xlen_t j = 0; j < ncol; j++) {
      SEXP col = VECTOR_ELT(cols, j);
      SEXP val = get_scalar(col, i);

      SEXP call = PROTECT(Rf_lang2(cell_fn, val));
      SEXP cell = Rf_eval(call, R_GlobalEnv);

      SET_VECTOR_ELT(cells, j, cell);
      UNPROTECT(1); /* call */
    }

    SEXP row_call = PROTECT(Rf_lang2(row_fn, cells));
    SEXP row = Rf_eval(row_call, R_GlobalEnv);

    SET_VECTOR_ELT(out, i, row);
    UNPROTECT(2); /* cells, row_call */
  }

  UNPROTECT(2); /* cols, out */
  return out;
}


}-"

callme::compile(code, )


make_rows_c(iris, calcite::calcite_table_cell, calcite::calcite_table_row)
