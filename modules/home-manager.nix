{config,pkgs,home-manager,...}:
{
  home-manager = {
    useUserPackages = true;
    useGlobalPkgs = true;
    backupFileExtension = "bk";
    users.taku = import ../home/taku.nix;
    users.webdev = import ../home/webdev.nix;
 };
}