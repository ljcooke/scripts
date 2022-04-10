BUNDLE = bundle
PANDOC = pandoc
SCDOC = scdoc

# --- User ---

.DEFAULT_GOAL = all
.PHONY: all

all:

# --- Development ---

.PHONY: build test doc lint

doc/%.md: man/%.1
	$(PANDOC) $< > $@

man/%.1: scd/%.1.scd
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
	man/ljc-asc2bin.1 \
	man/ljc-bin2asc.1 \
	man/ljc-cue2tracklist.1 \
	man/ljc-dither-wallpaper.1 \
	man/ljc-isodate.1

lint:
	$(BUNDLE) exec rubocop
