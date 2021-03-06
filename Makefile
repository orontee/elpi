SUBDIRS = git-doc numpy-doc python3-doc shapely-doc
SUBDIRS += scikit-learn-doc scikit-image-doc

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

