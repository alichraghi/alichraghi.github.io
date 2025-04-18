// SPIR-V:
//     zig build-obj -target spirv64-vulkan-none -mcpu vulkan_v1_2+int64 \
//     -ofmt=spirv -fno-llvm kernel.zig
//     zig build-obj -target spirv64-opencl-none -mcpu opencl_v2+int64 \
//     -ofmt=spirv -fno-llvm kernel.zig
//
// PTX:
//     zig build-lib -dynamic -target nvptx64-cuda-none -mcpu <gpu-model> \
//     -femit-asm -fno-compiler-rt kernel.zig
//
// AMDGCN:
//     zig build-lib -dynamic -target amdgcn-amdhsa-none -mcpu <gpu-model> \
//     -fno-compiler-rt kernel.zig
//

export fn kernel() callconv(.kernel) void {}
