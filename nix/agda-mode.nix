# locates the agda mode and makes a symlink to it.
# this allows you to jam it into emacs
{ pkgs ? import ./pin.nix }:

pkgs.runCommand "agda-mode" {
  agsy=pkgs.agsy;
} ''
set -xe

export PATH=$PATH:$agsy/bin

MODE=$(agda-mode locate | sed s+/agda2.el++g)

mkdir -p $out
cp -R $MODE/* $out/
''
