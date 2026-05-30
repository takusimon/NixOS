{config,pkgs,...}:{
imports = [
	./common/bash.nix
	./common/kitty.nix
	./common/tmux.nix
	./common/git.nix
	./common/gtk-qt.nix
	./common/niri.nix
	./common/matugen.nix
	./common/dank.nix
	./common/emacs.nix
	];
home = {
  username = "webdev";
  homeDirectory = "/home/webdev";
  stateVersion = "26.05";
  file = {
       ".config/matugen/colors".source = ./colors;
  };
 };
}