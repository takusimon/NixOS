{
  description = "A very basic flake";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";
    home-manager = {
    	url =  "github:nix-community/home-manager";
	inputs.nixpkgs.follows = "nixpkgs";
    };
    noctalia = {
      url = "github:noctalia-dev/noctalia";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    nixvim.url = "github:nix-community/nixvim";
    preservation.url = "github:nix-community/preservation";
    disko = {
	url = "github:nix-community/disko";
	inputs.nixpkgs.follows = "nixpkgs";
   };

  };

  outputs = inputs@{ self, nixpkgs,home-manager,... }: {
    nixosConfigurations.kernelpanic = nixpkgs.lib.nixosSystem {
     system = "x86_64-linux";
     specialArgs = {inherit inputs;};
     modules = [ ./configuration.nix
     	         home-manager.nixosModules.home-manager
     	         ./modules/home-manager.nix
		inputs.nixvim.nixosModules.nixvim
		inputs.disko.nixosModules.disko
		inputs.preservation.nixosModules.default
		./features/disko.nix
		./features/preservation.nix
	       ];
    };
  };
}
