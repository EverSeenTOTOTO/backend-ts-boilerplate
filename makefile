SHELL := /bin/bash

prepare:
	pnpx husky install
.PHONY: prepare

lint:
	pnpx @biomejs/biome lint --write 
	pnpx @biomejs/biome format --write
	@printf '\033[1;32mNo lint errors found.'
.PHONY: lint

dev:
	bun --watch src/index.ts 
.PHONY: dev

start:
	bun src/index.ts
.PHONY: start

test:
	bun test --coverage
.PHONY: test

debug:
	bun --inspect-brk src/index.ts
.PHONY: debug
