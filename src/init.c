#include <R.h>
#include <Rinternals.h>
#include <R_ext/Rdynload.h>

// Forward declaration
SEXP make_table_rows(SEXP df, SEXP alignment_val, SEXP row_fn);

// Registration
static const R_CallMethodDef CallEntries[] = {
  {"make_table_rows", (DL_FUNC) &make_table_rows, 3},
  {NULL, NULL, 0}
};

void R_init_calcite(DllInfo *dll) {
  R_registerRoutines(dll, NULL, CallEntries, NULL, NULL);
  R_useDynamicSymbols(dll, FALSE);
}
