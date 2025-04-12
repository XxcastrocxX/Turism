from django.shortcuts import render, redirect
from django.http import JsonResponse
from django.contrib.auth.forms import UserCreationForm, AuthenticationForm
from django.contrib.auth import authenticate, login
from django.contrib.auth.decorators import login_required
from .models import UserProfile
import json
from django.http import Http404
from django.conf import settings


def index_view(request):
    """Главная страница с достопримечательностями"""
    attractions = [
        {"name": "Краснодар", "coordinates": [45.0333, 38.9833]},
        {"name": "Сочи", "coordinates": [43.5855, 39.7231]},
    ]
    return render(request, 'index.html', {
        'attractions_json': json.dumps(attractions)
    })


def attractions_api(request):
    """API для получения списка достопримечательностей"""
    attractions = [
        {"name": "Краснодар", "coordinates": [45.0355, 38.9753]},
        {"name": "Сочи", "coordinates": [43.5855, 39.7231]},
    ]
    return JsonResponse(attractions, safe=False)


def login_view(request):
    """Авторизация пользователя"""
    if request.method == 'POST':
        email = request.POST.get('email')
        password = request.POST.get('password')
        
        user = authenticate(request, username=email, password=password)
        
        if user is not None:
            login(request, user)
            return redirect('index')
        return render(
            request, 
            'avtorization/login.html', 
            {
                'form': AuthenticationForm(), 
                'error': 'Неверный email или пароль'
            }
        )
    return render(request, 'avtorization/login.html', {'form': AuthenticationForm()})


def registration_view(request):
    """Регистрация нового пользователя"""
    if request.method == 'POST':
        form = UserCreationForm(request.POST)
        if form.is_valid():
            form.save()
            return redirect('login')
    else:
        form = UserCreationForm()
    return render(request, 'avtorization/registration.html', {'form': form})


def user_view(request):
    """Страница профиля пользователя"""
    return render(request, 'profiles/User.html')


def exploared_places_view(request):
    """Просмотр посещенных мест"""
    return render(request, 'profiles/Explored_places.html')


def settings_view(request):
    """Настройки пользователя"""
    return render(request, 'settings/settings.html')


@login_required
def upload_avatar(request):
    """Загрузка аватара пользователя"""
    if request.method == 'POST' and request.FILES.get('avatar'):
        try:
            profile = UserProfile.objects.get_or_create(user=request.user)[0]
            if profile.avatar:
                profile.avatar.delete()
            profile.avatar = request.FILES['avatar']
            profile.save()
            return JsonResponse({
                'status': 'success', 
                'avatar_url': profile.avatar.url
            })
        except Exception as e:
            return JsonResponse({
                'status': 'error', 
                'message': str(e)
            }, status=500)
    return JsonResponse({'status': 'error'}, status=400)


@login_required
def profile(request):
    """Профиль пользователя с данными"""
    profile, created = UserProfile.objects.get_or_create(user=request.user)
    return render(request, 'profile.html', {
        'user': request.user,
        'profile': profile
    })

#Регионы
REGION_TEMPLATES={
    'region-20' : 'cities/Krasnodar.html',
    'region-39' : 'cities/Sochi.html',
    'region-41' : 'cities/Gelendzick.html',
    'region-44' : 'cities/Novorossyisk.html',
    'region-46' : 'cities/Temruk.html',
}
def region_detail(request, region_id):
    template_name = REGION_TEMPLATES.get(region_id)
    if not template_name:
        raise Http404("Регион не найден")
    return render(request, template_name, {
        'region_id': region_id,
    })
    
def Gelendzick_view(request):
    return render(request, 'cities/Gelendzick.html')

def Krasnodar_view(request):
    return render(request, 'cities/Krasnodar.html')

def Sochi_view(request):
    return render(request, 'cities/Sochi.html')

def Novoros_view(request):
    return render(request, 'cities/Novorossyisk.html')

def Temruk_view(request):
    return render(request, 'cities/Temruk.html')

#Функция вызова main
def main_view(request):
    return render(request, 'main.html')