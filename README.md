# ftp_php_alpine_compose


удаление пользователей(del_user.sh):

#!/bin/sh

username=$1
sed -i "/$username/d" /config/users.txt

добавление пользователейadd_user.sh:

#!/bin/sh

echo "username:password" >> /config/users.txt


###
1. 

echo "username:password" >> /ftproot/users.txt
mkdir /ftproot/user/username
chown ftp:ftp /ftproot/user/username
chmod 755 /ftproot/user/username

###
2.

userdel username
rm -rf /ftproot/user/username
sed -i "/username/d" /ftproot/users.txt
