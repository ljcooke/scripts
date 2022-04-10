BUNDLE = bundle
SCDOC = scdoc

.DEFAULT_GOAL = default
.PHONY: all doc lint

doc/%.md: man/%.1
	pandoc $< > $@

man/%.1: scd/%.1.scd
	$(SCDOC) < $< > $@

default: doc lint

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
