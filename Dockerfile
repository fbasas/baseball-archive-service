FROM python:3.6

RUN mkdir -p /src
WORKDIR /src

COPY . /src
RUN pip install -r requirements.txt

EXPOSE 8000
ENTRYPOINT ["entrypoints/gunicorn.sh"]
