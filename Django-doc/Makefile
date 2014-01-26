pkgnam=Django
pkgver=1.5
pkgrel=1
url=https://www.djangoproject.com/m/releases/${pkgver}/

infdir = $(srcdir)/_build/texinfo

include ../share/all.mk
include ../share/core.mk
include ../share/package.mk

info: $(srcdir)
	cd $<; make texinfo
	cd $(infdir); make info
