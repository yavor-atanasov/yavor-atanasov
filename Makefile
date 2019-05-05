.PHONY: build local-servce publish

build:
	docker build --rm -t"local/jekyll" .
	docker run --rm -v `pwd`/:/workspace -w /workspace yav/jekyll jekyll build

local-serve:
	docker build --rm -t"local/jekyll" .
	docker run --rm -v `pwd`/:/workspace -w /workspace -p 4000:4000 yav/jekyll jekyll serve -H 0.0.0.0

publish:
	docker build --rm -t"local/jekyll" .
	docker run --rm -v `pwd`/:/workspace -w /workspace -e AWS_ACCESS_KEY_ID="${YAV_AWS_KEY}" -e AWS_SECRET_ACCESS_KEY="${YAV_AWS_SECRET_KEY}" local/jekyll s3_website push
