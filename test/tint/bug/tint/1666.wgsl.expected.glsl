#version 310 es

void vector() {
  int idx = 3;
  int x = ivec2(1, 2)[idx];
}

void matrix() {
  int idx = 4;
  vec2 x = mat2(vec2(1.0f, 2.0f), vec2(3.0f, 4.0f))[idx];
}

void fixed_size_array() {
  int arr[2] = int[2](1, 2);
  int idx = 3;
  int x = arr[idx];
}

layout(binding = 0, std430) buffer rarr_block_ssbo {
  float inner[];
} rarr;

void runtime_size_array() {
  int idx = -1;
  float x = rarr.inner[idx];
}

void f() {
  vector();
  matrix();
  fixed_size_array();
  runtime_size_array();
}

layout(local_size_x = 1, local_size_y = 1, local_size_z = 1) in;
void main() {
  f();
  return;
}
