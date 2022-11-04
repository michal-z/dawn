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

#ifdef TINT_ENABLE_MSL_COMPILATION_USING_METAL_API

@import Metal;

// Disable: error: treating #include as an import of module 'std.string'
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wauto-import"
#include "compile.h"
#pragma clang diagnostic pop

CompileResult CompileMslUsingMetalAPI(const std::string& src) {
    CompileResult result;
    result.success = false;

    NSError* error = nil;

    id<MTLDevice> device = MTLCreateSystemDefaultDevice();
    if (!device) {
        result.output = "MTLCreateSystemDefaultDevice returned null";
        result.success = false;
        return result;
    }

    NSString* source = [NSString stringWithCString:src.c_str() encoding:NSUTF8StringEncoding];

    MTLCompileOptions* compileOptions = [MTLCompileOptions new];
    compileOptions.languageVersion = MTLLanguageVersion1_2;

    id<MTLLibrary> library = [device newLibraryWithSource:source
                                                  options:compileOptions
                                                    error:&error];
    if (!library) {
        NSString* output = [error localizedDescription];
        result.output = [output UTF8String];
        result.success = false;
    }

    return result;
}

#endif
