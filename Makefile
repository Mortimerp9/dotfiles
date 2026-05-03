DOTFILES := $(realpath .)
ITEMS := $(filter-out .git Makefile LICENSE,$(shell ls -A))

# DRY=1 enables dry-run behavior
ifdef DRY
LN := echo ln -sfn
RM := echo rm -rf
else
LN := ln -sfn
RM := rm -rf
endif

.PHONY: link unlink dry-run

link:
	@echo "Linking to $(HOME)..."
	@for item in $(ITEMS); do \
		$(LN) $(DOTFILES)/$$item $(HOME)/$$item; \
	done
	@echo "Done."

unlink:
	@echo "Removing from $(HOME)..."
	@for item in $(ITEMS); do \
		$(RM) $(HOME)/$$item; \
	done
	@echo "Done."

dry-run:
	@$(MAKE) DRY=1 link

