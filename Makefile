SHELL = /bin/sh
BATS = bats
SCDOC = scdoc
SHELLCHECK = shellcheck

PREFIX ?= /usr/local
INSTALLDIR = $(DESTDIR)$(PREFIX)
BINDIR ?= $(INSTALLDIR)/bin
MANDIR ?= $(INSTALLDIR)/share/man

.DEFAULT_GOAL = default
.PHONY: default install check analyze test man

%.1: %.1.scd
	$(SCDOC) < $< > $@

default:
	@echo "make install  - Install curl-resolve."
	@echo "make check    - Test and analyze."
	@echo "make man      - Rebuild the man page (requires scdoc)."

install:
	mkdir -p $(BINDIR) $(MANDIR)/man1
	install -m755 curl-resolve $(BINDIR)/curl-resolve
	install -m644 curl-resolve.1 $(MANDIR)/man1/curl-resolve.1

check: analyze test

analyze:
	$(SHELLCHECK) curl-resolve

test:
	$(BATS) curl-resolve.bats

man: curl-resolve.1
