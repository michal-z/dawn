@group(1) @binding(0) var arg_0 : texture_storage_3d<rg32uint, write>;

fn textureStore_ac67aa() {
  textureStore(arg_0, vec3<i32>(), vec4<u32>());
}

@stage(vertex)
fn vertex_main() -> @builtin(position) vec4<f32> {
  textureStore_ac67aa();
  return vec4<f32>();
}

@stage(fragment)
fn fragment_main() {
  textureStore_ac67aa();
}

@stage(compute) @workgroup_size(1)
fn compute_main() {
  textureStore_ac67aa();
}
