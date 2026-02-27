<div align="center">

# Analisando Transparência Nutricional Para melhor Seleção de Produtos(Nutri-Score).
**Uma análise profunda via SQL (BigQuery) sobre o que realmente comemos.**

![SQL](https://img.shields.io/badge/SQL-Full_Analysis-blue?style=for-the-badge&logo=postgresql)
![BigQuery](https://img.shields.io/badge/Google_BigQuery-Cloud_Data-white?style=for-the-badge&logo=google-cloud)
![Open Food Facts](https://img.shields.io/badge/Dataset-Open_Food_Facts-orange?style=for-the-badge)


![Nutriscore](https://github.com/user-attachments/assets/dca12954-59c8-4a65-8464-212e542daab5)

</div>

---

## Sobre o Projeto
Este projeto nasceu de uma inquietação pessoal: **as nossas escolhas no supermercado são baseadas em factos ou em marketing?** Utilizando a base de dados do *Open Food Facts*, analisei milhares de produtos disponíveis em Portugal para encontrar padrões de qualidade, preço e as "armadilhas" escondidas nos rótulos. O objetivo principal foi substituir a percepção pela evidência, criando métricas próprias de transparência onde o Nutri-Score ainda não chega.

---

## Principais Descobertas (Os 5 Pilares)

### 1. O Paradoxo das Marcas de Distribuidor (MDD) vs. Marcas Líderes
Foi possível explorar o cenário nutricional do produtos em Portugal através desta pesquisa, um dos objetivos centrais foi desmistificar a ideia de que o preço mais baixo das Marcas de Distribuidor (as chamadas "marcas brancas") estaria associado a uma qualidade nutricional inferior. Ao comparar essas marcas com marcas líderes, os dados mostraram uma **equivalência quase total** nos teores de açúcar e proteína. 
> **Insight:** Em Portugal, a marca própria é uma decisão de poupança inteligente sem perda de qualidade básica.

### 2. A "Armadilha" do Açúcar Oculto por Categoria
Identifiquei uma disparidade alarmante:
* **83% das barras de cereais** analisadas são autênticas bombas de açúcar (>15g/100g).
* Nos sumos, o processamento elimina quase toda a fibra (média de **0,45g**), restando apenas o açúcar livre.

### 3. Eficiência Proteica: O Custo Calórico do Músculo
Criei a métrica de **Densidade Proteica** (Proteína por 100kcal):
* **Campeões:** Peixes e Marisco (13g de proteína/100kcal).
* **Oportunidade:** Laticínios proteicos de Marca Própria oferecem a melhor relação custo-benefício para dietas fitness e saúde na terceira idade.

### 4. O Desafio do Sal em Portugal: Cumprimento de Metas
O sal é o inimigo invisível. No setor da panificação, **4 em cada 10 pães** excedem o limite de 1.0g de sal por 100g. 
* A média detetada de **1.1g** prova que o excesso de sódio é um padrão estrutural na padaria de prateleira portuguesa.
* Entretanto, segundo a DGS, os alimentos processados entram em estado de alerta acima dos 1,5g de sal/100g. A nossa análise mostra que o Pão (1.1g) e os Snacks (1.13g) estão dentro deste limite regulamentar. No entanto, como a OMS recomenda um máximo de 5g diários, o consumo de apenas 100g de pão já esgota mais de 20% da cota diária de sal de um adulto, destacando a necessidade de moderação nestas categorias.

### 5. Oportunidade de Mercado: O "Vazio" dos Ultraprocessados Saudáveis
Os dados provam a correlação: quanto mais ingredientes, maior a degradação.
* Enquanto produtos simples têm menos de 2g de açúcar, o **ultraprocessado médio ultrapassa os 20g** (um aumento de 1000%). 
* Identifiquei uma janela enorme para produtos **Clean Label** no mercado nacional.

---

## Tecnologias Utilizadas
* **PowerQuery (Excel):** Processamento e limpeza inicial dos dados.
* **Google BigQuery:** Processamento de grandes volumes de dados (Big Data).
* **SQL (ANSI):** CTEs, Agregações complexas e limpeza de Outliers.
* **Dataset:** Open Food Facts Portugal.

---

## Estrutura do Repositório
* `/queries`: Contém todos os ficheiros `.sql` utilizados nas 5 perguntas da análise.
* `/data`: Documentação sobre a origem dos dados.

---

## Conclusão
Este projeto demonstra que a transparência ainda não é a regra no corredor do supermercado. Através do SQL, foi possível transformar tabelas complexas em decisões de compra muito mais saudáveis e económicas. Além disso, esta análise demonstra que a transparência nutricional no mercado ainda é um terreno em construção. Através do cruzamento de dados via SQL, foi possível extrair três conclusões estratégicas:

1. **Eficiência vs. Preço:** O sucesso das marcas próprias (MDD) prova que é possível democratizar o acesso a produtos com bom perfil nutricional. A paridade técnica entre marcas líderes e marcas de distribuidor abre portas para uma economia consciente sem sacrificar a saúde.
2. **O GAP da Indústria:** Identificámos um vazio crítico para produtos *Clean Label*. O mercado está saturado de ultraprocessados complexos; há uma oportunidade clara para marcas que simplifiquem os seus rótulos, reduzindo o sódio no pão e o açúcar camuflado em snacks "fit".
3. **Literacia de Dados:** Mais do que uma análise técnica, este projeto reforça que o dado bruto é o melhor antídoto contra o marketing agressivo. A capacidade de traduzir gramas e miligramas em insights de saúde pública é o que permite ao consumidor — e às empresas — evoluir para escolhas mais éticas e saudáveis.

---
<div align="center">
Desenvolvido por [Thiago Pordeus] • 2026
</div>
