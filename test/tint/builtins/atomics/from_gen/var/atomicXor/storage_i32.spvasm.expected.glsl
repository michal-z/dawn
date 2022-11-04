#version 310 es
precision mediump float;

struct SB_RW_atomic {
  int arg_0;
};

struct SB_RW {
  int arg_0;
};

layout(binding = 0, std430) buffer sb_rw_block_ssbo {
  SB_RW_atomic inner;
} sb_rw;

void atomicXor_c1b78c() {
  int arg_1 = 0;
  int res = 0;
  arg_1 = 1;
  int x_20 = arg_1;
  int x_13 = atomicXor(sb_rw.inner.arg_0, x_20);
  res = x_13;
  return;
}

void fragment_main_1() {
  atomicXor_c1b78c();
  return;
}

void fragment_main() {
  fragment_main_1();
}

void main() {
  fragment_main();
  return;
}
#version 310 es

struct SB_RW_atomic {
  int arg_0;
};

struct SB_RW {
  int arg_0;
};

layout(binding = 0, std430) buffer sb_rw_block_ssbo {
  SB_RW_atomic inner;
} sb_rw;

void atomicXor_c1b78c() {
  int arg_1 = 0;
  int res = 0;
  arg_1 = 1;
  int x_20 = arg_1;
  int x_13 = atomicXor(sb_rw.inner.arg_0, x_20);
  res = x_13;
  return;
}

void compute_main_1() {
  atomicXor_c1b78c();
  return;
}

void compute_main() {
  compute_main_1();
}

layout(local_size_x = 1, local_size_y = 1, local_size_z = 1) in;
void main() {
  compute_main();
  return;
}
