SKIP: FAILED

void reflect_310de5() {
  vector<float16_t, 4> res = reflect((float16_t(0.0h)).xxxx, (float16_t(0.0h)).xxxx);
}

struct tint_symbol {
  float4 value : SV_Position;
};

float4 vertex_main_inner() {
  reflect_310de5();
  return (0.0f).xxxx;
}

tint_symbol vertex_main() {
  const float4 inner_result = vertex_main_inner();
  tint_symbol wrapper_result = (tint_symbol)0;
  wrapper_result.value = inner_result;
  return wrapper_result;
}

void fragment_main() {
  reflect_310de5();
  return;
}

[numthreads(1, 1, 1)]
void compute_main() {
  reflect_310de5();
  return;
}
