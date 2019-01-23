#!/bin/sh
source venv/bin/activate
exec gunicorn -b :5000 --workers=$GWORKERS --access-logfile - --error-logfile - ft:app