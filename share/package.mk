# Build elisp package

.PHONY: all distclean

all: $(package).tar

distclean: clean
	-rm $(package) $(package).tar

$(package).tar: info $(package)/$(name)-pkg.el
	cp $(infdir)/*.{png,info} $(package)
	for FILE in $(package)/*.info; do \
		install-info --info-dir=$(package) $${FILE}; \
	done
	tar -cf $@ $(package)

$(package)/$(name)-pkg.el: $(package)
	touch $@
	echo ";; Package automatically build from $(pkgnam) sources"
	echo ";; See: https://gitorious.org/emacs-lisp-packages-for-info-documentation"
	echo 
	echo "(define-package \"$(name)\""  > $@
	echo "                \"$(version)\""  >> $@
	echo "                \"Info documentation for $(pkgnam)\")" >> $@

$(package):
	[ -x $@ ] || ( mkdir $@ )
