# Build sphinx documentation of package

pkgdir ?= $(pkgnam)-$(pkgver).$(pkgrel)
pkgarc ?= $(pkgdir).tar.gz
srcdir ?= $(pkgdir)/docs
infdir ?= $(srcdir)/_build/texinfo

.PHONY: clean info

clean:
	-rm -r $(pkgdir) $(pkgarc)

info: $(srcdir)
	cd $<; make texinfo
	cd $(infdir); make info

$(srcdir): $(pkgdir)

$(pkgdir): $(pkgarc)
	[ -x $(pkgdir) ] || ( tar -xf $< )

$(pkgarc):
	wget $(url)/$@
