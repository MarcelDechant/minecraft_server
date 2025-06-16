# Java environment for Minecraft server
FROM openjdk:21-jdk-slim

# Install gettext for envsubst
RUN apt-get update && apt-get install -y gettext-base && rm -rf /var/lib/apt/lists/*

# Working directory in the container
WORKDIR /app

# Copy all files to the working directory
COPY . $WORKDIR

# Accept Minecraft EULA
RUN echo "eula=true" > /app/eula.txt

# Make start script executable
RUN chmod +x /app/start.sh

# Default Minecraft server port
EXPOSE 25565

# Start the Minecraft server using the start script
ENTRYPOINT ["/app/start.sh"]