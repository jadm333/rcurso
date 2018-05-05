#################
library("tidyverse")
# 1.
Altas_clientes <- read_csv("data/Altas_clientes.csv",
                          col_types = cols(
                          `Fecha Nacimiento` = col_date(format = "%d/%m/%Y"),
                          `Fecha de alta` = col_date(format = "%d/%m/%Y"),
                          Monto = col_number()))

# 2
library(readxl)
Diccionario_sucursales <- read_excel("data/Diccionario sucursales.xlsx",
sheet = "Hoja1", col_types = c("numeric",
"text", "text"))

# 3
hist_de_cobranza <- read_excel("data/Histórico de cobranza.xlsx",
sheet = "Hoja1", col_types = c("text",
"text", "numeric"))

#################

# 1
df = Altas_clientes %>% distinct(Cliente)
df = Altas_clientes[!(duplicated(Altas_clientes$Cliente)) , ]

# 2
library("lubridate")
df = df %>% mutate(edad = as.period(interval(`Fecha Nacimiento`, parse_date("30/11/2017","%d/%m/%Y")))$year   )

# 3

quantile(df$Score)

# 4
df = df %>% mutate(`Fecha de alta` = `Fecha de alta` %m+% months(1) )


# 5
creditos = Altas_clientes %>% group_by(Cliente) %>% summarise(num = n())

# 6

