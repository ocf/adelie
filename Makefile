DOCKER_REVISION ?= adelie-testing-$(USER)

DOCKER_TAG = docker-push.ocf.berkeley.edu/adelie:$(DOCKER_REVISION)

ADELIE_VERSION := v0.2.0

.PHONY: cook-image
cook-image:
	docker build --build-arg adelie_version=$(ADELIE_VERSION) --pull -t $(DOCKER_TAG) .

.PHONY: push-image
push-image:
	docker push $(DOCKER_TAG)
