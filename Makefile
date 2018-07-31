NAME	:= docker-alpine-shinken

build:

	docker build -t $(NAME) .

shell:

	docker run -it $(NAME) sh