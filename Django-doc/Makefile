pkgnam=Django
pkgver=1.6
pkgrel=4
url=https://www.djangoproject.com/m/releases/${pkgver}/

infdir = $(srcdir)/_build/texinfo

include ../share/all.mk
include ../share/core.mk
include ../share/package.mk

info: $(srcdir)
	cd $<; make texinfo
	cd $(infdir); make info
