Texture2DArray<float4> arg_0 : register(t0, space1);
SamplerState arg_1 : register(s1, space1);

void textureSampleBias_87915c() {
  float2 arg_2 = (0.0f).xx;
  uint arg_3 = 1u;
  float arg_4 = 1.0f;
  float4 res = arg_0.SampleBias(arg_1, float3(arg_2, float(arg_3)), arg_4, (0).xx);
}

void fragment_main() {
  textureSampleBias_87915c();
  return;
}