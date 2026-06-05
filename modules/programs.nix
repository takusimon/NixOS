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
	xwayland.enable = true;
     };
 }