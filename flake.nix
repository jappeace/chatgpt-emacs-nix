{
  description = "Emacs mode for chatgpt";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    flake-compat = {
      url = "github:edolstra/flake-compat";
      flake = false;
    };
  };

  outputs = { self, nixpkgs, flake-compat }:
    let
      pkgs = nixpkgs.legacyPackages.x86_64-linux;
    in {
    defaultPackage.x86_64-linux = pkgs.emacsPackages.trivialBuild {pname="chatgpt"; src = ./src/.; };
  };
}
