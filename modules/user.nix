{config,pkgs,...}:{
users.users = {
	   taku = {
		isNormalUser = true;
		description = "taku";
		hashedPassword = "$y$j9T$OXc7sJ9CuMK1RNI8XHpIO1$IQpCd1VcN5ByYKflg0MR3WXA6OiJ2Utvtp1siaGa3iD";
		extraGroups = [ "wheel" "networkmanagr" ];
		};
	   webdev = {
	    	isNormalUser = true;
		description = "Webdev thingz";
		hashedPassword = "$y$j9T$SWIJmwXEA9izY9UwNwfAf/$0QUMfqeq3oigf8TRmuc6kzgIIa4mYJMju64Qaj/7zF6";
		extraGroups = [ "wheel" ];
		packages = with pkgs; [
		 vscode
		 nodejs_26
		 ];
	  };
};
}