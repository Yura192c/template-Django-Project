# Template for Django projects
Шаблон для создания проектов на Django.
## Запуск
Для запуска необходимо установить Python 3.10.x и пакетный менеджер pip, Docker и Docker-compose.

Создание образа:
```
docker build .
```

Запуск контейнера:
```
docker-compose up
```

Запуск контейнера в фоновом режиме:
```
docker-compose up -d
```

Остановка контейнера:
```
docker-compose down
```

Создание миграций:
```
python manage.py make migrations
python manage.py migrate
```

## Авторы
* **Юрий Мирончик** - [Yura192c]()
