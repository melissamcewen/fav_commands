# fav_commands
My favorite commands
## Bash 

### reload bash profile after editing it
```
source ~/.bash_profile
```
### create a bash alias
```
alias project="cd /dir/project"
```

## Drush

### download new instance of drupal named whatever
```
drush dl drupal --drupal-project-rename=whatever
```

### install new drupal site on Vagrant
```
drush site-install standard --db-url='mysql://root:vagrant@localhost:3306/DBNAME'
```
