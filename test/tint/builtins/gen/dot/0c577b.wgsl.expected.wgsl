fn dot_0c577b() {
  var res : f32 = dot(vec4<f32>(), vec4<f32>());
}

@stage(vertex)
fn vertex_main() -> @builtin(position) vec4<f32> {
  dot_0c577b();
  return vec4<f32>();
}

@stage(fragment)
fn fragment_main() {
  dot_0c577b();
}

@stage(compute) @workgroup_size(1)
fn compute_main() {
  dot_0c577b();
}
