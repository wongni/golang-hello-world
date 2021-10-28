all: build

fmt: ## Run go fmt against code.
	go fmt ./...

vet: ## Run go vet against code.
	go vet ./...

test: fmt vet ## Run tests.
	go test ./... -coverprofile cover.out

build: fmt vet ## Build binary.
	go build -o bin/hello hello.go