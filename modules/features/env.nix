{self, inputs, ...}: {
flake.nixosModules.env = {pkgs, ...}: {

	# List packages installed in system profile. To search, run:
	# $ nix search wget
	environment.systemPackages = with pkgs; [
		vim
		tmux
		zip
		unzip
		git
		gnutar
		gnumake
		gcc
		ncdu
		btop
		emacs
	];
};
}
