pkgnam=scikit-learn
pkgver=0.19
pkgrel=1
url=https://github.com/scikit-learn/scikit-learn/archive

pkgarc = $(pkgver).$(pkgrel).tar.gz
pkgdir ?= $(pkgnam)-$(pkgver).$(pkgrel)
srcdir = $(pkgdir)/doc
infdir = $(srcdir)

include ../share/all.mk
include ../share/core.mk
include ../share/package.mk

info: $(srcdir)
	#cd $(srcdir); sphinx-build -b texinfo . _build/texinfo
	cd $(srcdir); make -C _build/texinfo info
