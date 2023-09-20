[![Gitpod](https://img.shields.io/badge/Open%20in%20Gitpod-908a85?logo=gitpod)](https://gitpod.io/#https://github.com/neshkeev/spark-exercises/tree/advanced-05.joins)
[![Binder](https://img.shields.io/badge/%D0%9E%D1%82%D0%BA%D1%80%D1%8B%D1%82%D1%8C%20%D0%B2%20Binder-908a85?logo=jupyter)](https://mybinder.org/v2/gh/neshkeev/spark-exercises/advanced-05.joins)

# Задания из курса по Apache Spark Advanced

## Запуск

Запуск возможен тремя способами:

1. виртуальная машина в облаке Gitpod,
1. Binder,
1. локально через docker.

### Запуск через Gitpod

Самый простой способ запуска - это Gitpod, т.к. ничего не нужно будет устанавливать локально: виртуальная машина поднимется в облаке и работа будет осуществляться через Web Browser.
Для начала работы необходимо нажать на одну из кнопок ниже (одна кнопка == одна тема):

- [![Gitpod](https://img.shields.io/badge/master-908a85?logo=gitpod)](https://gitpod.io/#https://github.com/neshkeev/spark-exercises) - базовая настройка
- [![Gitpod](https://img.shields.io/badge/advanced-908a85?logo=gitpod)](https://gitpod.io/#https://github.com/neshkeev/spark-exercises/tree/advanced) - стартовая точка для упражнений из курса по Spark Advanced
- [![Gitpod](https://img.shields.io/badge/advanced--01.spark--ui-908a85?logo=gitpod)](https://gitpod.io/#https://github.com/neshkeev/spark-exercises/tree/advanced-01.spark-ui) - работа со Spark UI
- [![Gitpod](https://img.shields.io/badge/advanced--02.catalyst--optimizer-908a85?logo=gitpod)](https://gitpod.io/#https://github.com/neshkeev/spark-exercises/tree/advanced-02.catalyst-optimizer) - описание работы оптимизатора Catalyst и принципов автоматической оптимизации запросов
- [![Gitpod](https://img.shields.io/badge/advanced--03.cache-908a85?logo=gitpod)](https://gitpod.io/#https://github.com/neshkeev/spark-exercises/tree/advanced-03.cache) - особенности работы с кешем
- [![Gitpod](https://img.shields.io/badge/advanced--04.spills-908a85?logo=gitpod)](https://gitpod.io/#https://github.com/neshkeev/spark-exercises/tree/advanced-04.spills) - особенности работы со спилами (spills)
- [![Gitpod](https://img.shields.io/badge/advanced--05.joins-908a85?logo=gitpod)](https://gitpod.io/#https://github.com/neshkeev/spark-exercises/tree/advanced-05.joins) - тактики оптимизации join
- [![Gitpod](https://img.shields.io/badge/advanced--06.bucketing-908a85?logo=gitpod)](https://gitpod.io/#https://github.com/neshkeev/spark-exercises/tree/advanced-06.bucketing) - особенности работы с бакетами

### Запуск через Binder

Binder - это бесплатный сервис для запуска Jupyter Notebook. Для старта необходимо нажать на одну из кнопок ниже (одна кнопка == одна тема):

- [![Binder](https://img.shields.io/badge/Binder--advanced-908a85?logo=jupyter)](https://mybinder.org/v2/gh/neshkeev/spark-exercises/master) - базовая настройка
- [![Binder](https://img.shields.io/badge/Binder--advanced-908a85?logo=jupyter)](https://mybinder.org/v2/gh/neshkeev/spark-exercises/advanced) - стартовая точка для упражнений из курса по Spark Advanced
- [![Binder](https://img.shields.io/badge/Binder--advanced--01.spark--ui-908a85?logo=jupyter)](https://mybinder.org/v2/gh/neshkeev/spark-exercises/advanced-01.spark-ui) - работа со Spark UI
- [![Binder](https://img.shields.io/badge/Binder--advanced--02.catalyst-optimizer-908a85?logo=jupyter)](https://mybinder.org/v2/gh/neshkeev/spark-exercises/advanced-02.catalyst-optimizer) - описание работы оптимизатора Catalyst и принципов автоматической оптимизации запросов
- [![Binder](https://img.shields.io/badge/Binder--advanced--03.cache-908a85?logo=jupyter)](https://mybinder.org/v2/gh/neshkeev/spark-exercises/advanced-03.cache) - особенности работы с кешем
- [![Binder](https://img.shields.io/badge/Binder--advanced--04.spills-908a85?logo=jupyter)](https://mybinder.org/v2/gh/neshkeev/spark-exercises/advanced-04.spills) - особенности работы со спилами (spills)
- [![Binder](https://img.shields.io/badge/Binder--advanced--05.joins-908a85?logo=jupyter)](https://mybinder.org/v2/gh/neshkeev/spark-exercises/advanced-05.joins) - тактики оптимизации join
- [![Binder](https://img.shields.io/badge/Binder--advanced--06.bucketing-908a85?logo=jupyter)](https://mybinder.org/v2/gh/neshkeev/spark-exercises/advanced-06.bucketing) - особенности работы с бакетами

### Локальный запуск через Docker

0. (Только для Windows) Установить [WSL 2](https://learn.microsoft.com/en-us/windows/wsl/install)
1. (Если еще не установлено) Установить Docker Desktop:
  - [Для Windows](https://docs.docker.com/desktop/install/windows-install)
  - [Для Mac](https://docs.docker.com/desktop/install/mac-install/)
  - [Для Linux](https://docs.docker.com/desktop/install/linux-install/)
1. Установить [Git](https://git-scm.com/), темринал Git Bash также установится
1. Открыть Git Bash
1. Настроиь Git (если еще не настроен):
  - `git config --global user.name 'ВАШЕ ИМЯ'`
  - `git config --global user.email 'ваш@email'
1. Склонировать проект: `git clone https://github.com/neshkeev/spark-exercises.git`
1. Перейти в директорию с проектом: `cd spark-exercises`
1. Переключиться на ветку `git checkout advanced`
1. Запустить сервис: `bash ./start`
1. Открыть ноутбук: [`http://localhost:8888/lab`](http://localhost:8888/lab)

## Работа с проектом

Репозиторий организован таким образом, что одна тема находится в одной ветки, поэтому необходимо переключаться между ветками. Для упрощения работы в репозитории есть несколько скриптов:

1. `start` запуск docker сервиса,
1. `next` переход к следующей ветке/теме. В качестве параметра может принимать имя ветки, на которую необходимо переключиться

Таким образом, пользователю необходимо выполнять два шага:

```bash
bash ./next # переключиться на ветку
bash ./start # запустить сервисы в ветке
```
Нет необходимости заботиться о том, что сервис может быть запущен, или в репозитории есть несколько измененных файлов: скрипты корректно остановят запущенные сервисы и зафиксируют изменения в виде коммита в ветке. Так пользователь может вернуться на ветку и продолжить работу при необходимости.
