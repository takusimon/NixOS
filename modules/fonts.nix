{config,pkgs,...}: {
 # Fonts available system wide
 fonts.packages = with pkgs; [
 	noto-fonts
	noto-fonts-cjk-sans
	noto-fonts-color-emoji
	nerd-fonts.jetbrains-mono
	font-awesome
	];
}