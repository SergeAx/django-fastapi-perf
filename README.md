Django/FastAPI performance comparison
=====================================

Quick and durty hack to check out how the two frameworks are performing in terms
of response latency and throughput using [Locust](https://locust.io/).

Here are two minimal apps with Django and FastAPI, which serve almost identical
plain text response at `/text` endpoint, and a `locustfile.py` to measure the
performance of these endpoints. Both Django and FastAPI apps are tucked into one
Docker container, serving on ports 8001 and 8002 respectively.

Installation
------------

```sh
$ python -m venv ./.venv
$ source ./.venv/bin/activate
$ pip install poetry==1.5.1
$ poetry install
```

Building and runnig the test container
--------------------------------------

```sh
$ docker build --rm -t django-fastapi-perf . && \
  docker run -it --rm -p 8001:8001 -p 8002:8002 django-fastapi-perf
```

Running a test locally
----------------------

```sh
$ locust
```

Open http://localhost:8089/, enter desired number of virtual users and enter
http://localhost:8001/text/ to test Django or http://localhost:8002/text to
test FastAPI.
