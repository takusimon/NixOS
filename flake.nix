{
	inputs = {
		nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";

		flake-parts.url = "github:hercules-ci/flake-parts";
		import-tree.url = "github:vic/import-tree";
		disko.url = "github:nix-community/disko";
		disko.inputs.nixpkgs.follows = "nixpkgs";

		preservation.url = "github:nix-community/preservation";

	};

	outputs = inputs: inputs.flake-parts.lib.mkFlake
		{ inherit inputs; }
		{
			systems = [ "x86_64-linux" ];  

			_module.args = {
			  inherit inputs;
		};

		imports = [
			  (inputs.import-tree ./modules)
			inputs.disko.nixosModules.disko
			inputs.preservation.nixosModules.default
		];
	};
}
