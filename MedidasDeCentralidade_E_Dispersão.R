set.seed(1972)
valores_aleatorios <- sample(x=1:100, size=50)
valores_aleatorios

# Medida de centralidade
# Média
media = sum(valores_aleatorios) / NROW(valores_aleatorios)
media
media = mean(x=valores_aleatorios)
media
# Mediana
mediana = median(x=valores_aleatorios)
mediana
# Medidas de dispersão:
# Amplitude
amplitude = max(valores_aleatorios) - min(valores_aleatorios)
amplitude

# Variância
variancia = var(x=valores_aleatorios)


# Desvio padrao
desvio_padrao = sd(x=valores_aleatorios)
desvio_padrao




# Exemplo prático
custos_hospitalares <- c(1955.77, 1884.48, 1825.71, 2002.66, 1924.01, 1946.58, 
                         2098.05, 2050.29, 2015.67, 2011.02)

media = mean(custos_hospitalares)
mediana = median(custos_hospitalares)
desvio_padrao = sd(custos_hospitalares)


df_custos_hospitalares = data.frame(custos_hospitalares=custos_hospitalares)
df_medidas_de_dispersao_e_centralidade = data.frame(media=media, mediana=mediana,
                                                    desvio_padrao=desvio_padrao)
df_custos_hospitalares
df_medidas_de_dispersao_e_centralidade
