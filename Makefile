.PHONY: dev
dev:
	go run cmd/ling/main.go

.PHONY: build
build:
	go build -ldflags="-s -w" -trimpath -o build/ling cmd/ling/main.go
