# Build sphinx documentation of package

pkgdir ?= $(pkgnam)-$(pkgver).$(pkgrel)
pkgarc ?= $(pkgdir).tar.gz
srcdir ?= $(pkgdir)/docs
infdir ?= $(srcdir)

.PHONY: clean info

clean:
	-rm -r $(pkgdir) $(pkgarc)

$(srcdir): $(pkgdir)

$(pkgdir): $(pkgarc)
	[ -x $(pkgdir) ] || ( tar -xf $< )

$(pkgarc):
	wget $(url)/$@
