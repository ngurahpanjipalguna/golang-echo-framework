# Build Stage
FROM golang:1.24-alpine AS builder

WORKDIR /app

# Install dependencies
COPY go.mod go.sum ./
RUN go mod download

# Copy source code
COPY . .

# Build the application
RUN CGO_ENABLED=0 GOOS=linux go build -o main .

# Final Stage
FROM alpine:latest

WORKDIR /app

# Install minimal dependencies (if needed)
RUN apk --no-cache add ca-certificates

# Copy binary from builder
COPY --from=builder /app/main .

# Copy .env file (optional, but we will use environment variables in docker-compose)
# COPY .env . 

# Expose port
EXPOSE 8080

# Run the application
CMD ["./main"]
