{config,pkgs,...}:{
	# Set Packages available system wide
	# Set system wide Aliases system wide

	environment = {
		    systemPackages = with pkgs; [
		    vim
		    zip
		    unzip
		    git
		    gnutar
		    gnumake
		    gcc
		    ncdu
		    emacs-pgtk
		    obsidian
		    imagemagick
		    yazi
		    starship
		    killall
		    matugen
		    papirus-icon-theme
		    papirus-folders
		    bibata-cursors
		    devenv
		    xwayland-satellite
		    ];

		    shellAliases = {
		    		 emacs = "emacs -nw";
		    };
	};
}