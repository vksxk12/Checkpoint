SUBDIRS = 3ds switch

all:
	@for dir in $(SUBDIRS); do $(MAKE) -C $$dir; done

clean:
	@for dir in $(SUBDIRS); do $(MAKE) clean -C $$dir; done

3ds:
	@$(MAKE) -C 3ds

switch:
	@$(MAKE) -C switch

format:
	@for dir in $(SUBDIRS); do $(MAKE) -C $$dir format; done

.PHONY: $(SUBDIRS) clean format