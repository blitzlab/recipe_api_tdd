FROM python:3.10.3-alpine3.15
MAINTAINER Owolabi Badmus

ENV PYTHONUNBUFFERED 1
COPY ./requirements.txt /requirements.txt
RUN pip install -r requirements.txt
RUN mkdir /app

WORKDIR /app
COPY ./app /app

RUN adduser -D badmus_tdd_dj
USER badmus_tdd_dj
