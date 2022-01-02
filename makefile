default: build

.PHONY:build
build:
	agda --compile ./src/main.agda
check:
	agda ./src/main.agda

puke-out-emacs-mode:
	nix-build nix/agda-mode.nix
