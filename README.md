# My Django Blueprint

Starting with a blank project, let's see if I can setup a nice Django environment which does not feel too heavy.

## Steps

* Roughly follow https://vsupalov.com/quick-django-refresher-crash-course/

## Next Steps

* Rename the PROJECTNAME and rename the APPNAME (see section below)
* Afterwards, make migrations, apply them, create a superuser and run a development server as described here https://vsupalov.com/quick-django-refresher-crash-course/#migrations

## Customize the Project Naming

Run the following in a terminal

```
export NEW_PROJECT_NAME=myproject
export NEW_APP_NAME=myapp
egrep -lRZ 'PROJECTNAME' . | xargs -0 -l sed -i -e "s/foo/$NEW_PROJECT_NAME/g"
egrep -lRZ 'APPNAME' . | xargs -0 -l sed -i -e "s/foo/$NEW_APP_NAME/g"
mv PROJECTNAME $NEW_PROJECT_NAME
mv APPNAME $NEW_APP_NAME
```
