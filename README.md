# Hardware Accelerated OpenCV

This is an attempt to accelerate some OpenCV functions on LicheeRV Nano board via calculating on NPU. This version is based on [opencv mobile](https://github.com/nihui/opencv-mobile/), for now the repository will contain only a set of patches for Opencv mobile, but then a full-fledged separate branch based on the [opencv mobile](https://github.com/nihui/opencv-mobile/) sources is planned.

Must have patches (for building):

* opencv-4.10.0-no-atomic.patch - Patch from OpenCV Mobile; necessary for build
* minimal.patch - set base flags for CVI platform and tune CSI camera pins for latest board revisions

Optional:

