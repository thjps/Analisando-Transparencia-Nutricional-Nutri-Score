WITH oportunidade_mercado AS (
  SELECT
    product_name,
    brands,
    categories_en AS categoria,
    saturated_fat_100g AS gordura_sat,
    sugars_100g AS acucares
  FROM `dados_portugal.produtos_pt_v2`
  WHERE saturated_fat_100g IS NOT NULL 
    AND sugars_100g IS NOT NULL
)

SELECT 
  CASE 
    WHEN (gordura_sat < 1.5 AND acucares < 5) THEN '1. Potencial Clean Label (Simples/Natural)'
    WHEN (gordura_sat > 5 OR acucares > 15) THEN '3. Ultraprocessado Provável (Complexo)'
    ELSE '2. Processamento Intermédio'
  END AS perfil_produto,
  
  COUNT(*) AS total_produtos,
  ROUND(AVG(gordura_sat), 2) AS media_gordura_sat,
  ROUND(AVG(acucares), 2) AS media_acucares

FROM oportunidade_mercado
GROUP BY perfil_produto
ORDER BY perfil_produto ASC;
