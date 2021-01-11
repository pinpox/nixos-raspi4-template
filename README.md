# nixos-raspi4-template
Genearate NixOS images for Raspberry Pi 4

## Usage

1. Modify `base-config.nix` as desired
2. Run `./build.sh`
3. Last line of output will be a path like `/nix/store/...-aarch64-linux.img` which contains a `/sd-image/...-aarch64-linux.img.zst` file
4. Assuming `/dev/sdX` is the SD card you want to flash use:
```
zstd -vdcfT6 /nix/store/...-aarch64-linux.img/sd-image/...-aarch64-linux.img.zst  | dd of=/dev/sdX status=progress bs=64K
```
5. Time for some 🥧
