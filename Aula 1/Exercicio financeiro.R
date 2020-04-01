receita <- c(14574.49, 7606.46, 8611.41, 9175.41, 8058.65, 8105.44, 11496.28, 9766.09, 10305.32, 14379.96, 10713.97, 15433.50)
despesas <- c(12051.82, 5695.07, 12319.20, 12089.72, 8658.57, 840.20, 3285.73, 5821.12, 6976.93, 16618.61, 10054.37, 3803.96)

#1
meses <- format(ISOdate(2017,1:12,1),"%B")
names(receita) <- meses
print(receita)
names(despesas) <- meses
print (despesas)
lucro <- receita - despesas
print(lucro)

#2

lucroliquido <- lucro * 0.7 
print(lucro)
print(lucroliquido)

#3

library(formattable)
ml <- ll / receita
percentml <- percent(ml)
print(percentml)

#4

media <- mean(lucroliquido)
mesbom <- lucroliquido > media
meses[mesbom]

#5

mesruim = lucroliquido < media
print(mesruim)
meses[mesruim]

#6
melhormes <- lucroliquido == max(lucroliquido)
meses[melhormes]

#7

piormes <- lucroliquido == min(lucroliquido)
meses[piormes]

#8
cat('o lucro foi de: \n', lucro)
cat('lucro liquido foi de: \n', lucroliquido)
cat('a margem de lucro foi de: \n', percentml)
cat('meses bons: ',meses[mesbom])
cat('meses ruins:',meses[mesruim])
cat('melhor mes:',meses[melhormes])
cat('pior mes:',meses[piormes])