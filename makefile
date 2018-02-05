VERSION = 0.0.1

build:
	docker build -t postgrel:$(VERSION) ./
	docker tag postgrel:$(VERSION) $(USER)/postgrel:$(VERSION)

push:
	docker push $(USER)/postgrel:$(VERSION)

clean:
	docker rmi postgrel:$(VERSION)
