REPO:=$(shell cat ../.repo)
NAME:=$(shell basename $(shell pwd))
VERSION:=$(shell ../version.sh)
TIME:=$(shell date --iso-8601=seconds)

all:
	docker build --tag=$(REPO)/$(NAME):v$(VERSION) . > /tmp/docker-build-$(REPO)-$(NAME)-v$(VERSION)-$(TIME).log
	docker tag $(REPO)/$(NAME):v$(VERSION) $(REPO)/$(NAME):latest

