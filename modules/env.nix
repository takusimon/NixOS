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
		    btop
		    emacs-pgtk
		    clang
		    google-chrome
		    obsidian
		    imagemagick
		    yazi
		    starship
		    killall
		    matugen
		    papirus-icon-theme
		    papirus-folders
		    bibata-cursors
		    ];

		    shellAliases = {
		    		 emacs = "emacs -nw";
		    };
		    variables = {
		      PS1 = "'\[\e[38;5;220m\]\u\[\e[0m\]@\[\e[38;5;227m\]\H\[\e[0m\] \[\e[1;2m\]in\[\e[0m\] \[\e[38;5;39m\]\w\[\e[0m\] ${PS1_CMD1}\n\$ '";
		      PROMPT_COMMAND = "PROMPT_COMMAND='PS1_CMD1=$(git branch --show-current 2>/dev/null)'";
		    };
	};
}