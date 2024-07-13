from django.http import HttpResponse

def index(request):
    return HttpResponse("Welcome, This is index page of CICD Project!")