BUNDLE = bundle
PANDOC = pandoc
SCDOC = scdoc
SHELLCHECK = shellcheck

# --- User ---

.DEFAULT_GOAL = all
.PHONY: all

all:

# --- Development ---

doc/%.md: doc/%.1
	$(PANDOC) -f man -t markdown $< > $@

doc/%.1: doc/%.1.scd
	$(SCDOC) < $< > $@

.PHONY: build
build: doc check

doc: man \
	doc/ljc-asc2bin.md \
	doc/ljc-bin2asc.md \
	doc/ljc-cue2tracklist.md \
	doc/ljc-curl-resolve.md \
	doc/ljc-dither-wallpaper.md \
	doc/ljc-isodate.md
man: \
	doc/ljc-asc2bin.1 \
	doc/ljc-bin2asc.1 \
	doc/ljc-cue2tracklist.1 \
	doc/ljc-curl-resolve.1 \
	doc/ljc-dither-wallpaper.1 \
	doc/ljc-isodate.1

.PHONY: check
check: analyze test

.PHONY: analyze analyze-rb analyze-sh
analyze: analyze-rb analyze-sh
analyze-rb:
	$(BUNDLE) exec rubocop
analyze-sh:
	$(SHELLCHECK) bin/ljc-curl-resolve
	$(SHELLCHECK) bin/ljc-dither-wallpaper

.PHONY: test test-rb test-sh
test: test-rb test-sh
test-rb:
	$(BUNDLE) exec rspec
test-sh:
	test/sh/run-tests.sh
