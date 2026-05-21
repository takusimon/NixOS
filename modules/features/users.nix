{self, inputs, ...}:{
  flake.nixosModules.users = { config, pkgs, ...}:
{
	# Define a user account. Don't forget to set a password with ‘passwd’.
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
		];
	};
};
}
