let 
pinnedPkgs = 
    (builtins.fetchGit {
    # Descriptive name to make the store path easier to identify
    name = "nixos-pin-2021.08.27";
    url = "https://github.com/nixos/nixpkgs/";
    rev = "21c937f8cb1e6adcfeb36dfd6c90d9d9bfab1d28";
    }) ;
in
import pinnedPkgs {
}
