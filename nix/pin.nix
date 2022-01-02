let 
pinnedPkgs = 
    (builtins.fetchGit {
    # Descriptive name to make the store path easier to identify
    name = "nixos-pin-2022.01.02";
    url = "https://github.com/nixos/nixpkgs/";
    rev = "932ec35ff8ac0fef5667ad2b0db4a009440255a9";
    ref = "nixos-21.05";
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
