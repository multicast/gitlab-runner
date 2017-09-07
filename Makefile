NAME = mkovac/gitlab-runner
VERSION = $(shell date +%Y%m%d)

.PHONY: all build latest

all: build

build:
	docker build --rm -t $(NAME):$(VERSION) \
	 --build-arg "ftp_proxy=${ftp_proxy}" \
	 --build-arg "http_proxy=${http_proxy}" \
	 --build-arg "https_proxy=${https_proxy}" \
	 .

latest: build
	docker tag $(NAME):$(VERSION) $(NAME):devel
