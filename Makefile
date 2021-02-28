docker=podman

build:
	$(docker) build -t marcoparrone/graphicsmagick .

test: 
	$(docker) run --rm -it marcoparrone/graphicsmagick gm

clean:
	$(docker) rmi localhost/marcoparrone/graphicsmagick

all: build
