{self, inputs, ...}:{
  flake.nixosModules.users = { config, pkgs, ...}:
{
	# Define a user account. Don't forget to set a password with ‘passwd’.
	users.users.taku = {
		isNormalUser = true;
		description = "taku";
		extraGroups = [ "networkmanager" "wheel" ];
		packages = with pkgs; [
			google-chrome
			anki
			obsidian
			starship
			fastfetch
			imagemagick
			yazi

		];
	};
};
}
