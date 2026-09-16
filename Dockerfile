FROM golang:1.22 AS builder
WORKDIR /app
COPY backend/ ./
RUN go build -o server ./cmd/server
FROM gcr.io/distroless/base
COPY --from=builder /app/server /server
EXPOSE 8080
CMD ["/server"]
