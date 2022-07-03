let 
pinnedPkgs = 
    (builtins.fetchGit {
    # Descriptive name to make the store path easier to identify
    name = "nixos-pin-2022.01.02";
    url = "https://github.com/nixos/nixpkgs/";
    rev = "73fbb75a9061d4cee01390b40f16eda2bbae1462";
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
