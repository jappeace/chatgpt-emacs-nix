# https://monospacedmonologues.com/2021/05/running-agda-with-nix/
{ pkgs ? import ./pin.nix }:
pkgs.mkShell{
    buildInputs = [
        pkgs.agsy
        pkgs.inotify-tools
    ];
    AGSY = pkgs.agsy;
    STD_LIB = pkgs.agdaPackages.standard-library;
}
