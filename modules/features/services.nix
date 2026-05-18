{self, inputs, ...}: {
flake.nixosModules.services = {config,pkgs,...}: {
	services = {
		# Enable the X11 windowing system.
		xserver = { 
			enable = true;
			# Configure keymap in X11
			xkb = {
				layout = "us";
				variant = "";
			};
		};
		# Enable the GNOME Desktop Environment.
		displayManager.gdm.enable = true;
		desktopManager.gnome.enable = true;
		# Enable CUPS to print documents.
		printing.enable = true;
		# Enable sound with pipewire.
		pulseaudio.enable = false;
		pipewire = {
			enable = true;
			alsa.enable = true;
			alsa.support32Bit = true;
			pulse.enable = true;
			wireplumber.enable = true;
		};
		openssh.enable = true;

	};

	security = {
		rtkit.enable = true;
	};
};
}
