BUNDLE = bundle
PANDOC = pandoc
SCDOC = scdoc

# --- User ---

.DEFAULT_GOAL = all
.PHONY: all

all:

# --- Development ---

.PHONY: build test doc lint

doc/%.md: doc/%.1
	$(PANDOC) -f man -t markdown $< > $@

doc/%.1: doc/%.1.scd
	$(SCDOC) < $< > $@

build: doc test
test: lint

doc: man \
	doc/ljc-asc2bin.md \
	doc/ljc-bin2asc.md \
	doc/ljc-cue2tracklist.md \
	doc/ljc-dither-wallpaper.md \
	doc/ljc-isodate.md

man: \
	doc/ljc-asc2bin.1 \
	doc/ljc-bin2asc.1 \
	doc/ljc-cue2tracklist.1 \
	doc/ljc-dither-wallpaper.1 \
	doc/ljc-isodate.1

lint:
	$(BUNDLE) exec rubocop
