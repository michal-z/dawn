int tint_extract_bits(int v, uint offset, uint count) {
  const uint s = min(offset, 32u);
  const uint e = min(32u, (s + count));
  const uint shl = (32u - e);
  const uint shr = (shl + s);
  return ((v << shl) >> shr);
}

void f_1() {
  int v = 0;
  uint offset_1 = 0u;
  uint count = 0u;
  const int x_16 = v;
  const uint x_17 = offset_1;
  const uint x_18 = count;
  const int x_14 = tint_extract_bits(x_16, x_17, x_18);
  return;
}

[numthreads(1, 1, 1)]
void f() {
  f_1();
  return;
}
