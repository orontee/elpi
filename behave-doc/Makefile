pkgnam=behave
pkgver=1.3
pkgrel=3
url=https://github.com/${pkgnam}/${pkgnam}/archive/refs/tags/

pkgarc = v${pkgver}.${pkgrel}.tar.gz
srcdir = $(pkgdir)/docs
infdir = $(pkgdir)/build/docs/texinfo/en

PYTHON=python3.13
SPHINX=sphinx-build

include ../share/all.mk
include ../share/core.mk
include ../share/package.mk

info: $(srcdir)
	cd $(pkgdir); \
	   python -m pip install .[docs]
	cd $(srcdir); \
	   make info
