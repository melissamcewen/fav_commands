#!/bin/bash
case "$1" in
#bash
"reload bash")
  Message="source ~/.bash_profile"
  ;;

"create a bash alias")
  Message="alias project='cd /dir/project'"
  ;;

#Drush
"download Drupal")
  Message="drush dl drupal --drupal-project-rename=whatever"
  ;;

"install Drupal")
  Message="drush site-install standard --db-url='mysql://root:vagrant@localhost:3306/DBNAME'"
  ;;


#File Management

"rsync remote folder")
  Message="rsync -r username@server.com:remotedir/  localdir/ "
  ;;

"rsync options")
  Message="verbose: -v, compress: -z, recursive: -r, -P: show progress "
  ;;

"scp")
  Message="scp username@server.com:/FILEPATH/REMOTEFILE.WHATEVER LOCALFILE.WHATEVER"
  ;;

"tar")
  Message="tar -cvzf name.tgz subdir"
  ;;

"untar")
  Message="into directory: tar -C /myfolder -xvf yourfile.tar"
  ;;

#GIT
"git file history")
  Message="git log -- <filename> "
  ;;

"git show remote origin")
  Message="git remote show origin"
  ;;

#MYSQL

"mysql create database")
  Message="CREATE DATABASE menagerie;"
  ;;

"mysql create user")
  Message="CREATE USER 'NAME'@'localhost' IDENTIFIED BY 'PASSWORD';"
  ;;

"mysqldump")
  Message="mysqldump -u username -p DBNAME > filename.sql "
  ;;

"mysql grant all")
  Message="GRANT ALL PRIVILEGES on database.* to 'username'@'localhost';"
  ;;

"mysql grant read only")
  Message="GRANT SELECT, SHOW VIEW ON database.* TO 'username'@'localhost';"
  ;;

"mysql import")
  Message="mysql -u admin -p DBNAME < DBFILETOIMPORT.sql"
  ;;

"mysql list databases")
  Message="show databases;"
  ;;

"mysql list users")
  Message="SELECT User FROM mysql.user;"
  ;;

"mysql list user permissions")
  Message="SHOW GRANTS FOR 'user'@'localhost';"
  ;;

"mysql show running processes")
  Message="mysqladmin proc -u username -p"
  ;;


#Ruby Tools
"Ruby version")
  Message="ruby -v"
  ;;

"RVM list")
  Message="rvm list"
  ;;

"RVM switch Ruby")
  Message="rvm use 1.1.1"
  ;;

#Server
"add user to secondary group")
  Message="usermod -a -G GROUPNAME USERNAME"
  ;;

"change primary group")
  Message="usermod -g GROUPNAME USERNAME"
  ;;

"create a group")
  Message="groupadd GROUPNAME"
  ;;

"create a symlink")
  Message="ln -s directory_to_point_to symlinkname"
  ;;

"list groups")
  Message="groups OR getent groups"
  ;;


"list group members")
  Message="grep 'group-name-here' /etc/group"
  ;;

"restart apache")
  Message="sudo apachectl restart"
  ;;

"set GID")
  Message="chmod g+s"
  ;;


*)
  Message="sorry I don't know that one"
  ;;
esac

echo $Message
