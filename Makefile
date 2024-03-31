.PHONY: error
error:
	exit 1

.PHONY: dev
dev:
	go run cmd/ling/main.go

.PHONY: test
test:
	go test -v ./...

.PHONY: build
build:
	go build -ldflags="-s -w" -trimpath -o build/ling cmd/ling/main.go
