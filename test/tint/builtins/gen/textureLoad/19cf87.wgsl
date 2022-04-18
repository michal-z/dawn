// Copyright 2021 The Tint Authors.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//     http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

////////////////////////////////////////////////////////////////////////////////
// File generated by tools/builtin-gen
// using the template:
//   test/tint/builtins/builtins.wgsl.tmpl
// and the builtin defintion file:
//   src/tint/builtins.def
//
// Do not modify this file directly
////////////////////////////////////////////////////////////////////////////////

@group(1) @binding(0) var arg_0: texture_depth_2d;

// fn textureLoad(texture: texture_depth_2d, coords: vec2<i32>, level: i32) -> f32
fn textureLoad_19cf87() {
  var res: f32 = textureLoad(arg_0, vec2<i32>(), 0);
}

@stage(vertex)
fn vertex_main() -> @builtin(position) vec4<f32> {
  textureLoad_19cf87();
  return vec4<f32>();
}

@stage(fragment)
fn fragment_main() {
  textureLoad_19cf87();
}

@stage(compute) @workgroup_size(1)
fn compute_main() {
  textureLoad_19cf87();
}
