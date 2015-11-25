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

*)
  Message="sorry I don't know that one"
  ;;
esac

echo $Message
