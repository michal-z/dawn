fn max_25eafe() {
  var res : vec3<i32> = max(vec3<i32>(1i), vec3<i32>(1i));
}

@vertex
fn vertex_main() -> @builtin(position) vec4<f32> {
  max_25eafe();
  return vec4<f32>();
}

@fragment
fn fragment_main() {
  max_25eafe();
}

@compute @workgroup_size(1)
fn compute_main() {
  max_25eafe();
}
