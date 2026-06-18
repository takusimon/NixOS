{config,pkgs,...}:{
	# Set Grub as Default Bootloader & Always use the latest kernel

	boot = {
	  plymouth =  
	    {
	     enable = true;
	     themePackages = with pkgs; [
	     (adi1090x-plymouth-themes.override {
              selected_themes = [ "unrap" ];
             })
	     ];
	     theme = "unrap";
	     extraConfig = ''
	    '';
	    };
	  consoleLogLevel = 3;
	     initrd.systemd.enable = true;
	     initrd.verbose = false;
	     kernelParams = [
	      "quiet"
	      "splash"
	      "boot.shell_on_fail"
	      "rd.udev.log_priority=3"
	      "rd.systemd.show_status=auto"
	     ];
	     loader = {
	     	    grub = {
		    	 enable = true;
			 efiSupport = true;
			 device = "nodev";
			 timeoutStyle = "menu";
			 configurationLimit = 10;
			 theme = ../home/tartarus;
		   };
		   efi = {
		       efiSysMountPoint = "/boot";
		       canTouchEfiVariables = true;
		   };
	    };


	    kernelPackages = pkgs.linuxPackages_latest;
      };
}