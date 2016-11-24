#!/bin/bash
backup_dir=/xxdata/backup/markbuilder
app_name=markbuilder
bakdate=`date  "+%Y%m%d"`
tomcat_dir=/xxdata/workspace/tomcat-ansible

#backup war
if [ -f "$backfile" ];then
   echo $backfile "already exists"
else
   cp   $tomcat_dir/webapps/$app_name.war    $backup_dir/$app_name.war${bakdate}

fi
