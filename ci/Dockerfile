FROM python:3.11.7-slim-bullseye

RUN apt-get -yqqq update && apt-get install -yq gcc libsndfile1 curl gpg
RUN pip install --upgrade pip