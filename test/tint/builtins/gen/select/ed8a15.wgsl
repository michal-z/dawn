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


// fn select(i32, i32, bool) -> i32
fn select_ed8a15() {
  var res: i32 = select(1, 1, bool());
}

@stage(vertex)
fn vertex_main() -> @builtin(position) vec4<f32> {
  select_ed8a15();
  return vec4<f32>();
}

@stage(fragment)
fn fragment_main() {
  select_ed8a15();
}

@stage(compute) @workgroup_size(1)
fn compute_main() {
  select_ed8a15();
}
