#version 310 es

layout(rgba16ui) uniform highp writeonly uimage2DArray arg_0;
void textureStore_33cec0() {
  imageStore(arg_0, ivec3(uvec3(0u, 0u, uint(1))), uvec4(0u));
}

vec4 vertex_main() {
  textureStore_33cec0();
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

layout(rgba16ui) uniform highp writeonly uimage2DArray arg_0;
void textureStore_33cec0() {
  imageStore(arg_0, ivec3(uvec3(0u, 0u, uint(1))), uvec4(0u));
}

void fragment_main() {
  textureStore_33cec0();
}

void main() {
  fragment_main();
  return;
}
#version 310 es

layout(rgba16ui) uniform highp writeonly uimage2DArray arg_0;
void textureStore_33cec0() {
  imageStore(arg_0, ivec3(uvec3(0u, 0u, uint(1))), uvec4(0u));
}

void compute_main() {
  textureStore_33cec0();
}

layout(local_size_x = 1, local_size_y = 1, local_size_z = 1) in;
void main() {
  compute_main();
  return;
}