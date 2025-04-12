from django.db import models
from django.contrib.auth.models import User

class UserProfile(models.Model):
    user = models.OneToOneField(User, on_delete=models.CASCADE)
    avatar = models.ImageField(upload_to='avatars/', blank=True, null=True)
    
    class Meta:
        app_label = 'myapp'  # Явно указываем имя приложения
    
    def __str__(self):
        return f"{self.user.username}'s profile"