
# 📂 Documentação do Dataset: Open Food Facts (Portugal)

## Origem dos Dados
Os dados utilizados nesta análise foram extraídos do **Open Food Facts**, uma base de dados aberta, colaborativa e mundial de produtos alimentares. O recorte específico foca-se em produtos comercializados em **Portugal**.

* **Fonte:** [Open Food Facts Data Dump](https://world.openfoodfacts.org/data)
* **Formato Original:** CSV / JSON
* **Ferramenta de Processamento:** Excel, PowerQuery, Google BigQuery (SQL)

---

## Dicionário de Dados (Principais Colunas)

Para as 5 análises do projeto, foram isoladas as seguintes métricas (por 100g de produto):

| Coluna | Descrição | Utilidade na Análise |
| :--- | :--- | :--- |
| `product_name` | Nome comercial do produto | Identificação e limpeza |
| `brands` | Marca do fabricante ou distribuidor | Comparação entre Marcas Próprias (MDD) e Líderes |
| `categories_en` | Categorização do produto (Pão, Iogurtes, etc.) | Segmentação de mercado e nichos |
| `energy_100g` | Valor energético em kJ/kcal | Cálculo de densidade calórica |
| `proteins_100g` | Gramas de proteína | Cálculo de eficiência proteica |
| `sugars_100g` | Gramas de açúcares simples | Identificação de armadilhas de marketing |
| `salt_100g` | Gramas de sal (cloreto de sódio) | Verificação de conformidade de saúde pública |
| `saturated_fat_100g` | Gorduras saturadas | Identificação de ultraprocessados |

---

## Tratamento e Limpeza de Dados (Data Cleaning)

Como este é um dataset colaborativo (crowdsourced), foram aplicadas as seguintes regras de limpeza via SQL para garantir a integridade dos insights:

1. **Remoção de Nulos:** Filtragem de produtos sem valores críticos (proteínas, sal ou açúcares) para evitar médias enviesadas.
2. **Tratamento de Outliers:** * No setor da panificação, foram ignorados valores de sal superiores a **5.0g/100g**, identificados como erros de inserção manual (ex: valores de 36g detetados).
3. **Normalização de Marcas:** Agrupamento de variações de nomes de Marcas Próprias (ex: "Pingo Doce", "pingo-doce", "PD") para uma análise consolidada de MDD.
4. **Conversão de Energia:** Normalização de `kJ` para `kcal` para facilitar a interpretação do consumidor final.

---

## ⚠️ Limitações
* Os dados dependem da atualização dos utilizadores da plataforma Open Food Facts.
* Alguns produtos podem ter informações nutricionais desatualizadas em relação à nova legislação de rotulagem.
* A análise foca-se na densidade nutricional e não em aspetos sensoriais (sabor) ou preço exato de prateleira (que varia por revendendor).

---
