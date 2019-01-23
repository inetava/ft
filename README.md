# ft
Python-flask web-service in docker container

Simple one-page web service, shows a page with prime numbers.
The number of prime numbers randomly.

*python 3, flask 1.0, gunicorn*

**build**
`docker build -t ft:latest .`

## Docker
**run as daemon**
`docker run --name ft -d -p 80:5000 --rm inetava/ft:latest`

**run in terminal**
`docker run --name ft -it -p 80:5000 --rm inetava/ft:latest`
