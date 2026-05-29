{config,pkgs,...}: {
    #Set system services sound, desktop manager, etc
    services = {
    	    displayManager = {
	    ly.enable = true;
	    dms-greeter = {
	      enable = false;
	      compositor.name = "niri";
	      configHome = "/home/taku";
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

	   upower.enable = true;
    };
}