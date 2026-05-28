{config,pkgs,...}: {
    #Set system services sound, desktop manager, etc
    services = {
    	    displayManager.plasma-login-manager.enable = true;
	    desktopManager.plasma6.enable = true;

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