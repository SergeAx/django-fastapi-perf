from fastapi import FastAPI
from fastapi.responses import PlainTextResponse

app = FastAPI()


@app.get("/text/",  response_class=PlainTextResponse)
async def text():
    return "FastAPI: Here's your text content"
