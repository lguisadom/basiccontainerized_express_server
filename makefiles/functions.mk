UID_LOCAL		?= "${shell id -u}"
GID_LOCAL		?= "${shell id -g}"
APP_DIR			= app
IMAGE_BUILD	= node:14.19.3-alpine3.14

install:
	docker container run --rm -i \
	--workdir "/${APP_DIR}" \
	-u ${UID_LOCAL}:${GID_LOCAL} \
	-v "${PWD}/${APP_DIR}":/${APP_DIR} \
	${IMAGE_BUILD} \
	yarn install