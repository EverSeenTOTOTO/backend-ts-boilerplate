SHELL := /bin/bash

lint:
	pnpx @biomejs/biome lint --write 
	pnpx @biomejs/biome format --write
	@printf '\033[1;32mNo lint errors found.'
.PHONY: lint

build:
	npx vite build

start: build
	node dist/index.js
.PHONY: start

test:
	npx vitest run
.PHONY: test

debug: build
	node --inspect-brk dist/index.js
.PHONY: debug
