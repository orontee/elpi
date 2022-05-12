pkgnam=sympy
pkgver=1
pkgrel=4
url=https://github.com/sympy/sympy/releases/download/sympy-${pkgver}.${pkgrel}

pkgdir=$(pkgnam)-$(pkgver).$(pkgrel)
srcdir=$(pkgdir)/doc
infdir=$(srcdir)/_build/texinfo

include ../share/all.mk
include ../share/core.mk
include ../share/package.mk

info: $(srcdir)
	cd $<; make texinfo
	cd $(infdir); make info
