.PHONY: all
all:
	@echo "Nothing to be done. Please use make install or make uninstall"
.PHONY: install
install:
	@echo "Installing Bastille"
	@echo
	@cp -Rv usr /
	@echo
	@echo "This method is for testing / development."

.PHONY: uninstall
uninstall:
	@echo "Removing Bastille command"
	@rm -vf /usr/local/bin/bastille
	@echo
	@echo "Removing Bastille sub-commands"
	@rm -rvf /usr/local/share/bastille
	@echo
	@echo "removing man page"
	@rm -rvf /usr/local/share/man/man1/bastille.1.gz
	@echo
	@echo "removing configuration file"
	@rm -rvf /usr/local/etc/bastille/bastille.conf.sample
	@echo
	@echo "removing startup script"
	@rm -vf /usr/local/etc/rc.d/bastille
	@echo "You may need to manually remove /usr/local/etc/bastille/bastille.conf if it is no longer needed."
