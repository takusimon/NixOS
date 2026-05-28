{ config, lib, pkgs, ... }:

{
imports =
    [ # Include the results of the hardware scan.
      ./hardware-configuration.nix
      ./modules/boot.nix
      ./modules/env.nix
      ./modules/fonts.nix
      ./modules/nix.nix
      ./modules/system.nix
      ./modules/services.nix
      ./modules/user.nix
      ./modules/host.nix
      ./modules/programs.nix
      ./modules/home-manager.nix
];
}

