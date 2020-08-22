FROM golang
RUN go get github.com/prometheus/client_golang/prometheus
RUN go get github.com/prometheus/client_golang/prometheus/promauto
RUN go get github.com/prometheus/client_golang/prometheus/promhttp
COPY . /app
ENTRYPOINT go run /app/main.go
EXPOSE 2112