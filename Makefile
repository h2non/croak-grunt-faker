LIB = $(SRC:src/%.js=lib/%.js)
 
build: $(LIB)
 
define release
	VERSION=`node -pe "require('./package.json').version"` && \
	NEXT_VERSION=`node -pe "require('semver').inc(\"$$VERSION\", '$(1)')"` && \
	node -e "\
		var j = require('./package.json');\
		j.version = \"$$NEXT_VERSION\";\
		var s = JSON.stringify(j, null, 2);\
		require('fs').writeFileSync('./package.json', s);" && \
	git commit -m "release $$NEXT_VERSION" -- package.json && \
	git tag "$$NEXT_VERSION" -m "Version $$NEXT_VERSION"
endef

install link:
	@npm $@
 
release:
	@$(call release,patch)
 
release-minor:
	@$(call release,minor)
 
release-major:
	@$(call release,major)
 
publish:
	git push --tags origin HEAD:master
	npm publish
 
.PHONY: install