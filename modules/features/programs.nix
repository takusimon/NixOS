{self, inputs, ...}: {
flake.nixosModules.programs = {config,pkgs,...}: 
	{
	programs = {
		chromium.enable = true;
		niri = {
			enable = true;
		};
		dms-shell = {
		enable = true;
		systemd = {
			enable = true;
			restartIfChanged = true;
		};
		
		enableSystemMonitoring = true;
		enableVPN = true;
		enableDynamicTheming = true;
		enableAudioWavelength = true;      # Audio visualizer (cava)
		enableCalendarEvents = true;       # Calendar integration (khal)
		enableClipboardPaste = true;
		quickshell.package = inputs.quickshell.packages.${pkgs.stdenv.hostPlatform.system}.quickshell;
	};		
		xwayland.enable = true;
		};
	};
}
