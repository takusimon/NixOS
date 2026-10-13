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
    disko = {
     url = "github:nix-community/disko";
     inputs.nixpkgs.follows = "nixpkgs";
   };
   preservation.url = "github:nix-community/preservation";
    
  };

  outputs = inputs@{ self, nixpkgs,home-manager,... }: {
    nixosConfigurations.kernelpanic = nixpkgs.lib.nixosSystem {
     system = "x86_64-linux";
     specialArgs = {inherit inputs;};
     modules = [ ./configuration.nix
     	         home-manager.nixosModules.home-manager
     	         ./modules/home-manager.nix
		 inputs.disko.nixosModules.disko
		 inputs.preservation.nixosModules.default
		 ./features/disko.nix
		 ./features/preservation.nix
	       ];
    };
  };
}
