{config,pkgs,...}:{
imports = [
	./common/bash.nix
	./common/kitty.nix
	./common/tmux.nix
	./common/git.nix
	];
home = {
  username = "taku";
  homeDirectory = "/home/taku";
  stateVersion = "26.05";
  file = {
       ".config/niri/".source = ./dot_files/niri;
       ".config/fastfetch/".source = ./dot_files/fastfetch;
       ".config/starship.toml".source = ./dot_files/starship.toml;
       ".config/DankMaterialShell".source = ./dot_files/DankMaterialShell;  
  };
 };
}