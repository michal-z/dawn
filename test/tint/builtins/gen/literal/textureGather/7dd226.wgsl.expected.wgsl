@group(1) @binding(0) var arg_0 : texture_depth_cube_array;

@group(1) @binding(1) var arg_1 : sampler;

fn textureGather_7dd226() {
  var res : vec4<f32> = textureGather(arg_0, arg_1, vec3<f32>(), 1u);
}

@vertex
fn vertex_main() -> @builtin(position) vec4<f32> {
  textureGather_7dd226();
  return vec4<f32>();
}

@fragment
fn fragment_main() {
  textureGather_7dd226();
}

@compute @workgroup_size(1)
fn compute_main() {
  textureGather_7dd226();
}