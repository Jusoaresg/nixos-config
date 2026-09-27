{
  description = "Flake nix";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-26.05";
    nixpkgs-unstable.url = "github:NixOS/nixpkgs/nixos-unstable";
    halley.url = "github:binarylinuxx/halley-flake";
  };

  outputs =
    {
      self,
      nixpkgs,
      nixpkgs-unstable,
      halley,
      ...
    }@inputs:
    let
      system = "x86_64-linux";
    in
    {
      nixosConfigurations = {
        "nixos" = nixpkgs.lib.nixosSystem {
          inherit system;

          specialArgs = {
            inherit inputs;
            unstable = import nixpkgs-unstable {
              inherit system;
              config.allowUnfree = true;
            };

            halleyPkgs = halley.packages.${system};
          };

          modules = [
            ./configuration.nix
          ];
        };
      };
    };
}
