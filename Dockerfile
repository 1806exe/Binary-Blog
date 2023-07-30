FROM python:3.8

ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

WORKDIR /app

ADD ./requirements.txt /app/requirements.txt

RUN pip install --upgrade pip

# RUN --mount=type=cache,target=/.cache/pip \
#     pip install -r requirements.txt

ADD . /app
