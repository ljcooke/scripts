SCRIPT = curl-resolve
.DEFAULT_GOAL=check

%.1: %.1.scd
	scdoc < $< > $@

check: analyze test

analyze:
	shellcheck $(SCRIPT)

test:
	bats $(SCRIPT).bats

man: $(SCRIPT).1

.PHONY: check analyze test man
