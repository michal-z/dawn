@group(1) @binding(0) var arg_0 : texture_storage_2d<rgba32uint, write>;

fn textureStore_aeb38a() {
  textureStore(arg_0, vec2<u32>(), vec4<u32>());
}

@vertex
fn vertex_main() -> @builtin(position) vec4<f32> {
  textureStore_aeb38a();
  return vec4<f32>();
}

@fragment
fn fragment_main() {
  textureStore_aeb38a();
}

@compute @workgroup_size(1)
fn compute_main() {
  textureStore_aeb38a();
}