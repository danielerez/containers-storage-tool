IMAGE_MIRROR := $(or ${IMAGE_MIRROR}, containers-storage-mirror)
IMAGE_LIST := $(or ${IMAGE_LIST}, containers-storage-list)

.PHONY: build

build-mirror:
	podman build -f Dockerfile.mirror . -t $(IMAGE_MIRROR)

build-list:
	podman build -f Dockerfile.list . -t $(IMAGE_LIST)
