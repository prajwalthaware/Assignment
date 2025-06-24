FROM golang:1.22-alpine
WORKDIR /app
COPY main.go .
ENV GO111MODULE=off  
RUN go build -o service1
EXPOSE 8001
CMD ["./service1"]