.PHONY: build run defult

IMAGE_NAME = debugging_tools
IMAGE_NAME_NOTBASE = debugging_tools_notbase
IMAGE_NAME_NET = debugging_tools_net

default: run

build:
	docker build --tag=$(IMAGE_NAME) .

run: build
	docker run -d $(IMAGE_NAME)

build-notbase:
	docker build -f Dockerfile_notbase --tag=$(IMAGE_NAME_NOTBASE) .

build-net:
	docker build -f Dockerfile_net --tag=$(IMAGE_NAME_NET) .

build_all: build build-notbase build-net

test:
	run_test.sh
