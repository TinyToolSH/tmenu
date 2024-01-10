.POSIX:

prefix = /usr/local

all:
	@echo "all target"

install:
	@echo "Installing tmenu..."
	install -m 555 tmenu $(DESTDIR)/$(prefix)/bin/tmenu
	@echo "done!"

clean:
	@echo "Cleaning tmenu"

distclean: clean

uninstall:
	@echo "Uninstall tmenu"
	rm -f $(DESTDIR)/$(prefix)/bin/tmenu
	@echo "done!"

.PHONY: all install clean distclean uninstall
