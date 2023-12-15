FROM golang:alpine
WORKDIR /app
COPY kouign-aback/go.* ./
RUN go mod download
COPY kouign-aback/ ./
RUN go build -o main .
CMD ["/app/main"]
EXPOSE 8080