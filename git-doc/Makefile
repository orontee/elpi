pkgnam=git
pkgver=2.17
pkgrel=1
url=https://github.com/git/git/archive

pkgarc = v$(pkgver).$(pkgrel).tar.gz
srcdir = $(pkgdir)/Documentation
infdir = $(srcdir)

include ../share/all.mk
include ../share/core.mk
include ../share/package.mk

info: $(srcdir)
	cd $<; make info
