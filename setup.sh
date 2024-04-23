#!/bin/sh

# Read the user list and set up the directory structure
cat /config/users.txt | while read line; do
  user=$(echo $line | cut -d: -f1)
  password=$(echo $line | cut -d: -f2)

  # Create the user's home directory under /ftproot/user
  mkdir -p /ftproot/user/$user

  # Set the user's home directory to /ftproot/user/$user
  usermod -d /ftproot/user/$user ftp

  # Set the user's password
  useradd -p $(openssl passwd -1 $password) -s /bin/false -M ftp
done

# Start the vsftpd service
exec /usr/sbin/vsftpd /etc/vsftpd.conf
