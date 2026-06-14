{config,pkgs,inputs,...}:{
	# Set Packages available system wide
	# Set system wide Aliases system wide

	environment =
	let
	custom-sddm-astronaut = pkgs.sddm-astronaut.override {
	  embeddedTheme = "japanese_aesthetic";
	 };
	 in
	{
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
		    killall
		    devenv
		    xwayland-satellite
		    custom-sddm-astronaut
		    ];

		    shellAliases = {
		    		 emacs = "emacs -nw";
		    };
		    etc."gitconfig".text = ''
		      [safe]
   		      directory = /home/taku/NixOS
		    '';
	};
}
