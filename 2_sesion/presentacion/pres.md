R
========================================================
author: José Díaz
date: Abril 21, 2018
autosize: true

Algunos ejercicios de programación
========================================================
1.- Considera el siguiente algoritmo.
- Se empieza con un número $n$
- Si $n$ es par se divide por 2, si es impar se multiplica por tres y se le suma uno.
- Es decir:
$$ f(n) =  \left\{\begin{matrix}
\frac{n}{2} & \text{si n es par}\\ 
3n+1 & \text{si es n es impar}
\end{matrix}\right.$$

Crear una función que dado $n$ regrese el valor aplicado la anterior funcion

```r
f = function(n){
  
}
```

========================================================
2.- Con la función del ejercicio anterior crear la secuencia de número de la siguiente forma:
- Para un número $n$, aplicar la función recursivamente hasta que se cumpla la condición: $n>1$
- Ejemplo, si $n=5$:
    1. $f(5) = 16$
    2. $f(16) = 8$
    3. $f(8) = 4$
    4. $f(4) = 2$
    5. $f(2) = 1$
    6. Regresa =>`c(5, 16, 8, 4, 2, 1)`


```r
collatz = function(n){
  
}
```

========================================================
3.- Modificar la funcion anterior para que unicamente regrese el número de pasos para llegar a 1


- Ejemplo, si $n=5$:
    1. $f(5) = 16$
    2. $f(16) = 8$
    3. $f(8) = 4$
    4. $f(4) = 2$
    5. $f(2) = 1$
    6. Regresa =>`5`
    
> Se puede resolver unicamente contando la longitud del vector de la función anterior, pero para números muy grandes puede causar *memory leaks*


```r
collatz_num = function(n){
  
}
```

========================================================
4.-Similar al ejercicio anterior pero unicamente regresar el numero máximo de la secuencia

- Ejemplo, si $n=5$:
    1. $f(5) = 16$
    2. $f(16) = 8$
    3. $f(8) = 4$
    4. $f(4) = 2$
    5. $f(2) = 1$
    6. Regresa =>`16`

> Se puede resolver unicamente sacando el maximo del vector de la función anterior, pero para números muy grandes puede causar *memory leaks*


```r
collatz_max = function(n){
  
}
```


Data Frames
========================================================

- Son tablas, es decir objetos con filas y columnas.
- Cada columna es un vector `c()` y cada renglon es...

```r
class(iris[,1])
```
Accesar a datos:

```r
iris[2,c(1,2)]
iris[1:3,1]
iris[1:3,1,drop=FALSE]
iris[-(2:52), 1:3]
```



========================================================



