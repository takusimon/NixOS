{ self, inputs, ... }: {
  flake.nixosModules.boot = { config,pkgs, ... }: {
	boot = {
		loader = {
			# use grub to boot
			grub = {
				enable = true;
				efiSupport = true;
				device = "nodev";
				timeoutStyle = "menu";
				configurationLimit = 10;
			};

			efi = {
				efiSysMountPoint = "/boot";
				canTouchEfiVariables = true;
			};
		};
		# Use latest kernel.
		kernelPackages = pkgs.linuxPackages_latest;

	};
  };
}

