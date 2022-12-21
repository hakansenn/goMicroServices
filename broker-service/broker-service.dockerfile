go build -o brokerApp ./cmd/api

RUN chmod +x /app/brokerApp

#build a tiny docker image 
FROM alpine:latest

RUN mkdir /app

COPY brokerApp /app

CMD ["/app/brokerApp"]