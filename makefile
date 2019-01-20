project_name := gw2-tools

INSTALL_PROGRAM := install
INSTALL_DATA := install -m 644

prefix := /usr/local
datarootdir := $(prefix)/share
exec_prefix := $(prefix)
bindir := $(exec_prefix)/bin
docdir := $(datarootdir)/doc/$(project_name)

PROGRAMS := $(wildcard */bin)

.PHONY: all install uninstall

all:

install-%:
	mkdir -p "$(DESTDIR)$(bindir)/"
	$(INSTALL_PROGRAM) "$(patsubst install-%,%,$@)/bin" \
	    "$(DESTDIR)$(bindir)/$(patsubst install-%,%,$@)"

install: $(patsubst %/bin,install-%,$(PROGRAMS))
	mkdir -p "$(DESTDIR)$(docdir)/"
	$(INSTALL_DATA) README */README.* "$(DESTDIR)$(docdir)/"

uninstall-%:
	$(RM) "$(DESTDIR)$(bindir)/$(patsubst uninstall-%,%,$@)"

uninstall: $(patsubst %/bin,uninstall-%,$(PROGRAMS))
	$(RM) -r "$(DESTDIR)$(docdir)/"
