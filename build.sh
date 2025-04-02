# Execute following commands inside src/opencv-11... directory:

# Export CROSS COMPILERS PATH
export RISCV_ROOT_PATH=../LicheeRV_CrossCompilers/gcc/riscv64-linux-musl-x86_64

# Apply patches
# Required
patch -p1 -i minimal.patch
patch -p1 opencv-4.10.0-no-atomic.patch

# Optional
patch -p1 csi_frames_read.patch

# Building
mkdir -p build && cd build
cmake -DCMAKE_TOOLCHAIN_FILE="../../../toolchains/riscv64-unknown-linux-musl.toolchain.cmake" -DCMAKE_INSTALL_PREFIX=install -DCMAKE_BUILD_TYPE=Release `cat ../options.txt` -DBUILD_opencv_world=OFF ..
make -j$(nproc)
make install
