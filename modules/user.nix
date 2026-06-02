{config,pkgs,...}:{
users = {
  users = {
	    root = {
	     	isNormalUser = false;
		isSystemUser = true;
		hashedPassword = "$y$j9T$9euwnWHuJWZ5D2o54Z.PI0$3FjnQddwo36FchRESnE/qPczMv7NtwWebvQvloRlti6";
		shell = pkgs.bash;
	   };
	   taku = {
		isNormalUser = true;
		description = "taku";
		hashedPassword = "$y$j9T$OXc7sJ9CuMK1RNI8XHpIO1$IQpCd1VcN5ByYKflg0MR3WXA6OiJ2Utvtp1siaGa3iD";
		extraGroups = [ "wheel" "networkmanagr" ];
		};
};
 mutableUsers = false;
 extraGroups = {
  vboxusers.members = [ "taku" ];
 };
};
}