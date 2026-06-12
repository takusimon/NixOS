{config,pkgs,...}:{
	programs = {
	  niri.enable = true;

	bash = {
	 enable = true;
	};
	xwayland.enable = true;

	steam = {
	 enable = true;
	 package = pkgs.steam.override {
      extraArgs = "-system-composer";
    };
	};
     };
 }
