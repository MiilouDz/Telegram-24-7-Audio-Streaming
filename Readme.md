# Telegram 24/7 Audio Streaming Bot

This project provides a way to stream audio continuously in a Telegram channel 24/7 using FFmpeg inside a Docker container. The project is hosted on a cloud hosting platform.
live streaming : https://t.me/biabaqelquran?livestream
## Features
- Streams an audio file (`quran.mp3`) to a Telegram channel.
- Runs continuously 24/7 using Docker.
- Uses FFmpeg for streaming.

## Setup Instructions
### 1. Add Your Streaming Key
Replace `ChannelStreamKey` in the `Dockerfile` with your actual RTMP stream key, which looks like this:
```
rtmps://dc4-1.rtmp.t.me/s/your_channel_key
```

### 2. Create `playlist.txt`
Ensure you have a `playlist.txt` file in the following format:
```
file 'quran1.mp3'
file 'quran2.mp3'
file 'quran3.mp3'
```

## Contributing
Feel free to open issues or pull requests to improve the project!

