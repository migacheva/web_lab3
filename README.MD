# Лабораторная работа №3 #
## По дисциплине "Технологии разработки веб приложений", семестр 2 ##
### Задание ###
1. Создать новое приложение с флагом --api
1. В качестве шаблонизатора использовать [fast_jsonapi](https://github.com/Netflix/fast_jsonapi)
1. Реализовать функционал, аналогичный Node-приложению из первой лабораторной работы
1. Адаптировать React-приложение для работы с новым сервером


### Настройка ###
1. [config](client/src/js/api/config.json.sample) содержит пример настройки базовога адреса сервера, к которому обращается клиентская часть

### Установка и запуск ###
1. Выполнить команду `npm install` в директориях **client**, **server**.
1. Для запуска
    * серверной части выполнить в директории **server**:
    ```
    bundler install
    rails s
    ```
    * клиентской части выполнить `npm start` в директории **client**

