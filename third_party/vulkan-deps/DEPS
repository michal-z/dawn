# This file is used to manage Vulkan dependencies for several repos. It is
# used by gclient to determine what version of each dependency to check out, and
# where.

# Avoids the need for a custom root variable.
use_relative_paths = True

vars = {
  'chromium_git': 'https://chromium.googlesource.com',

  # Current revision of glslang, the Khronos SPIRV compiler.
  'glslang_revision': '1a8869e4d1bee138f2813208777e1a58bebb9735',

  # Current revision of spirv-cross, the Khronos SPIRV cross compiler.
  'spirv_cross_revision': '744279ec78ff9bd12656fffe79068ec03d9e9ed3',

  # Current revision fo the SPIRV-Headers Vulkan support library.
  'spirv_headers_revision': '85a1ed200d50660786c1a88d9166e871123cce39',

  # Current revision of SPIRV-Tools for Vulkan.
  'spirv_tools_revision': 'a52de681dd17f8b545ecd9ea2138f72b39bf449a',

  # Current revision of Khronos Vulkan-Headers.
  'vulkan_headers_revision': 'e12a8f8cde4047fb40c34bc1bf624e24c0d0c76e',

  # Current revision of Khronos Vulkan-Loader.
  'vulkan_loader_revision': '3f29209dd65d52dfd5e07dd77621a718c7a4042c',

  # Current revision of Khronos Vulkan-Tools.
  'vulkan_tools_revision': '292e6ed02141b015950d03390c6e8576b0673ef6',

  # Current revision of Khronos Vulkan-ValidationLayers.
  'vulkan_validation_revision': '18a0e59294d1d14b701feed51df76a45b942c86e',
}

deps = {
  'glslang/src': {
    'url': '{chromium_git}/external/github.com/KhronosGroup/glslang@{glslang_revision}',
  },

  'spirv-cross/src': {
    'url': '{chromium_git}/external/github.com/KhronosGroup/SPIRV-Cross@{spirv_cross_revision}',
  },

  'spirv-headers/src': {
    'url': '{chromium_git}/external/github.com/KhronosGroup/SPIRV-Headers@{spirv_headers_revision}',
  },

  'spirv-tools/src': {
    'url': '{chromium_git}/external/github.com/KhronosGroup/SPIRV-Tools@{spirv_tools_revision}',
  },

  'vulkan-headers/src': {
    'url': '{chromium_git}/external/github.com/KhronosGroup/Vulkan-Headers@{vulkan_headers_revision}',
  },

  'vulkan-loader/src': {
    'url': '{chromium_git}/external/github.com/KhronosGroup/Vulkan-Loader@{vulkan_loader_revision}',
  },

  'vulkan-tools/src': {
    'url': '{chromium_git}/external/github.com/KhronosGroup/Vulkan-Tools@{vulkan_tools_revision}',
  },

  'vulkan-validation-layers/src': {
    'url': '{chromium_git}/external/github.com/KhronosGroup/Vulkan-ValidationLayers@{vulkan_validation_revision}',
  },
}
