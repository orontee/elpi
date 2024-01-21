pkgnam=git
pkgver=2.30
pkgrel=2
url=https://github.com/git/git/archive

pkgarc = v$(pkgver).$(pkgrel).tar.gz
srcdir = $(pkgdir)/Documentation
infdir = $(srcdir)

include ../share/all.mk
include ../share/core.mk
include ../share/package.mk

info: $(srcdir)
	cd $<; make info
