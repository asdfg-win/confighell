{
	inputs = {
		nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
	};

    outputs = { self, nixpkgs }:
   # {};
   { 
    devShells = {
        aarch64-darwin = {
            m1 = import ./default.nix {pkgs=nixpkgs.legacyPackages.aarch64-darwin;}; 
        };
    };
    packages.aarch64-darwin.tmux = nixpkgs.legacyPackages.aarch64-darwin.tmux;
};
}