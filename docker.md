Докер для дата сайнс
    Взял по ссылке из гугла
    docker run -p 8888:8888 jupyter/scipy-notebook:33add21fab64

Войти в докер
    docker exec -it 4da42dd1a734 bash

Копировать в контейнер
    docker cp foo.txt container_id:/foo.txt

    Переделка для базы данных на сорта вина
    
    docker cp wine.data 4da42dd1a734:/home/jovyan/wine.data

Создаем volume для синхронизации с папкой на компе

    docker run -t -i -v /home/nybod/Desktop/docker:/home/jovyan/ -p 8888:8888 jupyter/scipy-notebook:33add21fab64

Запускаемся с dockerfile  который скачивает зависимости
    Для этого сначала делает build

    docker build .

    потос запускаем тот контейнере который собрали на build`е

    docker run -t -i -v /home/nybod/Desktop/docker:/home/jovyan/ -p 8888:8888 8460df5a4927

Менем хэш при билде на приятный тэг

    docker build -t my_notebook .
    
    И тупо вставляем вместо хэша (который каждый разменяется на тэг)

    docker run -t -i -v /home/nybod/Desktop/docker:/home/jovyan/ -p 8888:8888 my_notebook

Построили dockercompose

    docker-compose up

Что бы посмотреть ip конейнера

    docker inspect 5a6d6b59894a #ну понятно что хэш это от контейнера, но лучне использовать имя алиаса чем айпи потому что айпи постоянно меняется