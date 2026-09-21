-- ============================================
-- 05. Data Validation — проверка целостности
-- ============================================

USE shop;

-- 1. У каждого заказа есть пользователь
SELECT o.id FROM orders o
LEFT JOIN users u ON o.user_id = u.id
WHERE u.id IS NULL;
-- Ожидаем: пусто

-- 2. Нет дублей email
SELECT email, COUNT(*) FROM users
GROUP BY email HAVING COUNT(*) > 1;
-- Ожидаем: пусто

-- 3. Сумма заказа = сумме позиций
SELECT o.id, o.total, SUM(oi.quantity * oi.price) AS items_total
FROM orders o
JOIN order_items oi ON o.id = oi.order_id
GROUP BY o.id, o.total
HAVING o.total != SUM(oi.quantity * oi.price);
-- Ожидаем: пусто

-- 4. Нет отрицательных цен
SELECT * FROM products WHERE price < 0;
-- Ожидаем: пусто

-- 5. Нет заказов с несуществующими товарами
SELECT oi.id FROM order_items oi
LEFT JOIN products p ON oi.product_id = p.id
WHERE p.id IS NULL;
-- Ожидаем: пусто
