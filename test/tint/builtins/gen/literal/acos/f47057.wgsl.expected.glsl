#version 310 es
#extension GL_AMD_gpu_shader_half_float : require

void acos_f47057() {
  f16vec3 res = f16vec3(1.5703125hf);
}

vec4 vertex_main() {
  acos_f47057();
  return vec4(0.0f);
}

void main() {
  gl_PointSize = 1.0;
  vec4 inner_result = vertex_main();
  gl_Position = inner_result;
  gl_Position.y = -(gl_Position.y);
  gl_Position.z = ((2.0f * gl_Position.z) - gl_Position.w);
  return;
}
#version 310 es
#extension GL_AMD_gpu_shader_half_float : require
precision mediump float;

void acos_f47057() {
  f16vec3 res = f16vec3(1.5703125hf);
}

void fragment_main() {
  acos_f47057();
}

void main() {
  fragment_main();
  return;
}
#version 310 es
#extension GL_AMD_gpu_shader_half_float : require

void acos_f47057() {
  f16vec3 res = f16vec3(1.5703125hf);
}

void compute_main() {
  acos_f47057();
}

layout(local_size_x = 1, local_size_y = 1, local_size_z = 1) in;
void main() {
  compute_main();
  return;
}
