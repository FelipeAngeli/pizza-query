-- Databricks notebook source
SELECT count(*), --linhas nao nulas
      count(1), -- linhas nao nulas
      count(idPedido) --linhas nao nulas da coluna idPedido
FROM silver.pizza_query.pedido

-- COMMAND ----------

SELECT count(*)
FROM silver.pizza_query.pedido
WHERE flKetchup IS NOT NULL

-- COMMAND ----------

SELECT descUF,
       count(*) AS qtPedidos
FROM silver.pizza_query.pedido

WHERE descUF != 'São Paulo' -- menos sp
GROUP BY descUF
HAVING qtPedidos >= 75 --mais q 75 pedidos 

ORDER BY qtPedidos DESC -- todos estados em ordem decrescente 

LIMIT 6 --os 6 primeiros estados 

-- COMMAND ----------

SELECT *
 FROM silver.pizza_query.produto

 WHERE descItem LIKE 'suco%' --todos os sucos %laranja% assim pega todas palavras q tem ou contem laranja

-- COMMAND ----------

SELECT descUF,
        flKetchup,
        count(*)
FROM silver.pizza_query.pedido
GROUP BY descUF, flKetchup
ORDER BY descUF, flKetchup
