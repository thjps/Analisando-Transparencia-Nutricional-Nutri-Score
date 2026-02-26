WITH produtos_pt_limpos AS (
  -- Camada 1: Limpeza e Normalização Completa
  SELECT
    TRIM(REPLACE(product_name, '&quot;', '')) AS nome_produto,
    COALESCE(TRIM(brands), 'Marca Não Registada') AS marca,
    categories_en,
    ROUND(energy_100g / 4.184, 2) AS kcal_100g,
    saturated_fat_100g AS gordura_sat,        
    sugars_100g AS acucares,
    proteins_100g AS proteina,
    salt_100g AS sal,
    fiber_100g AS fibra
  FROM `dados_portugal.produtos_pt_v2`
  WHERE product_name IS NOT NULL 
    AND product_name NOT IN ('null', '', ' ')
),

base_classificada AS (
  -- Camada 2: Inteligência de Mercado (Segmentação)
  SELECT *,
    CASE 
      WHEN UPPER(marca) LIKE '%PINGO DOCE%' THEN 'MDD - Pingo Doce'
      WHEN UPPER(marca) LIKE '%CONTINENTE%' THEN 'MDD - Continente'
      WHEN UPPER(marca) LIKE '%LIDL%' THEN 'MDD - Lidl'
      WHEN UPPER(marca) LIKE '%MERCADONA%' THEN 'MDD - Mercadona'
      ELSE 'Marcas Líderes/Outras' 
    END AS tipo_marca
  FROM produtos_pt_limpos
  -- Filtramos apenas o "campo de batalha" de snacks e doces
  WHERE (categories_en LIKE '%Snacks%' 
     OR categories_en LIKE '%Desserts%' 
     OR categories_en LIKE '%Biscuits%'
     OR categories_en LIKE '%Confectionery%')
),

base_analitica AS (
  -- Camada 3: Estatística Avançada (Window Functions)
  SELECT *,
    -- Médias de Grupo
    AVG(acucares) OVER(PARTITION BY tipo_marca) AS media_acucar_grupo,
    AVG(proteina) OVER(PARTITION BY tipo_marca) AS media_proteina_grupo,
    AVG(gordura_sat) OVER(PARTITION BY tipo_marca) AS media_gordura_grupo,
    AVG(sal) OVER(PARTITION BY tipo_marca) AS media_sal_grupo,
    
    -- Medianas de Grupo (Percentil 0.5)
    PERCENTILE_CONT(acucares, 0.5) OVER(PARTITION BY tipo_marca) AS mediana_acucar_grupo,
    PERCENTILE_CONT(proteina, 0.5) OVER(PARTITION BY tipo_marca) AS mediana_proteina_grupo,
    PERCENTILE_CONT(gordura_sat, 0.5) OVER(PARTITION BY tipo_marca) AS mediana_gordura_grupo,
    PERCENTILE_CONT(sal, 0.5) OVER(PARTITION BY tipo_marca) AS mediana_sal_grupo
  FROM base_classificada
)

-- Resumo Final para Insight de Negócio
SELECT DISTINCT
  tipo_marca,
  ROUND(media_acucar_grupo, 2) AS avg_acucar,
  ROUND(mediana_acucar_grupo, 2) AS med_acucar,
  ROUND(media_proteina_grupo, 2) AS avg_proteina,
  ROUND(mediana_proteina_grupo, 2) AS med_proteina,
  ROUND(media_gordura_grupo, 2) AS avg_gordura,
  ROUND(mediana_gordura_grupo, 2) AS med_gordura,
  ROUND(media_sal_grupo, 2) AS avg_sal,
  ROUND(mediana_sal_grupo, 2) AS med_sal,
  COUNT(*) OVER(PARTITION BY tipo_marca) AS total_produtos
FROM base_analitica
ORDER BY avg_acucar DESC;
