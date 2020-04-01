# Abra os 4 datasets correspondentes com os nomes das variáveis abaixo
# Se possível, teste 4 das 5 maneiras possíveis:
# 1) Clicando no dataset em Files
# 2) Clicando em "import dataset" em Enviroment a direita
# 3) Escrevendo o caminho completo do arquivo
# 4) Usando o file.choose() dentro da função read.csv()
# 5) Usando o caminho relativo do arquivo ao seu Working Directory
taxa.natalidade <- read.csv("./datasets/taxa_natalidade.csv")
pop.total.entre.15.64 <- read.csv("./datasets/pop_total_entre_15_64.csv")
idade.primeiro.casamento <- read.csv("./datasets/idade_primeiro_casamento.csv")
criancas.fora.escola <- read.csv("./datasets/criancas_fora_escola.csv")
demographic.data <- read.csv('./datasets/DemographicData.csv')

# Considere apenas para efeitos de simplificação nos exercícios
# que a população é total do país, e não apenas de 15 a 64 anos


# Analise os data.frames com as funções head, tail,
# str e summary, além das informações na interface do
# RStudio
head(demographic.data)
tail(demographic.data)
str(demographic.data)
summary(demographic.data)
# Crie um vetor contendo os nomes dos paises analisados nos
# datasets
names <- taxa.natalidade['Country.Name']
names
# Remova a coluna "X" dos datasets
taxa.natalidade$X <- NULL
pop.total.entre.15.64$X <- NULL
idade.primeiro.casamento$X <- NULL
criancas.fora.escola$X <- NULL

# Renomeie as colunas 2 a 59 para 1960 a 2017
# mantenha a primeira como Country.Name e a ultima no caso
# de 2 deles como genero.
colnames(criancas.fora.escola) <- c("Country.Name", 1960:2017, "genero")
colnames(idade.primeiro.casamento) <- c("Country.Name", 1960:2017, "genero")
colnames(pop.total.entre.15.64) <- c("Country.Name", 1960:2017)
colnames(taxa.natalidade) <- c("Country.Name", 1960:2017)


# Exiba a população do Brasil em 1970

x <- pop.total.entre.15.64[pop.total.entre.15.64$Country.Name=="Brazil","1970"]
x
# Exiba a taxa de natalidade do Chile em 1985
y = taxa.natalidade[taxa.natalidade$Country.Name=="Chile","1985"]
y
# Exiba o dado de natalidade do 4º país no 10º ano
taxa.natalidade[taxa.natalidade$Country.Name[4:10]]

# Altere a taxa de natalidade do Brasil de 2000 para o triplo

taxa.natalidade[taxa.natalidade$Country.Name=="Brazil","2000"] <- taxa.natalidade[taxa.natalidade$Country.Name=="Brazil","2000"] * 3

# Exiba quais países tem menos de 15 milhoes de habitantes em 2016
pop.total.entre.15.64$Country.Name[taxa.natalidade$"2016" < 150000000]


# A partir dos datasets pop.total e taxa.natalidade, construa um
# dataset que mostre a quantidade total de nascimentos dos países
# por ano entre 1960 e 2015 (colunas 2 a 57).
# Faça como as operações com matrizes, mas utilize apenas as colunas
# com números! Acrescente ao data.frame nascimentos através do uso
# da cbind()
nascimentos <- data.frame("Country.Name" = paises.ads)
nascimentos <- cbind(nascimentos, 
    )

# Some o valor de nascimentos no Brazil entre 1960 e 2000


# Subtraia o valor da pop.total de 2000 do Brasil pela de 1960


# Compare os valores. Veja se são próximos. Seriam iguais se os
# valores fossem da população total e também se tivessemos o total
# de mortes por ano. Exercício apenas para se explorar as possibilidades
# ao se trabalhar com diversos dados como esses
