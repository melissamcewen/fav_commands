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

#Server
"create a symlink")
  Message="ln -s dirtopointtoto symlinkname"
  ;;

"restart Apache")
  Message="sudo apachectl restart"
  ;;

"set GID")
  Message="chmod g+s"
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



*)
  Message="sorry I don't know that one"
  ;;
esac

echo $Message
