GILOT_IMAGE_NAME = gilot

build:
	docker build -t $(GILOT_IMAGE_NAME) .
exec:
	docker run -it --rm -v $(PWD):/app $(GILOT_IMAGE_NAME) /bin/bash
