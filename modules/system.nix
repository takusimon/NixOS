{config,pkgs,...}: {
      #autoUpgrades
      #Set State version must never be changed

      system = {
      	     autoUpgrade = {
	     		 enable = true;
			 allowReboot = false;
	     };
	     stateVersion = "26.05"; # DO NOT CHANGE
      };
 }