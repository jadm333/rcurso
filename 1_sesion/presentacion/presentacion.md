R
========================================================
author: José Díaz
date: Abril 13, 2018
autosize: true

Introducción
========================================================

¿Qué es R?

- R es lenguaje computacional interpretado
- Originalmente orientado a estadística

Ventajas y desventajas
========================================================

Ventajas:
- Rápido y **GRATIS**
- Comunidad inmensa que actualiza R, así como investigadores desarrollando nuevas técnicas
- Se promueve la reproducibilidad
- Generación de gráficas de calidad incluso las que trae por defecto
- +11,000 paquetes
- Se pueden combinar con otras herramientas
- Buen punto de partida para computación en general
- Lenguaje de programación de alto nivel

***

Desventajas:
- Es un lenguaje de programación y la curva puede ser larga
- Manejo de memoria RAM (se mejora con cada actualización)
- Multi-procesadores
- No se parece a SAS

¿Qué se puede hacer con R?
========================================================

Principalmente:

1. ETL:
    + Extracción
    + Transformación
    + Cargar
2. Exploración de datos
    + Gráficas
    + Estadística descriptiva
    + etc...
3. Modelación estadística

***

4. Entregables:
    + Paginas web
    + Documentos y reportes
    + Presentaciones

5. Programación de uso general

Instalación
========================================================

![alt text](r_logo.jpeg)
***
![alt text](rstudio_logo.png)

Lo básico
========================================================

```r
5+5
```

```
[1] 10
```

```r
4*4
```

```
[1] 16
```

```r
10/2
```

```
[1] 5
```

```r
# Esto es un comentario
```

Objetos
========================================================
## Variables
Se definen de la siguiente forma y son exactamente iguales

```r
a <- 1
2 -> b
c = 3
```
Uso:

```r
a+b+c
```

```
[1] 6
```

```r
a*2+c-(100*a*b)/c-400
```

```
[1] -461.6667
```

***


Se pueden renombrar o mutar

```r
a = 5
b = 6
c = 7.8
```
## Como nombrar a las variables

Nombre Correcto  | Nombre Incorrecto
---------------  | -----------------
data5            | 5data
VaRiAbLe         | $
var_muy_larga_4_1| ^media
.variable        | nombre de funcion


Objetos
========================================================

Las variables en r son sensibles a mayusculas y minusculas.

```r
A = 8
ls()
```

```
[1] "a" "A" "b" "c"
```

Objetos
========================================================
## Tipo de datos/objetos

```r
cadena1 = "Hola"
cadena2 = 'Mundo'
paste(cadena1,cadena2,"!!!")
```

```
[1] "Hola Mundo !!!"
```

```r
bol1 = TRUE
bol2 = FALSE
complejo = 1+2i
```
Vectores

```r
vec1 = c(1,2,3,4,a)
vec2 = c(TRUE,FALSE,TRUE)
vec3 = c(cadena1,cadena2)
vec3
```

```
[1] "Hola"  "Mundo"
```

***
Secuencias


```r
vec4 = 1:10
vec4
```

```
 [1]  1  2  3  4  5  6  7  8  9 10
```






