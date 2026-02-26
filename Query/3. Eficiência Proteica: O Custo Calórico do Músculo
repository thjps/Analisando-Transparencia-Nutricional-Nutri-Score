WITH produtos_nutritivos AS (
  SELECT
    TRIM(REPLACE(product_name, '&quot;', '')) AS nome_produto,
    COALESCE(TRIM(brands), 'Marca Não Registada') AS marca,
    categories_en AS categoria,
    -- Conversão para Kcal (usando a mesma lógica das queries anteriores)
    ROUND(energy_100g / 4.184, 2) AS kcal_100g,
    proteins_100g AS proteina,
    sugars_100g AS acucares
  FROM dados_portugal.produtos_pt_v2
  WHERE product_name IS NOT NULL 
    AND energy_100g > 0 -- Evitar divisão por zero
    AND proteins_100g IS NOT NULL
)

SELECT 
  CASE 
    WHEN (categoria LIKE '%Yogurts%' OR categoria LIKE '%Quark%') THEN 'Laticínios Proteicos'
    WHEN (categoria LIKE '%Meats%' OR categoria LIKE '%Poultry%') THEN 'Carnes e Aves'
    WHEN (categoria LIKE '%Fishes%' OR categoria LIKE '%Seafood%') THEN 'Peixes e Marisco'
    WHEN (categoria LIKE '%Plant-based meat%' OR categoria LIKE '%Tofu%') THEN 'Substitutos de Carne (Vegetal)'
    WHEN (categoria LIKE '%Legumes%' OR categoria LIKE '%Beans%') THEN 'Leguminosas'
    ELSE 'Outras Categorias'
  END AS nicho_mercado,
  
  COUNT(*) AS total_produtos,
  ROUND(AVG(kcal_100g), 2) AS media_kcal,
  ROUND(AVG(proteina), 2) AS media_proteina,
