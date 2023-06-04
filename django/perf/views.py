from django.http import HttpResponse


async def text(request):
    return HttpResponse("Django: Here's your text content")