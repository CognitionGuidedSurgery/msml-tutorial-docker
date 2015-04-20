VER="2015.04.20"

build-base:
	docker build -t wadoon/msml_tutorial_base:$(VER) .

build-local:
	cd msml_tutorial_local && docker build -t wadoon/msml_tutorial_local:$(VER) .

build-server:
	cd msml_tutorial_server && docker build -t wadoon/msml_tutorial_server:$(VER) .

build: build-base build-server build-local

local:
	./create_local.sh
