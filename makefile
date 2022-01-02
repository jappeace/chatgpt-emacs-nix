default: build

.PHONY:build
build:
	agda --compile ./src/main.agda
check:
	agda ./src/main.agda
