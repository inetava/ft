# ft
Python-flask web-service in docker container

Simple one-page web service, shows a page with prime numbers.
The number of prime numbers randomly.

*python 3, flask 1.0*

**build**
`docker build -t ft:latest .`

**run**
`docker run --name ft -d -p 80:5000 --rm ft:latest`
