SKIP: FAILED

[numthreads(1, 1, 1)]
void unused_entry_point() {
  return;
}

static matrix<float16_t, 2, 3> m = matrix<float16_t, 2, 3>(vector<float16_t, 3>(float16_t(0.0h), float16_t(1.0h), float16_t(2.0h)), vector<float16_t, 3>(float16_t(3.0h), float16_t(4.0h), float16_t(5.0h)));

matrix<float16_t, 2, 3> f() {
  const matrix<float16_t, 2, 3> m_1 = matrix<float16_t, 2, 3>(m);
  return m_1;
}
FXC validation failure:
D:\Projects\RampUp\dawn\test\tint\expressions\Shader@0x000001871FDC1880(6,15-23): error X3000: syntax error: unexpected token 'float16_t'
