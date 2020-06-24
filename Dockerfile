FROM python:3.8

RUN pip install pipenv
# RUN apt-get update && apt-get install -y --no-install-recommends gcc

WORKDIR /usr/src/app

COPY pipfile ./
COPY pipfile.lock ./

RUN pipenv install --deploy

COPY . .

CMD [ "python", "./bot.py" ]