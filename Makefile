all: project
.PHONY: project

clean:
	tuist clean

project:
	$(call tuist_generate)

define tuist_generate
	tuist generate || if [ ! "$$?" -eq "0" ]; then $(call tuist_generate_with_update); fi
endef

define tuist_generate_with_update
	tuist fetch && tuist generate
endef