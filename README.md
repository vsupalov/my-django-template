# My Django Blueprint

Starting with a blank project, let's see if I can setup a nice Django environment which does not feel too heavy.

## Steps

* Roughly follow https://vsupalov.com/quick-django-refresher-crash-course/

## Next Steps

* Rename the PROJECTNAME and rename the APPNAME (see section below)
* Run `pipenv install`
* Copy env.dist to `.env`, make adjustements as needed
* Afterwards, make migrations, apply them, create a superuser and run a development server as described here https://vsupalov.com/quick-django-refresher-crash-course/#migrations

```
pipenv shell
python manage.py makemigrations users
python manage.py migrate
#python manage.py createsuperuser # or instead
echo "from django.contrib.auth import get_user_model; User = get_user_model(); User.objects.create_superuser('root', 'root@example.com', 'rootroot')" | python manage.py shell
python manage.py runserver
```

## Customize the Project Naming

Run rename.sh in a terminal, afterwards you can remove that file.

## TODOs

[x] env.dist and https://github.com/joke2k/django-environ
[ ] Whitenoise and static file handling
[ ] Black and/or pylint
[ ] Editor configs?
[ ] Adjust settings to be DEBUG-sensitive
[ ] Development goodies from https://vsupalov.com/favorite-django-packages-2019/
[ ] docker-compose for backing services
[ ] describe how to use those dependencie
[ ] Procfile to deploy to Heroku
