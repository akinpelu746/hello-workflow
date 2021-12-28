FROM golang:latest

# Set the Current Working Directory inside the container
WORKDIR /app

# Copy go mod and sum files
COPY go.mod go.sum  ./

# Download all dependencies. Dependencies will be cached if the go.mod and go.sum files are not changed
RUN go mod download

# Copy the source from the current directory to the Working Directory inside the container
COPY worker  ./worker

COPY starter  ./starter

COPY helloworkflow  ./helloworkflow

# Build the Go app



COPY entry-point.sh /scripts/entry-point.sh


RUN ["chmod", "+x" ,"/scripts/entry-point.sh"]

# Expose port 8080 to the outside world
EXPOSE 8080



# Command to run the executable
CMD ["/scripts/entry-point.sh"]
