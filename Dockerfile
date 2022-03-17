FROM python:3.9-buster

WORKDIR /code

ADD . /code

RUN pip install pipenv

COPY Pipfile ./
COPY Pipfile.lock ./

RUN pipenv install --system

CMD ["python", "app.py"]
