
default: build

bin/docker-machine-driver-opennebula:
	dep init
	dep ensure
	go build -o ./bin/docker-machine-driver-opennebula ./bin 

build: clean bin/docker-machine-driver-opennebula

clean:
	 $(RM) bin/docker-machine-driver-opennebula

install: bin/docker-machine-driver-opennebula
	cp -f ./bin/docker-machine-driver-opennebula ~/go/internal/bin/

.PHONY: clean build install
