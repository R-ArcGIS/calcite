#include <R.h>
#include <Rinternals.h>
#include <Rversion.h>

#if R_VERSION < R_Version(4, 5, 0)
# define isDataFrame(x) Rf_isFrame(x)
#endif

/* Convert column value at index i to character string */
static SEXP value_to_string(SEXP col, R_xlen_t i) {
  switch (TYPEOF(col)) {
  case REALSXP: {
    char buf[64];
    double val = REAL(col)[i];
    if (R_IsNA(val)) {
      return Rf_mkChar("NA");
    }
    snprintf(buf, sizeof(buf), "%g", val);
    return Rf_mkChar(buf);
  }
  case INTSXP: {
    // Check if it's a factor
    SEXP levels = Rf_getAttrib(col, R_LevelsSymbol);
    if (levels != R_NilValue && TYPEOF(levels) == STRSXP) {
      // It's a factor - get the level
      int val = INTEGER(col)[i];
      if (val == NA_INTEGER) {
        return Rf_mkChar("NA");
      }
      // Factor levels are 1-indexed
      return STRING_ELT(levels, val - 1);
    } else {
      // Regular integer
      char buf[32];
      int val = INTEGER(col)[i];
      if (val == NA_INTEGER) {
        return Rf_mkChar("NA");
      }
      snprintf(buf, sizeof(buf), "%d", val);
      return Rf_mkChar(buf);
    }
  }
  case LGLSXP: {
    int val = LOGICAL(col)[i];
    if (val == NA_LOGICAL) {
      return Rf_mkChar("NA");
    }
    return Rf_mkChar(val ? "TRUE" : "FALSE");
  }
  case STRSXP:
    return STRING_ELT(col, i);

  default:
    Rf_error("Unsupported column type");
  }
}

/* Build a calcite-table-cell tag structure */
static SEXP make_cell(SEXP content_str, SEXP alignment) {
  // Create the tag structure: list(name, attribs, children)
  SEXP cell = PROTECT(Rf_allocVector(VECSXP, 3));
  SEXP names = PROTECT(Rf_allocVector(STRSXP, 3));

  // Set names
  SET_STRING_ELT(names, 0, Rf_mkChar("name"));
  SET_STRING_ELT(names, 1, Rf_mkChar("attribs"));
  SET_STRING_ELT(names, 2, Rf_mkChar("children"));

  // name = "calcite-table-cell"
  SET_VECTOR_ELT(cell, 0, Rf_mkString("calcite-table-cell"));

  // attribs = list(alignment = alignment)
  SEXP attribs = PROTECT(Rf_allocVector(VECSXP, 1));
  SEXP attrib_names = PROTECT(Rf_allocVector(STRSXP, 1));
  SET_STRING_ELT(attrib_names, 0, Rf_mkChar("alignment"));
  SET_VECTOR_ELT(attribs, 0, alignment);
  Rf_setAttrib(attribs, R_NamesSymbol, attrib_names);
  SET_VECTOR_ELT(cell, 1, attribs);

  // children = list(content_str)
  SEXP children = PROTECT(Rf_allocVector(VECSXP, 1));
  SET_VECTOR_ELT(children, 0, Rf_ScalarString(content_str));
  SET_VECTOR_ELT(cell, 2, children);

  // Set names and class
  Rf_setAttrib(cell, R_NamesSymbol, names);
  SEXP class = PROTECT(Rf_allocVector(STRSXP, 2));
  SET_STRING_ELT(class, 0, Rf_mkChar("shiny.tag"));
  SET_STRING_ELT(class, 1, Rf_mkChar("list"));
  Rf_setAttrib(cell, R_ClassSymbol, class);

  UNPROTECT(6);
  return cell;
}

SEXP make_table_rows(SEXP df, SEXP alignment_val, SEXP row_fn) {
  if (!isDataFrame(df)) {
    Rf_error("df must be a data.frame");
  }

  R_xlen_t ncol = Rf_length(df);
  R_xlen_t nrow = Rf_length(VECTOR_ELT(df, 0));

  // Pre-extract columns
  SEXP cols = PROTECT(Rf_allocVector(VECSXP, ncol));
  for (R_xlen_t j = 0; j < ncol; j++) {
    SET_VECTOR_ELT(cols, j, VECTOR_ELT(df, j));
  }

  // Output rows
  SEXP out = PROTECT(Rf_allocVector(VECSXP, nrow));

  for (R_xlen_t i = 0; i < nrow; i++) {
    // Build cells for this row
    SEXP cells = PROTECT(Rf_allocVector(VECSXP, ncol));

    for (R_xlen_t j = 0; j < ncol; j++) {
      SEXP col = VECTOR_ELT(cols, j);
      SEXP content_str = PROTECT(value_to_string(col, i));
      SEXP cell = PROTECT(make_cell(content_str, alignment_val));
      SET_VECTOR_ELT(cells, j, cell);
      UNPROTECT(2); // content_str, cell
    }

    // Call row_fn to wrap cells in calcite-table-row
    SEXP row_call = PROTECT(Rf_lang2(row_fn, cells));
    SEXP row = PROTECT(Rf_eval(row_call, R_GlobalEnv));
    SET_VECTOR_ELT(out, i, row);

    UNPROTECT(3); // cells, row_call, row
  }

  UNPROTECT(2); // cols, out
  return out;
}
