FROM golang:1.22.0
    
WORKDIR /app

COPY . .

RUN go mod download

RUN go mod tidy

RUN CGO_ENABLED=0 GOOS=linux GOARCH=amd64 go build -o /parcel

CMD ["/parcel"]