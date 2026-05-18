{ self, inputs, ... }: {
flake.nixosModules.preservation = { config,pkgs, ... }: {
	preservation = {
		enable = true;
	
	preserveAt."/persistent" = {
		directories = [
			"/etc/nixos"
			"/var/lib/bluetooth"
			"/var/lib/NetworkManager"
			"/var/log"
			{
				directory = "/var/lib/nixos";
				inInitrd = true;
			}
		];
		
		files = [
			{
				"/etc/machine-id"
				inInitrd = true;
			}
		];
	
	users.taku = {
		directories = [
			".ssh"
			".config"	
			"Documents"
			"Pictures"
		];
	
		files = [
			".bashrc"
			".gitconfig"
		];
	};
};
}
