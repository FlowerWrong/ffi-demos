#include "ruby.h"

int sum(int a, int b);

VALUE demo_sum(VALUE self, VALUE aa, VALUE bb);

int sum(int a, int b) {
  return a + b;
}

VALUE demo_sum(VALUE self, VALUE aa, VALUE bb) {
  int res = sum(FIX2INT(aa), FIX2INT(bb));
  return INT2FIX(res);
}

void Init_Demo() {
  VALUE module;
  module = rb_define_module("Demo");
  rb_define_method(module, "demo_sum", demo_sum, 2);
}
