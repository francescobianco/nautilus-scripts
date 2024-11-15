

build:
	@chmod +x *.sh

push:
	@git add .
	@git commit -am "publish" || true
	@git push