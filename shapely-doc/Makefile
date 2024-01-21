pkgnam=shapely
pkgver=1.6
pkgrel=4
url=https://github.com/Toblerity/Shapely/archive/

pkgarc = $(pkgver).$(pkgrel).tar.gz
pkgdir ?= $(pkgnam)-$(pkgver).$(pkgrel)
srcdir = $(pkgdir)/docs
infdir = $(srcdir)

include ../share/all.mk
include ../share/core.mk
include ../share/package.mk

info: $(srcdir)
	cd $(srcdir); make info
