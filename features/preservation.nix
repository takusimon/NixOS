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
	   ".local"
	   ".config/DankMaterialShell"
	   "Pictures"
	   "Documents"
         ];
      
         files = [
      
         ];
       };
       users.webdev = {
        directories = [
           ".ssh"
           ".config/google-chrome"
	   ".config/DankMaterialShell"
	   ".config/obsidian"
	   ".config/niri"
	   ".config/Code"
	   ".local"
	   "Pictures"
	   "Documents"
         ];
      
         files = [
      
         ];
       }; 
    };
  };
}