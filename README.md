[![Jappiejappie](https://img.shields.io/badge/twitch.tv-jappiejappie-purple?logo=twitch)](https://www.twitch.tv/jappiejappie)

Agda template.
See this commit for global integration into [nixos](https://github.com/jappeace/linux-config/commit/18dc061161e8d1c07746a8298531a09fc8264724#diff-b71af8fb0d74d1998df8151d1a7f450f9e45c2609bc418e9e04f43f0a6f3cc85R32).
You can change the target to your own github repo and move the pin around as desired.
This allows you to use agda for a single version globally in emacs in daemon mode.
I only need this to explore a single project ever since I'm not using agda professionally.
Contact me if you want this to be more fine grained.

# Sources
These are mostly not working but still usefull sources:

+ https://github.com/NixOS/nixpkgs/blob/master/doc/languages-frameworks/agda.section.md#agda-agda
+ https://monospacedmonologues.com/2021/05/running-agda-with-nix/


# Building
get [nix](https://nixos.org/nix/download.html).

```shell
nix-shell --run "make build"
```

# License
MIT


