nix-build '<nixpkgs/nixos>' -A config.system.build.sdImage -I nixos-config=./rpi4-image.nix
