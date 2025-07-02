FROM python:3.11.7-slim-bullseye

RUN apt-get -yqqq update && apt-get install -yq gcc libsndfile1 curl gpg
RUN pip install --upgrade pip

WORKDIR /srv/reqs
COPY requirements/basic.txt .
RUN pip install -r basic.txt

WORKDIR /srv

EXPOSE 80