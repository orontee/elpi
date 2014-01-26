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
	cd $(srcdir); $(SPHINX) -b texinfo -d build/doctrees . build/info

# WARNING One must edit $(srcdir)/conf.py to comment the extensions
# definition...

info: texinfo
	$(MAKE) -C $(infdir) $@
