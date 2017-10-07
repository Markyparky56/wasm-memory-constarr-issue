Simplified examples using the memory.wasm module from [wasm-stdlib-hack](https://github.com/guybedford/wasm-stdlib-hack) by [guybedford](guybedford) demonstrating the problem introduced by adding and using a const array.

main.withconstfloatarr.opt.wam and main.sansconstfloararr.opt.wam were produced by compiling the corresponding cpp file with clang, 
converting to s-expressions with llc, converting to wat with s2wasm, compiling wat to wasm with wat2wasm and then optimising the wasm file
with wasm-opt. 

Example compilation:
```
> clang --target=wasm32 -emit-llvm -std=c++14 -O2 -v -c -Ipath\to\wasm-stdlib-hack\include\libc main.withconstfloatarr.cpp
> llc -asm-verbose=false -O2 -o main.withconstfloatarr.bc main.withconstfloatarr.s
> s2wasm --import-memory main.withconstfloatarr.s > main.withconstfloatarr.wat
> wat2wasm main.withconstfloatarr.wat -o main.withconstfloatarr.wasm
> wasm-opt -O2 main.withconstfloatarr.wasm -o main.withconstfloatarr.opt.wasm
```