{config,pkgs,...}:{
users.users = {
	    root = {
	     	isNormalUser = false;
		isSystemUser = true;
		hashedPassword = "$y$j9T$9euwnWHuJWZ5D2o54Z.PI0$3FjnQddwo36FchRESnE/qPczMv7NtwWebvQvloRlti6";
	   };
	   taku = {
		isNormalUser = true;
		description = "taku";
		hashedPassword = "$y$j9T$OXc7sJ9CuMK1RNI8XHpIO1$IQpCd1VcN5ByYKflg0MR3WXA6OiJ2Utvtp1siaGa3iD";
		extraGroups = [ "wheel" "networkmanagr" ];
		};
	   webdev = {
	    	isNormalUser = true;
		description = "Webdev";
		hashedPassword = "$y$j9T$SWIJmwXEA9izY9UwNwfAf/$0QUMfqeq3oigf8TRmuc6kzgIIa4mYJMju64Qaj/7zF6";
		extraGroups = [ "wheel" ];
	  };
	  htb = {
	        isNormalUser = true;
		description = "PenTesting";
		hashedPassword = "$y$j9T$C7qcKmMHxH5y7zo179HBU.$qMeJntlyqWlSFSESX4Xq3oLT7aUkclGIq5yZsrVbiL4";
		extraGroups = [ "wheel" ];
	 };
};
users.mutableUsers = false;
}