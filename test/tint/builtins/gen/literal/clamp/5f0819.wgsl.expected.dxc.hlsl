void clamp_5f0819() {
  int3 res = clamp((1).xxx, (1).xxx, (1).xxx);
}

struct tint_symbol {
  float4 value : SV_Position;
};

float4 vertex_main_inner() {
  clamp_5f0819();
  return (0.0f).xxxx;
}

tint_symbol vertex_main() {
  const float4 inner_result = vertex_main_inner();
  tint_symbol wrapper_result = (tint_symbol)0;
  wrapper_result.value = inner_result;
  return wrapper_result;
}

void fragment_main() {
  clamp_5f0819();
  return;
}

[numthreads(1, 1, 1)]
void compute_main() {
  clamp_5f0819();
  return;
}