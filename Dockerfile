FROM python:3.6-alpine

RUN adduser -D ft
WORKDIR /home/ft

COPY requirements.txt requirements.txt
RUN python -m venv venv
RUN venv/bin/pip install -r requirements.txt
RUN venv/bin/pip install gunicorn

COPY app app
COPY config.py ft.py start.sh ./
RUN chmod +x start.sh

ENV FLASK_APP ft.py

RUN chown -R ft:ft ./
USER ft

EXPOSE 5000
ENTRYPOINT ["./start.sh"]
