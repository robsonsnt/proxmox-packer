SRC_DIR := src
.DEFAULT_GOAL := help

.PHONY: help
help:
	@echo "Use: make <command>"
	@echo "ol8 - Create an Oracle Linux 8 Template for Proxmox"

.PHONY: ol8
ol8: 
	packer init oracle_linux_8/
	packer build -var-file variables.pkrvars.hcl oracle_linux_8/
