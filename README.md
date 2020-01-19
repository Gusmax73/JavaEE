Проект представляет собой веб-магазин. Основан на шаблоне, который найден в интернете (html, js, jquery, css). В корне проекта расположен бекап базы данных, в которой имеются данные о продуктах, ноутбуках и несколько тестовых аккаунтов.
Имя файла бекапа: "Web-store.sql".

Данные тестового аккаунта:
- Логин: test
- Email: test@test.com
- Пароль: test

Уже сейчас реализованы функции:
- Регистрация пользователя
- Проверка на повтор логина или почты
- Авторизация пользователя
- Проверка, авторизован ли пользователь
- Сохранение авторизации в сессию
- Возможность менять логин, почту или пароль
- Возможность аннулировать сессию (т.е. выйти)
- Подгрузка данных о товарах из БД

Используемые технологии:
- страницы: JSP, JSTL
- доступ к данным: Hibernate, JPA
- веб-интерфейс: jQuery, Bootstrap
- база данных: PostgreSQL
- контейнер сервлетов: Apache Tomcat

В планах:
- Реализовать корзину пользователя
- Подтверждение покупки
- Страница с описанием товара
- Поиск по товарам
- Страница с обратной связью
- Добавление ассортимента

