Structure of main_build project is going to be like this:

```sh
.
├── README                  # Descriptor
├── build.sh                # Build script
├── configs                 # Copy folder contains linked config files
│   ├── kernel_configs
│   ├── kernel_dts
│   ├── uboot_configs
│   └── uboot_dts       
|── kernel                  # Rockchip linux kernel folder
├── out                     # Output folder
│   ├── kernel                  # Kernel compiled image
│   └── uboot                   # Uboot compiled image
├── toolchain               # Toolchain folder contains cross compiler
│   └── arm-rockchip830-linux-uclibcgnueabihf
└── uboot                   # Uboot folder
    ├── rkbin                   # Rockchip ultilities to pakage image
    └── u-boot                  # Uboot source code
```
## Uboot
```sh
# To build
cd main_build
./build.sh uboot
# To clean
./build.sh clean_uboot
```
## Kernel
```sh
# To build
cd main_build
./build.sh kernel
# To clean
./build.sh clean_kernel
```