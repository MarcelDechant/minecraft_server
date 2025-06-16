# Java environment for Minecraft server
FROM openjdk:21-jdk-slim

# Working directory in the container
WORKDIR /app

# Copy all files to the working directory
COPY . $WORKDIR

# Accept Minecraft EULA
RUN echo "eula=true" > /app/eula.txt

# Default Minecraft server port
EXPOSE 25565

# Start the server
ENTRYPOINT ["java", "-Xmx1024M", "-Xms512M", "-jar", "/app/server.jar", "nogui"]