#!/bin/bash
## Script to start and stop the MC server for Proxmox backups.

# Set filepath to server here:
serverPath=""
# Server start command, set with your start command:
startCommand=""
# Set the screen name for minecraft console here:
serverScreenName="minecraft-console"

# Stop the server at 23:55
echo "Stopping Minecraft server at 23:55"
screen -S $serverScreenName -X stuff "/say Server is stopping for backup in 5 minutes\n"
screen -S $serverScreenName -X stuff "/save-all\n"
sleep 5 # Waits 5 seconds for MC data to be flushed to secondary storage.
screen -S $serverScreenName -X stuff "/stop\n"
# Kills the old screen upon server termination
screen -S -X $serverScreenName kill


# Wait until 00:15 before restarting server
echo "Waiting until 00:15 to restart the MC server..."
sleep 1200 # 1200 seconds == 20 mins.

echo "Starting Minecraft server at 00:15"
cd $serverPath
screen -dmS $serverScreenName $startCommand

echo "Minecraft Server has been restarted."
