pkgnam=numpy
pkgver=1.13
pkgrel=3
url=https://github.com/numpy/numpy/releases/download/v$(pkgver).$(pkgrel)/

pkgarc = numpy-$(pkgver).$(pkgrel).tar.gz
srcdir = $(pkgdir)/doc
infdir = $(srcdir)

include ../share/all.mk
include ../share/core.mk
include ../share/package.mk

info: $(srcdir)
	cd $(srcdir)/source; sphinx-build -b texinfo -d _build/doctrees \
	                                            . build/texinfo
	cd $(srcdir)/source/build/texinfo; makeinfo --no-split --no-warn \
	                                            --force -o numpy.info numpy.texi
