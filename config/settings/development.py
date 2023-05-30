from .base import *  # подгружаем настройки по умолчанию

DEBUG = True
ALLOWED_HOSTS = ['*']
INSTALLED_APPS = INSTALLED_APPS + ['debug_toolbar']
MIDDLEWARE = ['debug_toolbar.middleware.DebugToolbarMiddleware'] + MIDDLEWARE

print('development.py')
