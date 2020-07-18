SHELL := /bin/bash # Use bash syntax

IMAGE_ID = fastlane-tools
PROJECT_ID = beamm-k8/fastlane-tools
IMAGE_VERSION = $(version)

mkfile_path := $(abspath $(lastword $(MAKEFILE_LIST)))

REPO = registry.gitlab.com/${PROJECT_ID}
IMAGE_REPO = ${REPO}/${IMAGE_ID}

# DOCKER ------------------------------------------------------------------------

build:
	docker build . -t ${IMAGE_ID}:latest

tag:
	docker tag ${IMAGE_ID} ${IMAGE_REPO}:${version}

push: tag
	docker push ${IMAGE_REPO}:${version}
