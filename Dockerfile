from alpine

run apk --no-cache update
run apk --no-cache upgrade
run apk add --no-cache --update hugo

add . /hugo
workdir /hugo

expose 1313

entrypoint ["hugo", "server", "--baseUrl=localhost", "--bind=0.0.0.0"]
