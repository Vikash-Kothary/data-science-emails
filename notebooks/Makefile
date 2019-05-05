#!make
#@ Makefile for Jupyter Notebooks

# Commands:
.PHONY: help-notebooks dev-notebooks
SHELL := /bin/bash
NOTEBOOKS_CONTEXT := $(or $(NOTEBOOKS_CONTEXT),.)
#-include ${NOTEBOOKS_CONTEXT}/.env
#export

%: %-notebooks
	@true

#@ - help: Show all commands.
help-notebooks:
	@fgrep -h "#@ " $(MAKEFILE_LIST) | fgrep -v fgrep | sed -e 's/\\$$//' | sed -e 's/#@ //'

#@ - init: Create development environement.
init-notebooks:
	@cd ${NOTEBOOKS_CONTEXT}/ && \
	pipenv install --dev

#@ - run: Run jupyter notebook.
run-notebooks:
	@cd ${NOTEBOOKS_CONTEXT}/ && \
	pipenv run \
	jupyter notebook --notebook-dir=.

clean-notebooks:
	@cd ${NOTEBOOKS_CONTEXT}/ && \
	pipenv clean