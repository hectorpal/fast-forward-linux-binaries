all : build-image get-ff

TAG = fast-forward-linux-binaries:latest

build-image:
	docker build -t $(TAG) .

get-ff:
	docker run -v $(PWD):/mnt/home -it $(TAG) cp /root/bin/ff /mnt/home

run-it:
	echo docker run -v $(PWD):/mnt/home -it $(TAG) bash
