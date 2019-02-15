VERSION ?= latest

.PHONY: cover
cover:
	@go test -coverpkg=./... -coverprofile=coverage.txt ./...

.PHONY: dep
dep:
	@go get github.com/golang/dep/cmd/dep
	@dep ensure -v