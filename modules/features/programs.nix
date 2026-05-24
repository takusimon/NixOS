{self, inputs, ...}: {
flake.nixosModules.programs = {config,pkgs,...}: 
	{
	programs = {
		chromium.enable = true;
		hyprland = {
			enable = true;
		};
		
		xwayland.enable = true;
		};
	};
}
