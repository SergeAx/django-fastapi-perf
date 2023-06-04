#!/bin/sh

gunicorn --chdir /django -k uvicorn.workers.UvicornWorker -b 0.0.0.0:8001 config.asgi:application &
gunicorn --chdir /fastapi -k uvicorn.workers.UvicornWorker -b 0.0.0.0:8002 main:app
