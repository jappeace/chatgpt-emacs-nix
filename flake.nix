{
  description = "Emacs mode for chatgpt";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
  };

  outputs = { self, nixpkgs }:
    let
      pkgs = nixpkgs.legacyPackages.x86_64-linux;
    in {
    defaultPackage.x86_64-linux = pkgs.emacsPackages.callPackage ./src {};
  };
}
