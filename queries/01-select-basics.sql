-- ============================================
-- 01. SELECT — основы
-- ============================================

USE shop;

-- 1. Все пользователи
SELECT * FROM users;

-- 2. Только имя и email
SELECT name, email FROM users;

-- 3. Пользователи, созданные после 1 января 2026
SELECT * FROM users WHERE created_at >= '2026-01-01';

-- 4. Сортировка по имени (A → Z)
SELECT * FROM users ORDER BY name ASC;

-- 5. Первые 2 пользователя
SELECT * FROM users LIMIT 2;
