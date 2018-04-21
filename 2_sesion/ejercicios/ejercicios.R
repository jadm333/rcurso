## Ejercicio 1
f = function(n){
  if (n %% 2 ==0) {
    return(n/2)
  } else{
    return(3*n + 1)
  }
}

## Ejercicio 2
collatz = function(n){
  sec = c(n)
  if (n<1) {
    return(c())
  }
  while(n>1){
    n = f(n)
    sec = c(sec,n)
  }
  return(sec)
}

## Ejercicio 3
collatz_num = function(n){
  i = 0
  if (n<1) {
    return(0)
  }
  while (n>1) {
    n = f(n)
    i = i +1
  }
  return(i)
}

## Ejercicio 4
collatz_max = function(n){
  maxim = 0
  if (n<1) {
    return(0)
  }
  while (n>1) {
    n = f(n)
    maxim = max(maxim,n)
  }
  return(maxim)
}

## Ejercicio 5
data = data.frame(indice=1:10000)

