void min_c76fa6() {
  float4 res = min((1.0f).xxxx, (1.0f).xxxx);
}

struct tint_symbol {
  float4 value : SV_Position;
};

float4 vertex_main_inner() {
  min_c76fa6();
  return (0.0f).xxxx;
}

tint_symbol vertex_main() {
  const float4 inner_result = vertex_main_inner();
  tint_symbol wrapper_result = (tint_symbol)0;
  wrapper_result.value = inner_result;
  return wrapper_result;
}

void fragment_main() {
  min_c76fa6();
  return;
}

[numthreads(1, 1, 1)]
void compute_main() {
  min_c76fa6();
  return;
}