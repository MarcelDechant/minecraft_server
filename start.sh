#!/bin/sh

# Template in finale server.properties umwandeln
envsubst < /app/server.properties.template > /app/server.properties

# Minecraft Server starten
exec java -Xmx1024M -Xms512M -jar /app/server.jar nogui