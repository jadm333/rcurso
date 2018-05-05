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

df2 = df %>% mutate(month = format(`Fecha de alta` , "%m"), year = format(`Fecha de alta`, "%Y")) %>% group_by(month, year) %>% summarise(total = sum(Monto), maxi = max(Monto), mini = min(Monto), prom = mean(Monto))

##########
Altas_clientes2 = Altas_clientes %>% separate(Contrato, into = c("Nsuc", "Contrato"), sep = "-", convert = TRUE) %>% left_join(Diccionario_sucursales)

# 1
porSuc = Altas_clientes2 %>% mutate(mes = format(`Fecha de alta` , "%m")) %>% select(Nsuc, Monto, mes) %>% group_by(Nsuc,mes) %>% summarise(total=sum(Monto)) %>% spread(key = mes,value = total)

MONTOTOTAL = sum(Altas_clientes2$Monto)


###########
#1
cortes <- c(-Inf, 1, 29, 59, 89, Inf)
niveles <- 1:5

hist_de_cobranza2 = hist_de_cobranza %>% mutate(MOP = cut(`Días de mora`, breaks = cortes, labels = niveles, right = FALSE) )


