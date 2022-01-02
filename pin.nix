let 
pinnedPkgs = 
    (builtins.fetchGit {
    # Descriptive name to make the store path easier to identify
    name = "nixos-pin-2022.01.02";
    url = "https://github.com/nixos/nixpkgs/";
    rev = "c0575333cd0b5139dcf3eaf9ee93d61037241067";
    }) ;
in
import pinnedPkgs {
  config = {
    # set an agda https://github.com/NixOS/nixpkgs/blob/master/doc/languages-frameworks/agda.section.md#agda-agda
    packageOverrides = pkgs: {
      agsy = pkgs.agda.withPackages (p: [ p.standard-library ]);
    };
  };

}
