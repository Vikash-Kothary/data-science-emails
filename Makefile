#!make
#@ Makefile for Ocean Emails

#@ Commands:
.PHONY: help

-include .env
export
NOTEBOOKS_CONTEXT := notebooks
-include ${NOTEBOOKS_CONTEXT}/Makefile

#@ - help: Show all commands.
help:
	@fgrep -h "#@" $(MAKEFILE_LIST) | fgrep -v fgrep | sed -e 's/\\$$//' | sed -e 's/#@ //'

