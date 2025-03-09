BIN="./bin"
SRC=$(shell find . -name "*.go")
MAIN=$(shell find . -name "main.go")

.PHONY: fmt install_deps build clean

default: build


fmt:
	gofmt -d $(SRC)

install_deps:
	$(info "Установка зависимостей.")
	go get -v ./...

build:
	mkdir -p bin && go build -o $(BIN)/getman $(MAIN)

clean:
	rm -rf $(BIN)

