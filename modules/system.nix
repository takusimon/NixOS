{config,pkgs,...}: {
      #autoUpgrades
      #Set State version must never be changed

      system = {
      	     autoUpgrade = {
	     		 enable = true;
			 flake = "/etc/nixos";
			 allowReboot = true;
			 randomizedDelaySec = "45";
			 dates = "Sun 12:00";
			 persistent = true;
			 flags = [
			  "--commit-lock-file"
			 ];
	     };
	     stateVersion = "26.05"; # DO NOT CHANGE
      };
 }