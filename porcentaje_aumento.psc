Algoritmo porcentaje_aumento
	Definir sueldoi,sueldof,sueldo,suma,meses,aumento,x,sumagastos,gastos,gasto,monto,precio,respuesta,suscripcion,totalsuscrip,a Como Real
	Definir contrasenia,contrasenia1 Como Caracter
	suma <- 0
	sueldoi <- 0
	meses <- 0
	x <- 0
	aumento <- 0
	gasto <- 0
	tarjetas <- 0
	servicios <- 0
	arreglos <- 0
	supermercado <- 0
	monto <- 0
	suscripcion <- 0
	totalsuscrip <- 0
	contrasenia <- 'Chechu52'
	sumagastos <- 0
	Escribir "Bienvenida/o-"
	Escribir "Con esta aplicación podrás calcular tus aumentos de sueldo, tus gastos mensuales."
	Escribir "También podrás saber los porcentaje de gastos y por último cuántos dólares podés comprar con lo que te resta"
	Escribir " "
	Escribir 'Ingrese su contraseña' // supone una contraseña ya ingresada por el usuario anteriormente
	Leer contrasenia1
	Si contrasenia=contrasenia1 Entonces
		Escribir 'Bienvenido su contraseña es correcta'
	SiNo
		Repetir
			Escribir 'Ingrese su contraseña'
			Leer contrasenia1
		Hasta Que contrasenia=contrasenia1
		Escribir 'Contraseña correcta'
	FinSi
	Escribir ' '
	Escribir 'ingrese el total de su sueldo'
	Leer sueldoi
	sueldof <- sueldoi
	Escribir ' '
	Escribir 'ingrese cantidad de meses en que se le otorgó un aumento, si no tuvo aumento ingrese 0'
	Leer meses
	Escribir ' '
	Si meses<>0 Entonces
		Para x<-1 Hasta meses Hacer // acá comienza el cálculo del porcentaje compuesto tantos meses como el usuario ingrese
			Escribir ' '
			Escribir 'escriba el porcentaje de aumento otorgado'
			Leer porcentaje
			aumento <- sueldof*porcentaje/100
			Escribir ' '
			Escribir 'aumento es de ',aumento,' pesos'
			sueldof <- sueldof+aumento
			Escribir ' '
			Escribir 'El sueldo actual será  ',sueldof,' pesos'
		FinPara
		Escribir ' '
		Escribir 'El incremento en su sueldo ha sido de  ',sueldof-sueldoi,' pesos'
		sueldo <- sueldof
	FinSi
	Si meses=0 Entonces
		sueldof <- sueldoi
		sueldoi <- sueldo // utilizo esta igualdad para mantener el sueldo sin gastos y después poder sacar porcentajes
		// ya que la variable sueldof se va a ir modificando
	FinSi
	Repetir
		Repetir // si el usuario ingresa gastos le irá descontando de su sueldo final y mostrándo cuánto le queda por cada gasto
			Escribir ' '
			Escribir 'ingrese el tipo de gasto a descontar'
			Escribir ' '
			Escribir '1- tarjetas , 2- servicios, 3- arreglos, 4-supermercado, 5-salir'
			Escribir ' '
			Leer gasto
			Si gasto<1 O gasto>5 Entonces
				Escribir 'debe ingresar los números del 1 al 5'
			FinSi
		Hasta Que gasto>=1 Y gasto<=5
		Si gasto=5 Entonces
			Escribir ' '
			Escribir 'Su sueldo restante es de ',sueldof,' pesos'
		SiNo
			Escribir ' '
			Escribir 'ingrese el monto'
			Leer monto
			Segun gasto  Hacer
				1:
					sueldof <- sueldof-monto
					tarjetas <- tarjetas+monto
					Escribir ' '
					Escribir "Sueldo restante ",sueldof
				2:
					sueldof <- sueldof-monto
					servicios <- servicios+monto
					Escribir ' '
					Escribir "Sueldo restante ",sueldof
				3:
					sueldof <- sueldof-monto
					arreglos <- arreglos+monto
					Escribir ' '
					Escribir "Sueldo restante ",sueldof
				4:
					sueldof <- sueldof-monto
					supermercado <- supermercado+monto
					Escribir ' '
					Escribir "Sueldo restante ",sueldof
				De Otro Modo:
					Escribir ' '
					Escribir 'debe escribir un número del 1 al 5 '
			FinSegun
		FinSi
	Hasta Que gasto=5
	Escribir ' '
	Escribir 'SUSCRIPCIONES'
	Repetir
		Escribir ' '
		Escribir '1- Netflix , 2- Spotify, 3- Disney, 4-Flow, 5-otras o 6-salir'
		Leer suscripcion
		Si suscripcion=6 Entonces
			Escribir ' '
			Escribir 'Ud tiene actualmente  ',sueldof,' pesos'
		SiNo
			Escribir ' '
			Escribir 'ingrese el monto'
			Leer monto
			Segun suscripcion  Hacer // tengo un problema con las suscripciones y las sumas de éstas, cierra el proceso en la primera entrada
				1:
					sueldof <- sueldof-monto
					totalsuscrip <- totalsuscrip+monto
					Escribir ' '
					Escribir "Sueldo restante ",sueldof
				2:
					sueldof <- sueldof-monto
					totalsuscrip <- totalsuscrip+monto
					Escribir ' '
					Escribir "Sueldo restante ",sueldof
				3:
					sueldof <- sueldof-monto
					totalsuscrip <- totalsuscrip+monto
					Escribir ' '
					Escribir "Sueldo restante ",sueldof
				4:
					sueldof <- sueldof-monto
					totalsuscrip <- totalsuscrip+monto
					Escribir ' '
					Escribir "Sueldo restante ",sueldof
				5:
					sueldof <- sueldof-monto
					totalsuscrip <- totalsuscrip+monto
					Escribir ' '
					Escribir "Sueldo restante ",sueldof
				De Otro Modo:
					Escribir ' '
					Escribir 'debe escribir un número del 1 al 6 '
			FinSegun
		FinSi
	Hasta Que suscripcion=6
	Escribir " "
	Escribir "RESULTADOS FINALES"
	Escribir ' '
	Escribir 'Sueldo+aumentos= ',sueldo,' pesos'
	Escribir ' '
	a <- 100/sueldo // para resumir el cálculo del porcentaje
	Escribir 'Total tarjetas  ',tarjetas,' pesos =    ',tarjetas*a,'% de su sueldo'
	Escribir ' '
	Escribir 'Total arreglos  ',arreglos,' pesos =  ',arreglos*a,'% de su sueldo'
	Escribir ' '
	Escribir 'Total supermercado ',supermercado,' pesos =  ',supermercado*a,'% de su sueldo'
	Escribir ' '
	Escribir 'Total servicios ',servicios,' pesos=  ',servicios*a,'% de su sueldo'
	Escribir ' '
	Escribir 'Total suscripciones ',totalsuscrip,' pesos=  ',totalsuscrip*a,'% de su sueldo'
	Escribir ' '
	Escribir 'Total de gastos  ',tarjetas+servicios+arreglos+supermercado+totalsuscrip,' pesos'
	sumagastos <- tarjetas+servicios+arreglos+supermercado+totalsuscrip
	Escribir ' '
	Escribir 'Porcentaje de gastos= ',sumagastos*a,'%'
	Escribir '  '
	Escribir 'Desea saber cuántos dólares puede comprar?'
	Escribir ' '
	Escribir '1 - sí , 2 - no'
	Leer respuesta
	Si respuesta=1 Entonces
		Escribir 'Ingrese el valor actual del dólar'
		Leer precio
		Escribir ' '
		Escribir 'Ud puede comprar ',sueldof/precio,' dólares'
		Escribir 'Gracias por utilizar este servicio'
	SiNo
		Escribir ' '
		Escribir 'Gracias por utilizar este servicio'
	FinSi
FinAlgoritmo
