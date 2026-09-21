-- ============================================
-- 04. Агрегатные функции — SUM, AVG, MIN, MAX, COUNT
-- ============================================

USE shop;

-- 1. Общая выручка (SUM)
SELECT SUM(total) AS total_revenue FROM orders;

-- 2. Средний чек (AVG)
SELECT AVG(total) AS avg_order FROM orders;

-- 3. Минимум, максимум, количество (MIN, MAX, COUNT)
SELECT 
    MIN(total) AS min_order,
    MAX(total) AS max_order,
    COUNT(*) AS orders_count
FROM orders;
