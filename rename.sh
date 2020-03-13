#! /bin/bash

# Adjust those values
export NEW_PROJECT_NAME=myproject
export NEW_APP_NAME=myapp

egrep --exclude 'README.md' -lRZ 'PROJECTNAME' . | xargs -0 -l sed -i -e "s/PROJECTNAME/$NEW_PROJECT_NAME/g"
egrep --exclude 'README.md' -lRZ 'APPNAME' . | xargs -0 -l sed -i -e "s/APPNAME/$NEW_APP_NAME/g"
mv PROJECTNAME $NEW_PROJECT_NAME
mv APPNAME $NEW_APP_NAME
