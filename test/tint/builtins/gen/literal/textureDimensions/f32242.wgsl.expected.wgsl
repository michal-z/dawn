@group(1) @binding(0) var arg_0 : texture_3d<u32>;

fn textureDimensions_f32242() {
  var res : vec3<i32> = textureDimensions(arg_0, 1u);
}

@vertex
fn vertex_main() -> @builtin(position) vec4<f32> {
  textureDimensions_f32242();
  return vec4<f32>();
}

@fragment
fn fragment_main() {
  textureDimensions_f32242();
}

@compute @workgroup_size(1)
fn compute_main() {
  textureDimensions_f32242();
}