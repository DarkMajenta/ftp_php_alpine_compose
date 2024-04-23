# ftp_php_alpine_compose


удаление пользователей(del_user.sh):

#!/bin/sh

username=$1
sed -i "/$username/d" /config/users.txt

добавление пользователейadd_user.sh:

#!/bin/sh

echo "username:password" >> /config/users.txt
