{config,pkgs,...}: {
    #Set system services sound, desktop manager, etc
    services = {
    	    displayManager.ly.enable = true;
	    xserver = {
	    	    enable = true;

		    libinput = {
		     enable = true;
		    };
		    windowManager.i3 = {
		     enable = true;
		     extraPackages = with pkgs; [
		       dmenu
		       i3status
		       i3lock
		     ];
		    };
	    	    desktopManager = {
		      xterm.enable = false;
		      xfce = {
		        enable = true;
			noDesktop = true;
			enableXfwm = false;
		      };
		    };
            };
	    printing.enable = false;

	    pulseaudio.enable = false;
	    pipewire = {
	    	     enable = true;
		     alsa.enable = true;
		     alsa.support32Bit = true;
		     pulse.enable = true;
		     wireplumber.enable = true;
	   };

	   openssh.enable = true;

	   emacs = {
	   	 enable = true;
		 defaultEditor = true;
	   };
    };
}