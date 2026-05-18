{ self, inputs, ... }: {
flake.nixosModules.disko = { config,pkgs, ... }: {
	fileSystems."/nix".neededForBoot = true;
	
	disko.devices.nodev = {
		"/" = {
			fsType = "tmpfs";
			mountOptions = [
				"size=25%"
				"mode=755"
			];
		};
	};
	
	disko.devices.disk.main = {
		device = "/dev/nvme0n1";
		type = "disk";

		content.type = "gpt";
		
		content.paritions.esp = {
			name = "ESP";
			size = "1G";
			type = "EFO0";
		
			content = {
				type = "filesystem";
				format = "vfat";
				mountpoint = "/boot";
			};
		};
	
		content.partitons.swap = {
			size = "16G";
		
			content = {
				type = "swap";
				resumeDevice = true;
			};
		};
	
		content.partitions.root = {
			name = "root";
			size = "100%";

			content = {
				type = "btrfs";
				extraArgs = ["-f"];

				subvolumes = {
					"/persistent" = {
						mountOptions = ["subvol=persistent" "noatime"];
						mountpoint = "/persistent";
					};
					
					"/nix" = {
						mountOptions = ["subvol=nix" "noatime"];
						mountpoint = "/nix";
					};
				};
			};
		};
	};
};
}
