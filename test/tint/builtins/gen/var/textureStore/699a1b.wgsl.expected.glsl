#version 310 es

layout(r32f) uniform highp writeonly image2DArray arg_0;
void textureStore_699a1b() {
  uvec2 arg_1 = uvec2(1u);
  uint arg_2 = 1u;
  vec4 arg_3 = vec4(1.0f);
  imageStore(arg_0, ivec3(uvec3(arg_1, arg_2)), arg_3);
}

vec4 vertex_main() {
  textureStore_699a1b();
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
precision mediump float;

layout(r32f) uniform highp writeonly image2DArray arg_0;
void textureStore_699a1b() {
  uvec2 arg_1 = uvec2(1u);
  uint arg_2 = 1u;
  vec4 arg_3 = vec4(1.0f);
  imageStore(arg_0, ivec3(uvec3(arg_1, arg_2)), arg_3);
}

void fragment_main() {
  textureStore_699a1b();
}

void main() {
  fragment_main();
  return;
}
#version 310 es

layout(r32f) uniform highp writeonly image2DArray arg_0;
void textureStore_699a1b() {
  uvec2 arg_1 = uvec2(1u);
  uint arg_2 = 1u;
  vec4 arg_3 = vec4(1.0f);
  imageStore(arg_0, ivec3(uvec3(arg_1, arg_2)), arg_3);
}

void compute_main() {
  textureStore_699a1b();
}

layout(local_size_x = 1, local_size_y = 1, local_size_z = 1) in;
void main() {
  compute_main();
  return;
}
