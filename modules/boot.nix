{config,pkgs,...}:{
	# Set Grub as Default Bootloader & Always use the latest kernel

	boot = {
	     loader = {
	     	    grub = {
		    	 enable = true;
			 efiSupport = true;
			 device = "nodev";
			 tiemoutStyle = "menu";
			 configurationLimit = 10;
		   };

		   efi = {
		       efiSysMountPOint = "/boot";
		       canTouchEfiVariables = true;
		   };
	    };

	    kernelPackages = pkgs.linuxPackages_latest;
      };
}