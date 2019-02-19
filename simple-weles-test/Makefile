all: docker-container | build-outdir
	docker cp "test-container:/test" "bin/test"

docker-build:
	docker build --tag test-image .

docker-container: docker-build
	docker create --name test-container test-image

clean:
	docker rm test-container
	docker rmi test-image
	rm -rf bin

build-outdir:
	mkdir -p bin
