{config,pkgs,...}:{
imports = [
	./common/bash.nix
	./common/kitty.nix
	./common/tmux.nix
	./common/git.nix
	./common/gtk-qt.nix
	./common/niri.nix
	];
home = {
  username = "taku";
  homeDirectory = "/home/taku";
  stateVersion = "26.05";
  file = {
       ".config/fastfetch/".source = ./dot_files/fastfetch;
       ".config/matugen/".source = ./dot_files/matugen;
       ".config/DankMaterialShell".source = ./dot_files/DankMaterialShell;  
  };
 };
}