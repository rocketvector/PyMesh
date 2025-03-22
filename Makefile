IMAGE_NAME = pymesh
CONTAINER_NAME = pymesh_container
DOCKERFILE = Dockerfile

.PHONY: build run clean

# Build the Docker image
build:
	docker build -t $(IMAGE_NAME) -f $(DOCKERFILE) .

# Run the container interactively
run:
	docker run --rm -it --name $(CONTAINER_NAME) $(IMAGE_NAME) /bin/bash

# Clean up by removing the Docker image
clean:
	docker rmi $(IMAGE_NAME)