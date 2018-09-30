pkgnam=scikit-image
pkgver=0.13
pkgrel=1
url=https://github.com/scikit-image/scikit-image/archive

pkgarc = v$(pkgver).$(pkgrel).tar.gz
pkgdir ?= $(pkgnam)-$(pkgver).$(pkgrel)
srcdir = $(pkgdir)/doc
infdir = $(srcdir)

include ../share/all.mk
include ../share/core.mk
include ../share/package.mk

info: $(srcdir)
	cd $(srcdir); sphinx-build -b texinfo source _build/texinfo
	cd $(srcdir); make -C _build/texinfo info
