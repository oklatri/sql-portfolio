-- ============================================
-- 03. GROUP BY — группировка и агрегация
-- ============================================

USE shop;

-- 1. Количество заказов у каждого пользователя
SELECT u.name, COUNT(o.id) AS order_count
FROM users u
LEFT JOIN orders o ON u.id = o.user_id
GROUP BY u.id, u.name;

-- 2. Сумма заказов по статусам
SELECT status, COUNT(*) AS count, SUM(total) AS sum_total
FROM orders
GROUP BY status;

-- 3. Средний чек по пользователям
SELECT u.name, AVG(o.total) AS avg_order
FROM users u
JOIN orders o ON u.id = o.user_id
GROUP BY u.id, u.name;
