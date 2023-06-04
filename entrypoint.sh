#!/bin/sh

gunicorn -w 4 --chdir /django -k uvicorn.workers.UvicornWorker -b 0.0.0.0:8001 config.asgi:application &
gunicorn -w 4 --chdir /fastapi -k uvicorn.workers.UvicornWorker -b 0.0.0.0:8002 main:app
