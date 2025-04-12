from django.contrib import admin
from django.urls import path, include
from django.views.generic.base import RedirectView
from django.conf.urls.static import static
from django.conf import settings
from myapp import views  # Импорт views из приложения myapp

urlpatterns = [
    # Админка
    path('admin/', admin.site.urls),
    
    # Главная страница и API
    path('index/', views.index_view, name='index'),
    path('api/attractions/', views.attractions_api, name='api-attractions'),
    
    # Авторизация и регистрация
    path('auth/login/', views.login_view, name='login'),
    path('auth/registration/', views.registration_view, name='registration'),
    path('auth/', include('django.contrib.auth.urls')),  # Стандартные auth URLs
    
    # Профиль пользователя
    path('profile/', views.profile, name='profile'),  # Основной профиль
    path('profile/user/', views.user_view, name='user-profile'),  # Детали пользователя
    path('profile/explored_places/', views.exploared_places_view, name='explored-places'),  # Посещенные места
    path('upload-avatar/', views.upload_avatar, name='upload_avatar'),  # Загрузка аватара
    
    # Настройки
    path('settings/', views.settings_view, name='settings'),
    
    # Интернационализация
    path('i18n/', include('django.conf.urls.i18n')),  # Стандартные URL для перевода
    
    #main
    path('main/', views.main_view, name='main'),
    #Регионы
    path('region/<str:region_id>/', views.region_detail, name='region_detail'),
    path('cities/Gelendzick', views.Gelendzick_view, name='Gelendzick'),
    path('cities/Krasnodar', views.Krasnodar_view, name='Krasnodar'),
    path('cities/Sochi', views.Sochi_view, name='Sochi'),
    path('cities/Novorossyisk', views.Novoros_view, name='Novoros'),
    path('cities/Temruk', views.Temruk_view, name='Temruk'),

    # Перенаправления
    path('', RedirectView.as_view(url='main'), name='home'),  # Главная страница 
    path('login/', RedirectView.as_view(url='/auth/login/')),  # Совместимость со старыми ссылками
    path('places/', RedirectView.as_view(url='/profile/explored_places/')),  # Сокращенный URL для посещенных мест
    path('Gelendzick', RedirectView.as_view(url='/cities/Gelendzick.html')), #Страница региона Геленджик
    path('Krasnodar', RedirectView.as_view(url='/cities/Krasnodar.html')), #Страница региона Краснодар
    path('Sochi', RedirectView.as_view(url='/cities/Sochi.html')), #Страница региона Сочи
    path('Novoros', RedirectView.as_view(url='/cities/Novorossyisk.html')), #Страница региона Новороссийск
    path('Temruk', RedirectView.as_view(url='/cities/Temruk.html')), #Страница региона Темрюк
] + static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)  # Обслуживание медиа-файлов в разработке