# My Django Blueprint

My own small Django project starter template.

A minimal set of useful configs and parts, kept light where possible,
so you can jump straight into prototyping without getting bogged down.

## Is This Right For You?

Do you need a more elaborate setups with

* Django Allauth
* Django Rest Framework (DRF)
* Celery

out of the box? [Cookiecutter-django](https://github.com/pydanny/cookiecutter-django/)
could be a better idea.

Wanna start small with the goal to tinker around a bit, test an idea and maybe add more complexity later?
You might like it.

## Getting Started

* Clone this repository (or copy the folder if you cloned it).
* Edit `rename.sh` and set your PROJECTNAME and APPNAME.
* Run `./rename.sh`, you can delete the `rename.sh` script afterwards.
* Run `pipenv install --dev`.
* Copy env.dist to `.env`, make adjustements to `.env` as needed.
* Use the following commands to: create new migrations, [apply them](https://vsupalov.com/quick-django-refresher-crash-course/#migrations),
create a superuser and run a development server.

```
pipenv shell
python manage.py makemigrations users
python manage.py migrate

# OPTION 1: interactive user creation (I prefer option 2)
#python manage.py createsuperuser
# OPTION 2: all in one command with defaults
echo "from django.contrib.auth import get_user_model; User = get_user_model(); User.objects.create_superuser('root', 'root@example.com', 'rootroot')" | python manage.py shell

python manage.py runserver

# your server run at this point - try accessing the site in your browser
```

* Write a better README than this one, specific to your new project.

## First Steps From Here

* Create your models and [views](https://vsupalov.com/quick-django-refresher-crash-course/#write-views) in your application folder.
* Define urls to those views in your project folder.
* Tinker, create, have fun!

## How this was created

* Roughly followed https://vsupalov.com/quick-django-refresher-crash-course/
* https://github.com/joke2k/django-environ
* http://whitenoise.evans.io/en/stable/ and https://docs.djangoproject.com/en/3.0/howto/static-files/
* https://django-debug-toolbar.readthedocs.io/en/latest/installation.html

## Notes About Possible TODOs

- [x] env.dist and https://github.com/joke2k/django-environ
- [x] Whitenoise and static file handling
- [x] Development goodies from https://vsupalov.com/favorite-django-packages-2019/ (only debug toolbar for now)
- [x] Adjust settings to be DEBUG-sensitive
- [ ] Black and/or pylint and editor configs?
- [ ] docker-compose for backing services and describe how to use those dependencies?
- [ ] Sentry
- [ ] Procfile to deploy to Heroku
- [ ] Testing basics
