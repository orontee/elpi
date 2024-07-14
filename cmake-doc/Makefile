pkgnam=CMake
pkgver=3.25
pkgrel=1
url=https://github.com/Kitware/CMake/archive/refs/tags

pkgarc = v${pkgver}.${pkgrel}.tar.gz
infdir = build/Utilities/Sphinx/texinfo
srcdir = $(pkgdir)
builddir = build

include ../share/all.mk
include ../share/core.mk
include ../share/package.mk

info: $(srcdir)
	cmake -B $(builddir) -S $(srcdir) -DSPHINX_INFO=ON
	cmake --build $(builddir) -- documentation

clean:
	-rm -r $(pkgdir)
	-rm $(pkgarc)
	-rm -rf $(builddir)
