PREFIX ?= /usr
MANDIR ?= $(PREFIX)/share/man

all:
	@echo Run \'make install\' to install Neofetch.

install:
	@mkdir -p $(DESTDIR)$(PREFIX)/bin
	@mkdir -p $(DESTDIR)$(MANDIR)/man1

	@cp -p neofetch $(DESTDIR)$(PREFIX)/bin/neofetch
	@cp -p get-neofetch $(DESTDIR)$(PREFIX)/bin/get-neofetch
	@cp -p neofetch.1 $(DESTDIR)$(MANDIR)/man1

	@chmod 755 $(DESTDIR)$(PREFIX)/bin/neofetch
	@chmod 755 $(DESTDIR)$(PREFIX)/bin/get-neofetch

uninstall:
	@rm -rf $(DESTDIR)$(PREFIX)/bin/neofetch
	@rm -rf $(DESTDIR)$(PREFIX)/bin/get-neofetch

	@rm -rf $(DESTDIR)$(MANDIR)/man1/neofetch.1*
