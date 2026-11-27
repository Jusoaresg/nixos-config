{
  description = "Flake nix";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-26.05";
    nixpkgs-unstable.url = "github:NixOS/nixpkgs/nixos-unstable";
    nixpkgs-orca.url = "github:NixOS/nixpkgs/pull/585502/head";
    halley.url = "github:binarylinuxx/halley-flake";
    nix-flatpak.url = "github:gmodena/nix-flatpak";
    zen-browser = {
      url = "github:0xc000022070/zen-browser-flake";
      inputs = {
        nixpkgs.follows = "nixpkgs-unstable";
      };
    };
  };

  outputs =
    {
      self,
      nixpkgs,
      nixpkgs-unstable,
      nixpkgs-orca,
      halley,
      nix-flatpak,
      zen-browser,
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

            orca-ide =
              (import nixpkgs-orca {
                inherit system;
                config.allowUnfree = true;
              }).orca-ide;
          };

          modules = [
            ./configuration.nix
            nix-flatpak.nixosModules.nix-flatpak
          ];
        };
      };
    };
}
