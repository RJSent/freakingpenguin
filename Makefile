.PHONY: md production preview local clean

md:
	scripts/publish

production: md
	hugo

preview: md
	hugo -FD

local: preview
	hugo server --disableFastRender

clean:
	rm -rf ./content ./public ./resources
