#version 310 es

vec3 tint_quantizeToF16(vec3 param_0) {
  return vec3(
    unpackHalf2x16(packHalf2x16(param_0.xy)),
    unpackHalf2x16(packHalf2x16(param_0.zz)).x);
}


void quantizeToF16_e8fd14() {
  vec3 res = tint_quantizeToF16(vec3(1.0f));
}

vec4 vertex_main() {
  quantizeToF16_e8fd14();
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

vec3 tint_quantizeToF16(vec3 param_0) {
  return vec3(
    unpackHalf2x16(packHalf2x16(param_0.xy)),
    unpackHalf2x16(packHalf2x16(param_0.zz)).x);
}


void quantizeToF16_e8fd14() {
  vec3 res = tint_quantizeToF16(vec3(1.0f));
}

void fragment_main() {
  quantizeToF16_e8fd14();
}

void main() {
  fragment_main();
  return;
}
#version 310 es

vec3 tint_quantizeToF16(vec3 param_0) {
  return vec3(
    unpackHalf2x16(packHalf2x16(param_0.xy)),
    unpackHalf2x16(packHalf2x16(param_0.zz)).x);
}


void quantizeToF16_e8fd14() {
  vec3 res = tint_quantizeToF16(vec3(1.0f));
}

void compute_main() {
  quantizeToF16_e8fd14();
}

layout(local_size_x = 1, local_size_y = 1, local_size_z = 1) in;
void main() {
  compute_main();
  return;
}