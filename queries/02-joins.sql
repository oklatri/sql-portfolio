-- ============================================
-- 02. JOIN — объединение таблиц
-- ============================================

USE shop;

-- 1. INNER JOIN: заказы с именами пользователей
SELECT o.id, u.name, o.total, o.status
FROM orders o
INNER JOIN users u ON o.user_id = u.id;

-- 2. LEFT JOIN: все пользователи, даже без заказов
SELECT u.name, o.id AS order_id, o.total
FROM users u
LEFT JOIN orders o ON u.id = o.user_id;

-- 3. JOIN трёх таблиц: заказы + пользователи + товары
SELECT o.id AS order_id, u.name, p.name AS product, oi.quantity, oi.price
FROM orders o
JOIN users u ON o.user_id = u.id
JOIN order_items oi ON o.id = oi.order_id
JOIN products p ON oi.product_id = p.id;

-- 4. JOIN с фильтром: заказы конкретного пользователя
SELECT o.id, u.name, o.total
FROM orders o
JOIN users u ON o.user_id = u.id
WHERE u.name = 'Ivan Petrov';
