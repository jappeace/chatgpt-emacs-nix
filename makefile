default: build

.PHONY:build
build:
	agda ./src/main.agda
check:
	agda ./src/main.agda
