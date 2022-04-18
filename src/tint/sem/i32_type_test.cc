// Copyright 2020 The Tint Authors.
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

#include "src/tint/sem/test_helper.h"
#include "src/tint/sem/texture_type.h"

namespace tint::sem {
namespace {

using I32Test = TestHelper;

TEST_F(I32Test, Creation) {
  auto* a = create<I32>();
  auto* b = create<I32>();
  EXPECT_EQ(a, b);
}

TEST_F(I32Test, Hash) {
  auto* a = create<I32>();
  auto* b = create<I32>();
  EXPECT_EQ(a->Hash(), b->Hash());
}

TEST_F(I32Test, Equals) {
  auto* a = create<I32>();
  auto* b = create<I32>();
  EXPECT_TRUE(a->Equals(*b));
  EXPECT_FALSE(a->Equals(Void{}));
}

TEST_F(I32Test, FriendlyName) {
  I32 i;
  EXPECT_EQ(i.FriendlyName(Symbols()), "i32");
}

}  // namespace
}  // namespace tint::sem
