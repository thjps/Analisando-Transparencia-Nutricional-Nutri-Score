WITH produtos_salgados AS (
  SELECT
    TRIM(REPLACE(product_name, '&quot;', '')) AS nome_produto,
    COALESCE(TRIM(brands), 'Marca Não Registada') AS marca,
    categories_en AS categoria,
    salt_100g AS sal
  FROM `dados_portugal.produtos_pt_v2`
  WHERE product_name IS NOT NULL 
    AND salt_100g IS NOT NULL
    -- LIMPEZA: Removemos valores impossíveis (outliers) para estas categorias
    AND salt_100g < 10.0 
)

SELECT 
  CASE 
    WHEN (categoria LIKE '%Bread%' OR categoria LIKE '%Baguettes%') THEN 'Pão e Padaria (Pronto)'
    WHEN (categoria LIKE '%Chips%' OR categoria LIKE '%Crackers%' OR categoria LIKE '%Salty snacks%') THEN 'Snacks Salgados'
    ELSE 'Outras Categorias'
  END AS categoria_saude,
  
  COUNT(*) AS total_produtos,
  ROUND(AVG(sal), 2) AS media_sal,
  ROUND(MAX(sal), 2) AS max_sal_realista,
  
  -- Percentual recalculado com filtros
  ROUND(
    (SUM(CASE 
      WHEN ((categoria LIKE '%Bread%' OR categoria LIKE '%Baguettes%') AND sal > 1.0) THEN 1 
      WHEN ((categoria LIKE '%Chips%' OR categoria LIKE '%Salty%') AND sal > 1.5) THEN 1
      ELSE 0 END) * 100.0) / COUNT(*), 
    2
  ) AS percentual_acima_do_limite

FROM produtos_salgados

GROUP BY categoria_saude
HAVING categoria_saude != 'Outras Categorias' 
   AND COUNT(*) > 5
ORDER BY media_sal DESC;
