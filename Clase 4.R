ppois(30,25)
[1] 0.8633089
x -> poisson()
> #la probabilidad de x hasta 30 arriba, incluyendo al 30, si no incluye al 30 es ppois en 29, si es menos que 30, podemos pintar la funcion de distribucion
  > FX <- pois(x,25)
  > FX <- ppois(x,25)
  > plot(x,Fx,type"s")
  Error: unexpected string constant en "plot(x,Fx,type"s""
  > #la probabilidad de un valor en si es asi:
    # es dpois para f minuscula
    > dpois(x,30)
  #probabilidad de que x sea xomo mínimo 30,30 sirve necesito ppoison
  #haremos un dibujo y son chinchetas de la derecha del 30, incluyendo el 30
  # lo anterior es F(29), x tanto lo que busco es 1-F(29)
  1-ppois(29,25)
  # esto es lo que buscaba
  # el primer quantil es el valor que acumula el 0.25 de probabbilidad
  #q0.25=F^-1(0.25)
  # se hace el primer cuartil como
  qpois(0.25,25)
  # cual es la probabilidad de que pase un tiempo de 0.33 horas entre dos llamadas
  # esto es variable discreta desde 0 ahsta infinito
  # la probabilidad de que pase un tiempo = 0.33 horas entre 2 llamadas
  # landa por e a la menos(landa t)
  ###modelo exponencial
  # el tiempo es una variable continua
  # el valor de la densidad a 0.3 con landa = 25:
  dexp(0.3,25)
# ahora llamo x a un intervalo ,voy de 0 a 0.20 en pasos de 0.0001
  x<- seq(0,0.20,0.001))

fx<-dexp(x,25)
fx
plot(x,fx,type=l,col=red)
# t es igual al tiempo entre dos llamadas
dexp(0.033,25)
# esto nos sirve para variables discretas, no continuas
# porque en variables continuas la probabilidad de un valor es 0
# seria la integral abjo la curva entre 0.033 y 0.033 de f(x) dx
# cual es la probabilidad de que pase un tiempo y al menos hayan un numero de llamadas
# las probabilidades en variables continuas se calculan con F mayuscula
#La probabilidad de que T sea mayor que 0.052 se calcula como:
#1-F(0.052) que se calcula como:
1-pexp(0.052,25)
Fx<- pexp(x,25)
plot(x,Fx,type="l",col="red")
# tercer cuartl
qexp(0.75,25)
# es el valor que acumula el 75 x ciento de los tiempos de espera
#f minuscula es dmodelo, F es pmodelo F^-1 es qmodelo, simular es rmodelo
### simular un tiempo de espera entre dos llamadas
set.seed(123)
# esto para obtener un valor aleatorio
simul<- rexp(500000,25)
hist(simul)
 #mitjana es media y mediana es mediana
# la media es mean
mean(simul)
# E(x) = 1/ landa :
1/25
# var(x) =1/(landa^2)
1/25^2
#PROBLEMA 2
#  nos dan valor esperado E(x)=100000
#P(x>13000) probabilidad de que sea por lo menos 150000
# esto es 1-F(13000)
# necesito landa
# E(x)= 1/landa
# landa es 1/10000
#por tanto queda
1-pexp(13000,1/10000)
# cual es la duracion en  que las componentes superan con una probabilidad de 0.2
# por tanto 0.8 = F(x)
# F^-1(0.8) = x
x = qexp(0.8,1/10000)
x
# hay que correr la seed a la evz que la siguiente
set.seed(85)
simul<-rexp(100,1/10000)
simul
#para calcular media, mediana y varianza:
mean(simul)
median(simul)
var(simul)
