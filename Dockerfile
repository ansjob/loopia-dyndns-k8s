# Use an official Ubuntu as a parent image
FROM alpine:latest

RUN apk add --no-cache bash
RUN apk add --no-cache curl

# Set the working directory in the container
WORKDIR /app

# Copy the local script to the working directory in the container
COPY script.sh .

# Make the script executable
RUN chmod +x script.sh

# Run the script when the container launches
ENTRYPOINT ["./script.sh"]

CMD [""]
