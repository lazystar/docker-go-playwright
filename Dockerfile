FROM golang:bookworm

COPY go.mod .

RUN go get -u github.com/playwright-community/playwright-go
RUN go run github.com/playwright-community/playwright-go/cmd/playwright@latest install --with-deps
