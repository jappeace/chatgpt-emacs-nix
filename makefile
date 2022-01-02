default: build

build:
	agda --compile ./main.agda  --include-path "$(STD_LIB)/src" --guardedness --ignore-interfaces --compile-dir=out
check: 
	agda --include-path "$(STD_LIB)" ./main.agda
