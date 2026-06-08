{config,pkgs,home-manager,inputs,...}:
{
  home-manager = {
    useUserPackages = true;
    useGlobalPkgs = true;
    backupFileExtension = "bk";
    users.taku = import ../home/taku.nix;
    extraSpecialArgs = {inherit inputs;};
 };
}