{config,pkgs,...}:{
	# Set Packages available system wide
	# Set system wide Aliases system wide

	environment = {
		    systemPackages = with pkgs; [
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
		    emacs-pgtk
		    clang
		    google-chrome
		    obsidian
		    imagemagick
		    yazi
		    kitty
		    fastfetch
		    starship
		    ];

		    shellAliases = {
		    		 emacs = "emacs -nw";
		    };

	};
}