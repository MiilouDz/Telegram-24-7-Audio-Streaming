# Use the lightweight Python base image
FROM python:3.11.0-slim-bullseye

# Install FFmpeg and required dependencies
RUN apt-get -y update && apt-get install -y ffmpeg

# Copy the MP3 files and playlist into the container
COPY quran.mp3 playlist.txt /app/

# Set the working directory
WORKDIR /app 

# Start the FFmpeg stream
CMD ["ffmpeg", "-re", "-stream_loop", "-1", "-f", "concat", "-safe", "0", "-i", "playlist.txt", "-c:a", "aac", "-f", "flv", "-vn", "ChannelStreamKey", "-c:a", "aac", "-f", "flv", "-vn", "ChannelStreamKey", "-c:a", "aac", "-f", "flv", "-vn", "ChannelStreamKey"]
