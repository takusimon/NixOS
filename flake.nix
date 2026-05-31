{
  description = "A very basic flake";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";
    home-manager = {
    	url =  "github:nix-community/home-manager/release-26.05";
	inputs.nixpkgs.follows = "nixpkgs";
    };
    preservation.url = "github:nix-community/preservation";
    disko = {
       url = "github:nix-community/disko";
       inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = { self, nixpkgs,home-manager,... }@attrs: {
    nixosConfigurations.kernelpanic = nixpkgs.lib.nixosSystem {
     system = "x86_64-linux";
     specialArgs = attrs;
     modules = [ ./configuration.nix
     	         home-manager.nixosModules.home-manager
     	         ./modules/home-manager.nix
		 attrs.disko.nixosModules.disko
		 attrs.preservation.nixosModules.default
		 ./features/disko.nix
		 ./features/preservation.nix
	       ];
    };
  };
}
