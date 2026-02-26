<div align="center">

# 🥗 Transparência Nutricional: Descodificando o Mercado em Portugal
**Uma análise profunda via SQL (BigQuery) sobre o que realmente comemos.**

![SQL](https://img.shields.io/badge/SQL-Full_Analysis-blue?style=for-the-badge&logo=postgresql)
![BigQuery](https://img.shields.io/badge/Google_BigQuery-Cloud_Data-white?style=for-the-badge&logo=google-cloud)
![Open Food Facts](https://img.shields.io/badge/Dataset-Open_Food_Facts-orange?style=for-the-badge)

<img src="https://images.unsplash.com/photo-1498837167922-ddd27525d352?ixlib=rb-4.0.3&auto=format&fit=crop&w=800&q=80" width="700" alt="Nutritional Analysis Banner">

</div>

---

## 📌 Sobre o Projeto
Este projeto nasceu de uma inquietação pessoal: **as nossas escolhas no supermercado são baseadas em factos ou em marketing?** Utilizando a base de dados do *Open Food Facts*, analisei milhares de produtos disponíveis em Portugal para encontrar padrões de qualidade, preço e as "armadilhas" escondidas nos rótulos. O objetivo principal foi substituir a percepção pela evidência, criando métricas próprias de transparência onde o Nutri-Score ainda não chega.

---

## 🔍 Principais Descobertas (Os 5 Pilares)

### 1. 🏷️ O Mito das Marcas Próprias (MDD)
Derrubei o preconceito de que o "mais barato" é nutricionalmente inferior. Ao comparar Marcas de Distribuidor (Pingo Doce, Continente, Lidl, etc.) com marcas líderes, os dados mostraram uma **equivalência quase total** nos teores de açúcar e proteína. 
> **Insight:** Em Portugal, a marca própria é uma decisão de poupança inteligente sem perda de qualidade básica.

### 2. 🍭 A "Bomba" Oculta: Snacks e Marketing
Identifiquei uma disparidade alarmante:
* **83% das barras de cereais** analisadas são autênticas bombas de açúcar (>15g/100g).
* Nos sumos, o processamento elimina quase toda a fibra (média de **0,45g**), restando apenas o açúcar livre.

### 3. 💪 Eficiência Proteica: Onde está o "Músculo"?
Criei a métrica de **Densidade Proteica** (Proteína por 100kcal):
* **Campeões:** Peixes e Marisco (13g de proteína/100kcal).
* **Oportunidade:** Laticínios proteicos de Marca Própria oferecem a melhor relação custo-benefício para dietas fitness e saúde na terceira idade.

### 4. 🧂 O Desafio do Sal em Portugal
O sal é o inimigo invisível. No setor da panificação, **4 em cada 10 pães** excedem o limite de 1.0g de sal por 100g. 
* A média detetada de **1.1g** prova que o excesso de sódio é um padrão estrutural na padaria de prateleira portuguesa.

### 5. 🏗️ O Vazio dos "Ultraprocessados"
Os dados provam a correlação: quanto mais ingredientes, maior a degradação.
* Enquanto produtos simples têm menos de 2g de açúcar, o **ultraprocessado médio ultrapassa os 20g** (um aumento de 1000%). 
* Identifiquei uma janela enorme para produtos **Clean Label** no mercado nacional.

---

## 🛠️ Tecnologias Utilizadas
* **Google BigQuery:** Processamento de grandes volumes de dados (Big Data).
* **SQL (ANSI):** CTEs, Agregações complexas e limpeza de Outliers.
* **Dataset:** Open Food Facts Portugal.

---

## 📂 Estrutura do Repositório
* `/queries`: Contém todos os ficheiros `.sql` utilizados nas 5 perguntas da análise.
* `/data`: Documentação sobre a origem dos dados.

---

## 💡 Conclusão
Este projeto demonstra que a transparência ainda não é a regra no corredor do supermercado. Através do SQL, foi possível transformar tabelas complexas em decisões de compra muito mais saudáveis e económicas. **O dado é o melhor nutricionista.**

---
<div align="center">
Desenvolvido por [O Teu Nome] • 2026
</div>
