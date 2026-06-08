{config,pkgs,...}:{
imports = [
  ./dots/bash.nix
  ./dots/emacs.nix
  ./dots/git.nix
  ./dots/gtk-qt.nix
  ./dots/tmux.nix
  ./dots/kitty.nix
  ./dots/starship.nix
  ./dots/fastfetch.nix
  ./dots/niri.nix
  ./dots/noctalia.nix
	];
home = {
  username = "taku";
  homeDirectory = "/home/taku";
  stateVersion = "26.05";
    packages = with pkgs; [
     google-chrome
     tree
     vscode
     nwg-look
     kdePackages.qt6ct
     nautilus
     quickshell
     adw-gtk3
     kdePackages.okular
     nautilus
     discord
     steam
     kdePackages.qt6ct
     starship
     papirus-icon-theme
     bibata-cursors
     firefox
     obsidian
     yazi
     imagemagick
  ];
 };
}
