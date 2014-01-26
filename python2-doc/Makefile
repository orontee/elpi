pkgnam=Python
pkgver=2.7
pkgrel=5
url=http://www.python.org/ftp/python/${pkgver}.${pkgrel}

pkgarc = $(pkgdir).tgz
srcdir = $(pkgdir)/Doc
infdir = $(srcdir)/build/info

PYTHON=python2.7
SPHINX=sphinx-build2

include ../share/all.mk
include ../share/core.mk
include ../share/package.mk

texinfo: $(srcdir)
	cd $(srcdir); $(SPHINX) -C -D project='Python' -D copyright="1990-$(date +%Y), Python Software Foundation" -b texinfo -d build/doctrees . build/info

info: texinfo
	$(MAKE) -C $(infdir) $@
