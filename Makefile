SUBDIRS = cmake-doc python3-doc
SUBDIRS += git-doc numpy-doc python2-doc shapely-doc
SUBDIRS += scikit-learn-doc scikit-image-doc
SUBDIRS += sympy-doc Django-doc mongo-doc

SUBDIRS-distclean = $(addsuffix -distclean, $(SUBDIRS))
SUBDIRS-clean = $(addsuffix -clean, $(SUBDIRS))

.PHONY: subdirs $(SUBDIRS) \
		  distclean $(SUBDIRS-distclean) \
		  clean $(SUBDIRS-clean)

subdirs: $(SUBDIRS)

distclean: $(SUBDIRS-distclean)

clean: $(SUBDIRS-clean)

$(SUBDIRS):
	$(MAKE) -C $@

$(SUBDIRS-distclean):
	$(MAKE) -C $(subst -distclean,,$@) distclean

$(SUBDIRS-clean):
	$(MAKE) -C $(subst -clean,,$@) clean

