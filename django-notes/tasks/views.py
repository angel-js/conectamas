from django.shortcuts import render, redirect, get_object_or_404
from django.contrib.auth.forms import UserCreationForm, AuthenticationForm
from django.contrib.auth import login, logout, authenticate
from django.contrib.auth.models import User
from django.db import IntegrityError
from django.utils import timezone
from django.contrib.auth.decorators import login_required
from main.views import main_funcionario
from django.contrib import auth
from main.models import Funcionario

# Create your views here.


def signup(request):
    if request.method == 'GET':
        return render(request, 'sesion/signup.html', {"form": UserCreationForm})
    else:

        if request.POST["password1"] == request.POST["password2"]:
            try:
                user = User.objects.create_user(
                    request.POST["username"], password=request.POST["password1"])
                user.save()
                login(request, user)
                return redirect('create_usuario')
            except IntegrityError:
                return render(request, 'sesion/signup.html', {"form": UserCreationForm, "error": "Username already exists."})

        return render(request, 'sesion/signup.html', {"form": UserCreationForm, "error": "Passwords did not match."})


def home(request):
    return render(request, 'sesion/home.html')


@login_required
def signout(request):
    logout(request)
    return redirect('home')


def signin(request):
    if request.method == 'GET':
        return render(request, 'sesion/signin.html', {"form": AuthenticationForm})
    else:
        user = authenticate(
            request, username=request.POST['username'], password=request.POST['password'])
        if user is None:
            return render(request, 'sesion/signin.html', {"form": AuthenticationForm, "error": "Username or password is incorrect."})
        elif user.is_staff:
            login(request, user)
            return redirect('main_funcionario')
        else:
            login(request, user)
            return redirect('home')
