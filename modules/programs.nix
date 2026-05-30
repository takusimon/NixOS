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
 	    bash.shellInit = ''
	    if [ "$USER" = root ] then
	     export PS1 ='\[\e[38;5;220m\]\u\[\e[0m\]@\[\e[38;5;227m\]\H\[\e[0m\] \[\e[1;2m\]in\[\e[0m\] \[\e[38;5;39m\]\w\[\e[0m\] \n\$ '
	    fi
	   '';

	};
     };
 }