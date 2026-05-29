{config,pkgs,...}:{
imports = [
	./common/bash.nix
	./common/kitty.nix
	./common/tmux.nix
	./common/git.nix
	./common/gtk-qt.nix
	./common/niri.nix
	.common/matugen.nix
	];
home = {
  username = "taku";
  homeDirectory = "/home/taku";
  stateVersion = "26.05";
  file = {
       ".config/fastfetch/".source = ./dot_files/fastfetch;
       ".config/matugen/colors".source = ./dot_files/matugen/colors;
       ".config/DankMaterialShell".source = ./dot_files/DankMaterialShell;  
  };
 };
}