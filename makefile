SHELL := /bin/bash # Use bash syntax

IMAGE_ID = fastlane-tools
PROJECT_ID = rsdatatechnologies/fastlane-tools
IMAGE_VERSION = $(version)

mkfile_path := $(abspath $(lastword $(MAKEFILE_LIST)))

IMAGE_REPO = ${PROJECT_ID}

# DOCKER ------------------------------------------------------------------------

build:
	docker build . -t ${IMAGE_ID}:latest

tag:
	docker tag ${IMAGE_ID} ${IMAGE_REPO}:${version}

push: tag
	docker push ${IMAGE_REPO}:${version}
