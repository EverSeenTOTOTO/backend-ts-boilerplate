SHELL := /bin/bash

DIST ?= dist

lint:
	npx eslint --fix .
	npx tsc --noEmit
	@echo -e '\033[1;32mNo lint errors found.'
.PHONY: lint

clean:
	-rm -r ${DIST}
.PHONY: clean

build: clean
	npx tsc -p .  --emitDeclarationOnly
	npx tsc-alias
	npx rollup -c rollup.config.js
.PHONY: build

start: build
	node ${DIST}/index.js
.PHONY: start

watch:
	npx nodemon --config nodemon.json
.PHONY: watch

test:
	npx jest --coverage --silent
.PHONY: test

debug:
	node --inspect-brk node_modules/jest/bin/jest.js --coverage --runInBand
.PHONY: debug

