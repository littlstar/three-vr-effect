
build/index.js: index.js node_modules
	mkdir -p $(dir $@)
	node_modules/.bin/browserify $< > $@

node_modules: package.json
	npm install
	touch $@

test: node_modules
	node_modules/.bin/ava

clean:
	rm -rf build

.PHONY: clean
