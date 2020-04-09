FROM python:3.8.1

COPY . /local
WORKDIR /local

RUN pip install -r requirements.txt

CMD ./gdyndns.py