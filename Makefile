SCRIPT = curl-resolve

.PHONY: default analyze test

default: analyze test

analyze:
	shellcheck $(SCRIPT)

test:
	bats $(SCRIPT).bats
