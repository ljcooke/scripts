SHELL = /bin/sh
BATS = bats
SCDOC = scdoc
SHELLCHECK = shellcheck

prefix ?= /usr/local
_installdir = $(DESTDIR)$(prefix)
bindir ?= $(_installdir)/bin
datarootdir ?= $(_installdir)/share
mandir ?= $(datarootdir)/man
man1dir ?= $(mandir)/man1

.DEFAULT_GOAL = default
.PHONY: default install check analyze test man

%.1: %.1.scd
	$(SCDOC) < $< > $@

default:
	@echo "make install  - Install curl-resolve."
	@echo "make check    - Test and analyze."
	@echo "make man      - Rebuild the man page (requires scdoc)."

install:
	test -e $(_installdir)
	mkdir -p $(bindir) $(man1dir)
	install -m755 curl-resolve $(bindir)/curl-resolve
	install -m644 curl-resolve.1 $(man1dir)/curl-resolve.1

check: analyze test

analyze:
	$(SHELLCHECK) curl-resolve

test:
	$(BATS) curl-resolve.bats

man: curl-resolve.1
