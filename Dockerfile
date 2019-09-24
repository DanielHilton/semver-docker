FROM node:dubnium-alpine
RUN npm i -g --silent semver
ENTRYPOINT semver ${VERSION} -i ${CHANGE_LEVEL} ${ARGS}
