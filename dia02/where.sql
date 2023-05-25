-- Databricks notebook source
SELECT *
FROM silver.pizza_query.pedido
WHERE flKetchup = FALSE
AND descUF = 'Santa Catarina'
