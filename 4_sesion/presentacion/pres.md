R clase 4
========================================================
author: José Díaz
date: 05/05/2018
autosize: true

Ejercicio
========================================================

1. Importar csv (Altas_clientes)
2. Importar Excel (Diccionario Sucursales)
3. Importar Excel (Histórico de cobranza)
4. Importar txt delimitado (|) (Ejecutivo)

De la tabla (Altas_clientes) obtener:
========================================================

1. Eliminar duplicados.
2. Edad al 30-Nov-2017 para cada cliente.
3. Quintil con base en la columna Score.
4. F1 (Sumarle un mes a la columna "Fecha de alta")
5. ¿Cuantos créditos tiene cada cliente?
6. ¿cuál es el monto máximo, mínimo, media, suma por mes?


Agregarle a la tabla (Altas_clientes) la columna Sucursal de la tabla (Diccionario Sucursales)
========================================================

1) ¿Cual es la suma del monto por sucursales para cada mes?. Transponerlo

suc|mes1|mes2|mes3
---|---|---|---
1|suma_mes1|suma_mes2|suma_mes3
2|suma_mes1|suma_mes2|suma_mes3
3|suma_mes1|suma_mes2|suma_mes3

2) Porcentaje que representa cada sucursal de la colocación total (Suma todo el monto)

De la Tabla (Histórico de cobranza)
========================================================

1) Agregar una columna que da un valor dependiento de los días de mora, con la siguiente relación:

dias_de_mora|MOP
---|---
0|1	
1-29|2
30-59|3
60-89|4
90+|5

***

2) Una vez teniendo esta nueva columna concatenarla por contrato, ejemplo:

contato|Mop
---|---
x1|1
x1|2
x1|1
x1|2
x1|4

========================================================
3) Agregarle esta nueva variable a la tabla (Altas_clientes)

4) Responder Cuantos "1" tiene el "Histórico de mop" de cada cliente


Agregar la columna ejecutivo para responder las siguientes preguntas:
========================================================

a) Suma total del ejecutivo

b) número de créditos por ejecutivo

Exportarlo
========================================================

- CSV
- TXT
- Excel
- Reporte si da tiempo

