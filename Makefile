PUBLIC_IMG = ./public/img
PUBLIC_CSS = ./public/css
PUBLIC_JS = ./public/js
BOOTSTRAP_LESS = ./public/less/bootstrap.less

public:
	mkdir -p ${PUBLIC_IMG}
	mkdir -p ${PUBLIC_CSS}
	mkdir -p ${PUBLIC_JS}
	cp public/bootstrap/img/* ${PUBLIC_IMG}
	lessc --include-path=./public/bootstrap/less ${BOOTSTRAP_LESS} > ./public/css/bootstrap.css
	lessc --include-path=./public/bootstrap/less --compress ${BOOTSTRAP_LESS} > ./public/css/bootstrap.min.css

.PHONY: