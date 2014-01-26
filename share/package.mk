# Build elisp package

.PHONY: all distclean

all: $(package).tar

distclean: clean
	-rm -r $(package)
	-rm $(package).tar

$(package).tar: info $(package)/$(name)-pkg.el
	find $(infdir) -name '*.info' -or -name '*.png' -exec cp {} $(package) \;
	for FILE in $(package)/*.info; do \
		install-info --info-dir=$(package) $${FILE}; \
	done
	tar -cf $@ $(package)

$(package)/$(name)-pkg.el: $(package)
	echo ";; Package automatically build from $(pkgnam) sources" > $@
	echo ";; See: https://gitorious.org/emacs-lisp-packages-for-info-documentation" >> $@
	echo >> $@
	echo "(define-package \"$(name)\""  >> $@
	echo "                \"$(version)\""  >> $@
	echo "                \"Info documentation for $(pkgnam)\")" >> $@

$(package):
	[ -x $@ ] || ( mkdir $@ )
