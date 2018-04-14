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

```r
seq(2,10,2)
```

```
[1]  2  4  6  8 10
```



```r
vec4 + 1:2  
```

```
 [1]  2  4  4  6  6  8  8 10 10 12
```

Objetos
========================================================
## Operadores Logicos
Operador | Descripción
---------| -----------
<        | menor
>        | mayor
<=       | menor o igual
>=       | mayor o igual
==       | igual a
!=       | diferente a
!x       | No x
x | y    | x o y
x & y    | x e y

***

¿Para qué puedes usarlos?

```r
x = 1:30
x[10]
x[-n]
x[1:5]
x[-(1:5)]
x[c(1,8,22)]
x["abc"]
x[x > 15]
x[x > 15 & x <= 20]
x[x %in% c(6,8,9)]
x[x %in% c("abc","hola")]
```


Objetos
========================================================
## Matrices

Producto punto y produco exterior:

```r
1:3 %*% 1:3
```

```
     [,1]
[1,]   14
```

```r
1:3 %o% 1:3
```

```
     [,1] [,2] [,3]
[1,]    1    2    3
[2,]    2    4    6
[3,]    3    6    9
```

Definir una matriz:

```r
matriz1 = matrix(1:9,ncol = 3)
```

***
Operaciones de matrices:

```r
t(matriz1) #Transpuesta
diag(matriz1) # Diagonal
solve(a,b)  # Resuelve a %*% x = b
solve(a) # Inversa de a
### Etc
```


Objetos
========================================================
## Funciones

Funcion en general:

```r
nombre_de_la_funcion(parametro1, parametro2, parametro3, ...)
```
Se pueden componer:

```r
round(mean(1:100))
```

```
[1] 50
```
### Podemos crear nuestras propias funciones

```r
nombre_de_la_funcion = function(parametro1, parametro2, parametro3, ...) {
  ## Aqui ejecuta los comandos
  return(Valor_a_regresar)
}
```
***
Ejemplo:

```r
suma = function(a,b){
  c = a + b
  return(c)
}
suma(10,6)
```

```
[1] 16
```

> Checar Scope de funciones

Valores por defecto:

```r
suma = function(a=2,b=3){
  c = a + b
  return(c)
}
suma()
```

```
[1] 5
```
Estructuras
========================================================

```r
if(){
  
} else {
  
}

for(){
  
}

while(){
  
}
```


Algunos ejercicios
========================================================
Creando funciones resuelve:

1.-¿Cuanto digitos tiene $a^n$?

```r
nDigits = function(a,n){
  
}
```
2.- 











