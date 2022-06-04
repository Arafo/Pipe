all: project
.PHONY: project

clean:
	tuist clean

project:
	$(call tuist_generate, "Pipe")

define tuist_generate
	tuist generate $(1) || if [ ! "$$?" -eq "0" ]; then $(call tuist_generate_with_update, $(1)); fi
endef

define tuist_generate_with_update
	tuist fetch && tuist generate $(1)
endef