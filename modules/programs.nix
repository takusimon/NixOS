{config,pkgs,...}:{
	programs = {
	  niri.enable = true;

	  dms-shell = {
	    enable = true;

	    systemd = {
	      enable = true;
	      restartIfChanged = true;
	    };

	    enableSystemMonitoring = true;
	    enableVPN = true;
	    enableClipboardPaste = true;
	    quickshell.package = pkgs.quickshell;
	};
	bash = {
	 enable = true;
	 promptInit = ''
	  if [ "$USER" = root ]; then
	   export STARSHIP_CONFIG=/home/taku/.config/starship.toml
	  fi
	  
	   eval "$(${pkgs.starship}/bin/starship init bash)"
	 '';
	};
	xwayland.enable = true;
     };
 }