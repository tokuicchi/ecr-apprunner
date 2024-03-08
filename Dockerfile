FROM golang:1.17.0-alpine3.14

WORKDIR /go/src/app

RUN apk update && apk add git

COPY . .

RUN go mod tidy

RUN go build -o app .

CMD ["./app"]