# syntax=docker/dockerfile:1
FROM golang:1.17-alpine
#specifies the working directory
WORKDIR /app/
# copy all the files from the repo
COPY . .
#build the image
RUN go build -o ./main
# command to run when image is started
CMD ["./main" ]
