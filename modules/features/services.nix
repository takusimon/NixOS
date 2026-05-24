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
		displayManager = { 
			gdm.enable = true;
		};
		desktopManager.gnome.enable = false;
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

		emacs = {
			enable = true;
			defaultEditor = true;
		};
		upower.enable = true;
		acpid.enable = true;
	};
	systemd.user.services.niri-flake-polkit.enable = false;
	security = {
		rtkit.enable = true;
	};
};
}
