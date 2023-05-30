# # Указывает Docker использовать официальный образ python 3 с dockerhub в качестве базового образа
# FROM python:3.10.10
# # Устанавливает переменную окружения, которая гарантирует, что вывод из python будет отправлен прямо в терминал без предварительной буферизации
# ENV PYTHONUNBUFFERED 1
# ENV PYTHONDONTWRITEBYTECODE 1

# WORKDIR /manifest-store_v1

# # ENV PIP_ROOT_USER_ACTION=ignore

# RUN pip install --upgrade pip

# # COPY Pipfile Pipfile.lock /manifest-store_v1/
# # RUN pip install pipenv && pipenv install --system

# # COPY requirements.txt /manifest-store_v1/
# ADD . /manifest-store_v1/
# # COPY 
# RUN pip install -r requirements.txt


# COPY . /manifest-store_v1/


# Указывает Docker использовать официальный образ python 3 с dockerhub в качестве базового образа
FROM python:3.10.10
# Устанавливает переменную окружения, которая гарантирует, что вывод из python будет отправлен прямо в терминал без предварительной буферизации
ENV PYTHONUNBUFFERED 1
ENV PYTHONDONTWRITEBYTECODE 1

WORKDIR /manifest-store_v1

ENV PIP_ROOT_USER_ACTION=ignore

RUN pip install --upgrade pip

COPY Pipfile Pipfile.lock /manifest-store_v1/
RUN pip install pipenv && pipenv install --system

# COPY requirements.txt /manifest-store_v1/
# ADD . /manifest-store_v1/
# COPY 
# RUN pip install -r requirements.txt


COPY . /manifest-store_v1/