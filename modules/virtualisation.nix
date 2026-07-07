{config,pkgs,...}:
{
  virtualisation.virtualbox = {
    host = {
     enable = false;
    };
    guest.enable = false;
   };
 }