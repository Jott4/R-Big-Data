# 1)
eh_primo <- function(x) {
  if(x==1)
    return (FALSE)
  else if(x==2)
    return (TRUE)
  else {
    divisores <- c(2:(x-1))
    vetLogico <- x %% divisores == 0
    return (!any(vetLogico))
  }
}

#any() == OU
#all() == E


# 1) Execu��o
for(n in 1:20){
  if(eh_primo(n))
    print(sprintf('O numero %d � primo', n))
  else
    print(sprintf('O numero %d n�o � primo', n))
}

# 2)
fatorial <- function(n) {
 if(n==0 || n==1)
   return (1)
  else {
    return(n * fatorial(n-1))
  }
} 


#fatorial 5! = 5*4*3*2*1 = 120
# 2) Execu��o
fatorial(10)

# 3)
fibo <- function(n) {
  if(n <= 1) {
    return(n)
  } else {
    return(fibo(n-1) + fibo(n-2))
  }
}
# 3) Execu��o
#input: 7
#output: 0,1,1,2,3,5,8
x = 7
#ve se o numero � valido
if(x <= 0) {
  print("Plese enter a positive integer")
} else {
  print("Fibonacci sequence:")
  for(i in 0:(x-1)) {
    print(fibo(i))
  }
}



