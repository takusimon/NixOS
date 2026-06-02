{config,pkgs,...}:{
imports = [
	./common/bash.nix
	./common/kitty.nix
	./common/tmux.nix
	./common/git.nix
	./common/gtk-qt.nix
	./common/niri.nix
	./common/matugen.nix
	./common/fastfetch.nix
	./common/dank.nix
	./common/emacs.nix
	];
home = {
  username = "taku";
  homeDirectory = "/home/taku";
  stateVersion = "26.05";
  file = {
       ".config/matugen/colors".source = ./colors;
  };
    packages = with pkgs; [
     google-chrome
     firefox
     tree
     vscode
     nwg-look
     kdePackages.qt6ct
     nautilus
     quickshell
  ];
 };
}