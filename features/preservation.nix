{config,pkgs,...}:
{
  preservation = {
    enable = true;

    preserveAt."/persistent" = {
      directories = [
        "/etc/nixos"
        "/var/log"
	"/var/lib/bluetooth"
	"/etc/NetworkManager/system-connections"
	"/root"
        {
          directory = "/var/lib/nixos";
          inInitrd = true;
        }
      ];

      files = [
        {
          file = "/etc/machine-id";
          inInitrd = true;
        }
      ];

      # Preserve user files
       users.taku= {
         directories = [
           ".ssh"
           ".config/google-chrome"
	   ".config/obsidian"
	   ".config/niri"
	   ".config/gtk-3.0"
	   ".config/gtk-4.0"
	   ".config/qt6ct"
	   ".config/qt5ct"
	   ".config/Code"
	   ".config/mozzila"
	   ".local"
	   ".config/DankMaterialShell"
	   "Pictures"
	   "Documents"
         ];
      
         files = [
      
         ];
       };

    };
  };
}