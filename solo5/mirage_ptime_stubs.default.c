#include <caml/mlvalues.h>
#include <caml/alloc.h>
#include <caml/memory.h>
#include <caml/fail.h>

CAMLprim value
caml_get_wall_clock(value v_unit)
{
  CAMLparam1(v_unit);
  CAMLreturn(caml_copy_int64(0LL));
}
