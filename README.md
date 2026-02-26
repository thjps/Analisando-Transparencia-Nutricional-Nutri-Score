<div align="center">

# Analisando a Transparência Nutricional Para melhor Seleção de Produtos (Nutri-Score)

<img src="https://github.com" width="450">

<p>
Este projeto nasceu de uma inquietação pessoal: será que as nossas escolhas no supermercado são baseadas em factos ou em marketing? Utilizando a base de dados do Open Food Facts, analisei milhares de produtos disponíveis em Portugal através de SQL (Google BigQuery) para encontrar padrões de qualidade, preço e as "armadilhas" escondidas nos rótulos.
O meu objetivo foi simples: substituir a percepção pela evidência. Na ausência de um Nutri-Score padronizado em todos os produtos, utilizei os dados brutos de macronutrientes para criar a minha própria métrica de transparência.
</p>

</div>

🔍 Principais Descobertas (Os 5 Pilares da Análise)

1. O Mito das Marcas Próprias (MDD)
Derrubei o preconceito de que o "mais barato" é nutricionalmente pior. Ao comparar Marcas de Distribuidor (Pingo Doce, Continente, Lidl, etc.) com as marcas líderes, os dados mostraram uma equivalência quase total nos teores de açúcar e proteína. Escolher a marca do supermercado em Portugal é uma decisão de poupança inteligente, sem perda de qualidade nutricional básica.

2. A "Bomba" Oculta: Snacks e Marketing
Identifiquei uma disparidade alarmante nas Barras de Cereais. Embora vendidas como "fit" ou "energia", 83% dos produtos analisados são autênticas bombas de açúcar (>15g/100g). Já nos sumos, confirmei que o processamento elimina quase toda a fibra (média de 0,45g), transformando a fruta num veículo de absorção rápida de açúcar.

3. Eficiência Proteica: Onde está o "Músculo"?
Criei uma métrica de Densidade Proteica (Proteína por 100kcal) para identificar os verdadeiros aliados de uma dieta fitness ou para o envelhecimento ativo.
* Vencedores: Peixes e Marisco (13g de proteína/100kcal).
* Surpresa: Os laticínios proteicos de Marca Própria são o segmento onde os supermercados mais investem, oferecendo uma excelente relação custo-benefício.

4. O Desafio do Sal em Portugal
O sal continua a ser o "inimigo invisível". No setor da panificação, 4 em cada 10 pães excedem o limite de 1.0g de sal, com uma média de 1.1g. Isto prova que, no pão de prateleira, o excesso de sódio não é uma exceção, mas um padrão que exige atenção da saúde pública.

5. O Vazio dos "Ultraprocessados"
Concluí o estudo provando a correlação direta entre o processamento e a degradação nutricional. Enquanto produtos simples têm menos de 2g de açúcar, o ultraprocessado médio em Portugal ultrapassa os 20g (um aumento de 1000%). Aqui reside a maior oportunidade de mercado: produtos com "rótulo limpo" (Clean Label) que não sacrifiquem a saúde pela conveniência.

💡 Conclusão Geral
Os dados mostram que a transparência ainda não é a regra no corredor do supermercado. O consumidor português precisa de olhar menos para a frente da embalagem e mais para a tabela traseira. Este projeto demonstra que, com SQL e uma visão crítica, podemos transformar tabelas complexas em decisões de compra muito mais saudáveis e económicas.
