WITH produtos_pt_limpos AS (
  SELECT
    TRIM(REPLACE(product_name, '&quot;', '')) AS nome_produto,
    COALESCE(TRIM(brands), 'Marca Não Registada') AS marca,
    categories_en AS categoria,
    ROUND(energy_100g / 4.184, 2) AS kcal_100g,
    sugars_100g AS acucares,
    fiber_100g AS fibra
  FROM `dados_portugal.produtos_pt_v2`
  WHERE product_name IS NOT NULL 
    AND product_name NOT IN ('null', '', ' ')
)

SELECT 
  CASE 
    WHEN (categoria LIKE '%Cereals%' OR categoria LIKE '%Mueslis%' OR categoria LIKE '%Granola%') THEN 'Cereais de Pequeno-Almoço'
    WHEN (categoria LIKE '%Yogurts%' OR categoria LIKE '%Fermented milk%') THEN 'Iogurtes e Laticínios'
    WHEN (categoria LIKE '%Fruit juices%' OR categoria LIKE '%Fruit nectars%') THEN 'Sumos de Fruta'
    WHEN (categoria LIKE '%Bars%') THEN 'Barras de Cereais/Energia'
    WHEN (categoria LIKE '%Plant-based beverages%') THEN 'Bebidas Vegetais'
    ELSE 'Outras Categorias'
  END AS categoria_marketing,
  
  COUNT(*) AS total_produtos,
  ROUND(AVG(acucares), 2) AS media_acucar,
  ROUND(AVG(fibra), 2) AS media_fibra,
  
  -- Contador universal de "bombas de açúcar"
  SUM(CASE WHEN acucares > 15 THEN 1 ELSE 0 END) AS qtd_bombas_acucar,
  
  -- Percentual de produtos que excedem o limite
  ROUND(
    (SUM(CASE WHEN acucares > 15 THEN 1 ELSE 0 END) * 100.0) / COUNT(*), 
    2
  ) AS percentual_armadilha

FROM produtos_pt_limpos

GROUP BY categoria_marketing
-- Filtramos apenas pelo nome do grupo já criado
HAVING categoria_marketing != 'Outras Categorias' 
   AND COUNT(*) > 5

ORDER BY media_acucar DESC;
