project_name := gw2-tools

INSTALL_PROGRAM := install
INSTALL_DATA := install -m 644

prefix := /usr/local
datarootdir := $(prefix)/share
exec_prefix := $(prefix)
bindir := $(exec_prefix)/bin
docdir := $(datarootdir)/doc/$(project_name)

.PHONY: all install uninstall

all:

install:
	mkdir -p "$(DESTDIR)$(bindir)/"
	$(INSTALL_PROGRAM) gw2-dpsreport/gw2-dpsreport "$(DESTDIR)$(bindir)/gw2-dpsreport"
	mkdir -p "$(DESTDIR)$(docdir)/"
	$(INSTALL_DATA) README */README.* "$(DESTDIR)$(docdir)/"

uninstall:
	$(RM) "$(DESTDIR)$(bindir)/gw2-dpsreport"
	$(RM) -r "$(DESTDIR)$(docdir)/"
