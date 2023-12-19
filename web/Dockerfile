

FROM python:3.8.3-slim

ENV PYTHONUNBUFFERED 1
ENV PYTHONDONTWRITEBYTECODE 1

# copy your local files to your
# docker container
COPY . /app

# update your environment to work
# within the folder you copied your 
# files above into
WORKDIR /app

# /opt: reserved for the installation of add-on application software packages.
# We'll use this to create & store our virtual environment

# Create a virtual environment in /opt
RUN python3 -m venv /opt/venv

# Install requirments to new virtual environment
# requirements.txt must have gunicorn & django
COPY requirements.txt ./requirements.txt
COPY entrypoint.sh ./entrypoint.sh
COPY ./entrypoint.sh /app/web/

RUN /opt/venv/bin/pip install pip --upgrade && \
	/opt/venv/bin/pip install -r requirements.txt && \
	chmod +x entrypoint.sh

# Next Steps
# The following integrations are planned for future updates:

# COPY ./scripts/postgres/start /start-celeryworker
# RUN sed -i 's/\r$//g' /start-celeryworker
# RUN chmod +x /start-celeryworker

# COPY ./scripts/postgres/start /start-celerybeat
# RUN sed -i 's/\r$//g' /start-celerybeat
# RUN chmod +x /start-celerybeat

# COPY ./scripts/postgres/start /start-flower
# RUN sed -i 's/\r$//g' /start-flower
# RUN chmod +x /start-flower

CMD [ "/app/entrypoint.sh" ]
