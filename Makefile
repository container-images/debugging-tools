.PHONY: build run defult

IMAGE_NAME = debugging_tools

default: run

build:
	docker build --tag=$(IMAGE_NAME) .

run: build
	docker run -d $(IMAGE_NAME)

test:
	run_test.sh
