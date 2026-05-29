{config,pkgs,...}:{
imports = [
	./common/bash.nix
	./common/kitty.nix
	./common/tmux.nix
	];
home = {
  username = "taku";
  homeDirectory = "/home/taku";
  stateVersion = "26.05";
  file = {
       ".config/i3/".source = ./dot_files/i3/;
       ".config/polybar/".source = ./dot_files/polybar/;
       ".config/fastfetch/".source = ./dot_files/fastfetch/;
       ".config/starship.toml/".source = ./dot_files/starship.toml;
  
  };
 };
}