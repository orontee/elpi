# Build sphinx documentation of package

# Targets depends on the following variables:
# pkgnam pkgver pkgrel url

# TODO Do not override following variables if already defined

name=$(pkgnam)-doc
version=$(pkgver).$(pkgrel)
package=$(name)-$(version)

pkgdir=$(pkgnam)-$(pkgver).$(pkgrel)
srcdir=$(pkgdir)/docs
infdir=$(srcdir)/_build/texinfo

.PHONY: all help clean distclean info

all: $(package).tar

clean:
	-rm -r $(package) $(pkgdir) $(pkgdir).tar.gz

distclean: clean
	-rm $(package).tar

info: $(srcdir)
	cd $<; make texinfo
	cd $(infdir); make info

$(srcdir): $(pkgdir)

$(pkgdir): $(pkgdir).tar.gz
	[ -x $(pkgdir) ] || ( tar -xf $< )

$(pkgdir).tar.gz:
	wget $(url)/$@
