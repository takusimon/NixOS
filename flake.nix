{
	inputs = {
		nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";

		flake-parts.url = "github:hercules-ci/flake-parts";
		import-tree.url = "github:vic/import-tree";
		quickshell = {
		      url = "git+https://git.outfoxxed.me/quickshell/quickshell";
		      inputs.nixpkgs.follows = "nixpkgs";
		};
		dms = {
		      url = "github:AvengeMedia/DankMaterialShell/stable";
		      inputs.nixpkgs.follows = "nixpkgs";
		};

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
		];
	};
}
