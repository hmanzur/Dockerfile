ARG tag="latest"

FROM python:$tag

# Build arg $settings = (stage, develop, production, local, etc)
ARG settings
ARG migrate
ARG collectstatic

ARG workers=3
ARG module="$app.settings.$settings"
ARG wsgi="$app.wsgi:application"
ARG bind=8000

# Django App name
ARG $app

# Env vars
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1
ENV DJANGO_SETTINGS_MODULE=$module

# Set workdir
WORKDIR /app

# Add files
ADD . .

# Upgrade PIP3
RUN pip3 install --upgrade pip

# Install dependencies
RUN pip3 install -r requirements.txt

# Install web server
RUN pip3 install gunicorn

# Migrate to DB
RUN if [[ -z "$migrate" ]] ;  ; else python manage.py migrate ; fi

# Collect static files
RUN if [[ -z "$migrate" ]] ;  ; else python manage.py collectstatic --no-input ; fi

# Deploy gunicorn sever
CMD ["gunicorn", "--chdir", "/app", "--bind", ":$bind", $wsgi, "--workers", "$workers"]
