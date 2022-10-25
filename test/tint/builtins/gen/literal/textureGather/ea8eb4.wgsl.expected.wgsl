@group(1) @binding(1) var arg_1 : texture_2d_array<f32>;

@group(1) @binding(2) var arg_2 : sampler;

fn textureGather_ea8eb4() {
  var res : vec4<f32> = textureGather(1u, arg_1, arg_2, vec2<f32>(), 1u);
}

@vertex
fn vertex_main() -> @builtin(position) vec4<f32> {
  textureGather_ea8eb4();
  return vec4<f32>();
}

@fragment
fn fragment_main() {
  textureGather_ea8eb4();
}

@compute @workgroup_size(1)
fn compute_main() {
  textureGather_ea8eb4();
}