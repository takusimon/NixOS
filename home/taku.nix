{config,pkgs,...}:{
imports = [ ./common/bash.nix ];
home = {
  username = "taku";
  homeDirectory = "/home/taku";
  stateVersion = "26.05";
 };
}