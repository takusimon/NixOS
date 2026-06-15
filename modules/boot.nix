{config,pkgs,...}:{
	# Set Grub as Default Bootloader & Always use the latest kernel

	boot = {
	     consoleLogLevel = 3;
	     initrd.verbose = false;
	     initrd.systemd.enable = true;
	     kernelParams = [
	      "quiet"
	      "splash"
	      "intremap=on"
	      "boot.shell_on_fail"
	      "udev.log_priority=3"
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

	    plymouth = let
	    plymouth-theme = pkgs.adi1090x-plymouth-themes.override {
	     selected_themes = [ "unrap" ];
	    };
	    in
	    {
	     enable = true;
	     themePackages = with pkgs; [ adi1090x-plymouth-themes ];
	    };
	     
	     

	    kernelPackages = pkgs.linuxPackages_latest;
      };
}