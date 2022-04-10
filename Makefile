all: lint
.PHONY: all

lint:
	bundle exec rubocop
.PHONY: lint
