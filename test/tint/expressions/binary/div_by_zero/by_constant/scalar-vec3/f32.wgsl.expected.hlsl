[numthreads(1, 1, 1)]
void f() {
  const float a = 4.0f;
  const float3 b = float3(0.0f, 2.0f, 0.0f);
  const float3 r = (a / b);
  return;
}
