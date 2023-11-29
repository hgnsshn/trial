FROM golang:1.21.4

COPY ./main.go main.go
ENV CGO_ENABLED=0
RUN go build -o /bin/golang ./main.go

FROM golang:1.21.4-alpine3.17
WORKDIR /app
COPY --from=0 /bin/golang /app/golang
COPY file.p12 /app/file.p12

CMD ["/app/golang"]
