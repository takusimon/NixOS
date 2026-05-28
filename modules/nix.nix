{config,pkgs,...}:{
	# Allow Unfree Licensed software
	# Setup Garbage Collection

	nixpkgs.config.allowUnfree = true;
	nix = {
	    optimise.automatic = true;

	    gc = {
	       automatic = true;
	       dates = "weekly";
	       options = "--delete-older-than 7d";
	    };
        };
}