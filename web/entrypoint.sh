#!/bin/bash

cd /app/

# AttributeError: module 'dotenv' has no attribute 'read_dotenv'
# There is another similar package, python-dotenv, which also contains a module called dotenv. 
# If that package is installed, then you will see: AttributeError: module 'dotenv' has no attribute 'read_dotenv'
# To resolve this, uninstall python-dotenv.
# /opt/venv/bin/pip uninstall python-dotenv

/opt/venv/bin/python manage.py migrate


/opt/venv/bin/python manage.py createsuperuser --email ${DJANGO_SUPERUSER_EMAIL} --username ${DJANGO_SUPERUSER_USERNAME} --noinput || true

# /opt/venv/bin/gunicorn --worker-tmp-dir /dev/shm docker.wsgi:application --bind "0.0.0.0:8050"
exec /opt/venv/bin/gunicorn docker.asgi --bind 0.0.0.0:8050 --chdir=/app -k uvicorn.workers.UvicornWorker