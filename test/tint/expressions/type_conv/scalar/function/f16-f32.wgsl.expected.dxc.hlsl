[numthreads(1, 1, 1)]
void unused_entry_point() {
  return;
}

static float16_t t = float16_t(0.0h);

float16_t m() {
  t = float16_t(1.0h);
  return float16_t(t);
}

void f() {
  const float16_t tint_symbol = m();
  float v = float(tint_symbol);
}
