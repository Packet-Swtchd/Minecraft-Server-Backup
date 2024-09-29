# Minecraft-Server-Backup
 A bash script to stop a minecraft server and then restart it for an external backup process to take place.

# Set-up
 1. Set file path, start command, and screen name.
 2. On Linux make sure the file is executable: use chmod +x /path/to/script
 3. Manually execute, or schedule execution.
# Schedule Execution
 1. update Cron Job: crontab -e
 2. Syntax for cron job: i. ii. iii. iv. v. /path/to/script
    1. Minutes (0 - 59)
    2. Hour (0 - 23)
    3. Day of the Month (1 - 31)
    4. Month (1 - 12)
    5. Day of the Week (0 - 7)
