@group(1) @binding(0) var arg_0 : texture_multisampled_2d<i32>;

fn textureLoad_38f8ab() {
  var res : vec4<i32> = textureLoad(arg_0, vec2<i32>(1i), 1u);
}

@vertex
fn vertex_main() -> @builtin(position) vec4<f32> {
  textureLoad_38f8ab();
  return vec4<f32>();
}

@fragment
fn fragment_main() {
  textureLoad_38f8ab();
}

@compute @workgroup_size(1)
fn compute_main() {
  textureLoad_38f8ab();
}
