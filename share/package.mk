# Build elisp package

$(package).tar: info $(package)/$(name)-pkg.el
	cp $(infdir)/*.{png,info} $(package)
	for FILE in $(package)/*.info; do \
		install-info --info-dir=$(package) $${FILE}; \
	done
	tar -cf $@ $(package)

$(package)/$(name)-pkg.el: $(package)
	touch $@
	echo "(define-package \"$(name)\""  > $@
	echo "                \"$(version)\""  >> $@
	echo "                \"Info documentation for $(pkgnam)\")" >> $@

$(package):
	[ -x $@ ] || ( mkdir $@ )
