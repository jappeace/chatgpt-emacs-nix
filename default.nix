{ pkgs ? import ./pin.nix }:
let
  agsy = pkgs.agsy;
in
pkgs.agdaPackages.mkDerivation {
  version = "1.0";
  pname = "plfa-jappie";
  src = ./.;
  buildInputs = [
    pkgs.agdaPackages.standard-library
  ];
  meta = {};
}
