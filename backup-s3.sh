#!/bin/bash
DATE=$(date +%F)
tar -czf /tmp/backup-$DATE.tar.gz /var/www/html
aws s3 cp /tmp/backup-$DATE.tar.gz s3://my-backup-bucket/
echo "Backup Done $DATE"
