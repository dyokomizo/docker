SUBS=$(shell ls -d */)
all: $(SUBS)
.PHONY: force
$(SUBS): force
	cd $@ && pwd && make
