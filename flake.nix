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
    defaultPackage.x86_64-linux =
      pkgs.runCommand "build-chatgpt" {} ''
      set -xe
      mkdir -p $out/share/emacs/site-lisp/elpa/chatgpt-0.0.1/
      cp ${./chatgpt.el} $out/share/emacs/site-lisp/elpa/chatgpt-0.0.1/chatgpt.el
      '';
  };
}
