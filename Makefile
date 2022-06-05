all: project
.PHONY: project

clean:
	tuist clean

project:
	$(call tuist_generate, "Pipe")

edit:
	tuist edit

define tuist_generate
	$(shell cat .env.tuist 2>/dev/null) tuist generate $(1) --xcframeworks || if [ ! "$$?" -eq "0" ]; then $(call tuist_generate_with_update, $(1)); fi
endef

define tuist_generate_with_update
	tuist fetch && $(shell cat .env.tuist 2>/dev/null) tuist generate $(1) --xcframeworks
endef