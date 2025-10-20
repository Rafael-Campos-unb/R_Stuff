library(tidyverse)

arquivo <- "https://raw.githubusercontent.com/fernandobarbalho/enap_auto_instucional/main/data/dados_municipios.csv"
dados_municipios <- read_csv(arquivo)

# Uso de filtros com operador pipe %>%
dados_municipios %>%
  filter(sigla_uf=="CE")


# Concatenação de filtros
dados_municipios %>% 
  filter(sigla_uf=="CE") %>%
  filter(populacao > 100000)


dados_municipios %>%
  filter(sigla_uf=="CE") %>% # filtro para estado CE
  filter(populacao > 100000) %>% # filtro para população > 100000 habitantes
  select(sigla_uf, nome, populacao) %>% # seleciona colunas específicas
  arrange(populacao) # ordena de acordo com coluna específica (população)-> default, ordem crescente

df_filtro <- dados_municipios %>%
  filter(sigla_uf=="CE") %>% # filtro para estado CE
  filter(populacao > 100000) %>% # filtro para população > 100000 habitantes
  select(sigla_uf, nome, populacao) %>% # seleciona colunas específicas
  arrange(desc(populacao)) # ordena de acordo com coluna específica (população)

df_filtro


# Usando groupby e o summarize
dados_municipios %>% 
  group_by(sigla_uf) %>%
  summarize(
    populacao_estado=sum(populacao)
  ) %>%
  arrange(desc(populacao_estado))


dados_municipios %>% 
  group_by(sigla_uf) %>%
  summarize(
    populacao_estado=sum(populacao),
    quantidade_municipios = n(),
    media = mean(populacao),
    mediana = median(populacao)
  ) %>% 
  arrange(desc(quantidade_municipios))



# Usando mutate para alterar estrutura de uma tabela
dados_municipios %>%
  mutate(nome_regiao_saude_uf = paste(nome, nome_regiao_saude, sigla_uf, sep='-')) %>%
  select(nome_regiao_saude_uf, populacao)
