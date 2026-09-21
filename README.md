# SQL Portfolio — MySQL

Портфолио SQL-запросов для тестирования базы данных интернет-магазина.

## Что это
Учебная база `shop` с таблицами `users`, `products`, `orders`, `order_items`. На ней отрабатываются SQL-запросы для тестирования данных: выборки, JOIN, агрегация, проверка целостности.

## Инструменты
- MySQL 8.0
- MySQL Workbench

## Что внутри
- `queries/` — SQL-запросы по темам
- `test-cases/` — тест-кейсы для проверки данных
- `screenshots/` — скриншоты результатов

## Схема базы данных
- `users` — пользователи (id, name, email, created_at)
- `products` — товары (id, name, price, stock)
- `orders` — заказы (id, user_id, total, status, created_at)
- `order_items` — позиции заказов (id, order_id, product_id, quantity, price)

## Связи
- **users → orders** — один пользователь может сделать много заказов
- **orders → order_items** — один заказ содержит много позиций
- **products → order_items** — один товар может быть в многих заказах

## Темы запросов
- SELECT, WHERE, ORDER BY
- JOIN (INNER, LEFT)
- GROUP BY, агрегатные функции
- Проверка целостности данных (data validation)

## Результаты
- 15 SQL-запросов
- 10 тест-кейсов

## Запросы

### 01. SELECT — основы

- [SQL-файл](queries/01-select-basics.sql)
- [Скриншоты](screenshots/) — 5 запросов

### 02. JOIN — объединение таблиц

- [SQL-файл](queries/02-joins.sql)
- [Скриншоты](screenshots/) — 4 запроса

### 03. GROUP BY — группировка

- [SQL-файл](queries/03-group-by.sql)
- [Скриншоты](screenshots/) — 3 запроса
