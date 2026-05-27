{self, inputs, ...}:{
  flake.nixosModules.users = { config, pkgs, ...}:
{

	users.users.taku = {
		isNormalUser = true;
		description = "taku";
		hashedPassword = "$y$j9T$OXc7sJ9CuMK1RNI8XHpIO1$IQpCd1VcN5ByYKflg0MR3WXA6OiJ2Utvtp1siaGa3iD";
		extraGroups = [ "networkmanager" "wheel" ];
		packages = with pkgs; [
			google-chrome
			anki
			obsidian
			starship
			fastfetch
			imagemagick
			yazi
			kitty
			papirus-icon-theme
			kdePackages.qt6ct
			awww
			waybar
			rofi
			swaynotificationcenter
			matugen
			cava
			hyprlock
			hypridle
			hyprpolkitagent
			wlogout
			nwg-look
			gtk-engine-murrine
			darkly
			adw-gtk3
			grim
			slurp
			wl-clipboard
			cliphist
			zoom-us
		];
	};
};
}
