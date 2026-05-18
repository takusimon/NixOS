{ self, inputs, ... }: {
  flake.nixosModules.nixconf = { config,pkgs, ... }: {
	# Allow unfree packages
	nixpkgs.config.allowUnfree = true;
	nix = {
		# Enable flakes
		settings = {
			experimental-features = [ "nix-command" "flakes" ];
		};		
		# periodic optimisation of the nix store
		optimise.automatic = true;
		# Automatic weekly garbage collection
		gc = {
			automatic = true;
			dates = "weekly";
			options = "--delete-older-than 7d";
		};
	};
	
	system = {
		autoUpgrade = {
			enable = true;
			allowReboot = true;
		};
	};
  };
}
