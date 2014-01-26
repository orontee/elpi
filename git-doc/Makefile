pkgnam=git
pkgver=1.8.5
pkgrel=3
url=https://github.com/git/git/archive

pkgarc = v$(pkgver).$(pkgrel).tar.gz
srcdir = $(pkgdir)/Documentation
infdir = $(srcdir)

include ../share/all.mk
include ../share/core.mk
include ../share/package.mk

info: $(srcdir)
	cd $<; make info
