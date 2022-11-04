@group(1) @binding(1) var arg_1 : texture_cube_array<u32>;

@group(1) @binding(2) var arg_2 : sampler;

fn textureGather_f2c6e3() {
  const arg_0 = 1i;
  var arg_3 = vec3<f32>(1.0f);
  var arg_4 = 1i;
  var res : vec4<u32> = textureGather(arg_0, arg_1, arg_2, arg_3, arg_4);
}

@vertex
fn vertex_main() -> @builtin(position) vec4<f32> {
  textureGather_f2c6e3();
  return vec4<f32>();
}

@fragment
fn fragment_main() {
  textureGather_f2c6e3();
}

@compute @workgroup_size(1)
fn compute_main() {
  textureGather_f2c6e3();
}
