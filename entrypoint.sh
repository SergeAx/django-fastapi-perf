#!/bin/sh

gunicorn --chdir /django -b 0.0.0.0:8001 config.wsgi:application &
gunicorn --chdir /fastapi -k uvicorn.workers.UvicornWorker -b 0.0.0.0:8002 main:app
