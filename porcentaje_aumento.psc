Algoritmo porcentaje_aumento
	Definir sueldoi, sueldof, sueldo, suma, meses, aumento, x, sumagastos, gastos, gasto, monto, precio, respuesta, suscripcion, totalsuscrip, a Como Real
	Definir contrasenia, contrasenia1 Como cadena
		
	
	suma=0
	sueldoi=0
	meses=0
	x=0
	aumento=0
	gasto=0
	tarjetas=0
	servicios=0
	arreglos=0
	supermercado=0
	monto=0
	suscripcion=0
	totalsuscrip=0
	contrasenia = "Chechu52"
	sumagastos=0
	
	
	Escribir "Ingrese su contrase�a"  //supone una contrase�a ya ingresada por el usuario anteriormente
	Leer contrasenia1
	si contrasenia=contrasenia1
		Escribir "Bienvenido su contrase�a es correcta"
	SiNo
		
		Repetir
		
				Escribir "Ingrese su contrase�a"
				Leer contrasenia1
			Hasta Que contrasenia = contrasenia1
			
			Escribir "Contrase�a correcta"
			
	
		
	FinSi
	
	Escribir " "
	
	
	Escribir "ingrese el total de su sueldo"
	leer sueldoi
	sueldof=sueldoi
	Escribir " "
	Escribir "ingrese cantidad de meses en que se le otorg� un aumento, si no tuvo aumento ingrese 0"
	Leer meses
	Escribir " "
	si meses<>0
		Para x<-1 hasta meses Con Paso 1  //ac� comienza el c�lculo del porcentaje compuesto tantos meses como el usuario ingrese
			Escribir " "
			Escribir "escriba el porcentaje de aumento otorgado"
			leer porcentaje
			aumento=sueldof*porcentaje/100
			Escribir " "
			mostrar "aumento es de ", aumento, " pesos"
			sueldof= sueldof+aumento
			Escribir " "
			Escribir "El sueldo actual ser�  ", sueldof , " pesos"
		FinPara
		Escribir " "
		Escribir "El incremento en su sueldo ha sido de  ", sueldof-sueldoi, " pesos"
		sueldo=sueldof
	FinSi
	si meses=0
		sueldof=sueldoi
		sueldoi=sueldo //utilizo esta igualdad para mantener el sueldo sin gastos y despu�s poder sacar porcentajes
		               //ya que la variable sueldof se va a ir modificando
	FinSi
	
	Repetir
		
		repetir //si el usuario ingresa gastos le ir� descontando de su sueldo final y mostr�ndo cu�nto le queda por cada gasto
			Escribir " "
			Escribir "ingrese el tipo de gasto a descontar"
			Escribir " "
			Escribir "1- tarjetas , 2- servicios, 3- arreglos, 4-supermercado, 5-salir"
			Escribir " "
			
			Leer gasto
			si gasto< 1 o gasto >5
				Escribir "debe ingresar los n�meros del 1 al 5"
			FinSi
		hasta que gasto >=1 Y gasto<= 5
		si gasto=5
			Escribir " "
			Escribir "Su sueldo restante es de ", sueldof, " pesos"
			
			
			
			
		SiNo
			Escribir " "
			Escribir "ingrese el monto" 
			Leer monto
			
			Segun gasto Hacer
				1:
					sueldof=sueldof-monto
					tarjetas=tarjetas+monto
					Escribir " "
					Escribir sueldof
				2:
					sueldof=sueldof-monto
					servicios=servicios+monto
					Escribir " "
					Escribir sueldof
				3:
					sueldof=sueldof-monto
					arreglos=arreglos+monto
					Escribir " "
					Escribir sueldof
				4:
					sueldof=sueldof-monto
					supermercado=supermercado+monto
					Escribir " "
					Escribir sueldof
				De Otro Modo:
					Escribir " "
					Escribir "debe escribir un n�mero del 1 al 5 "
					
					
			FinSegun
		FinSi
		
		
	Hasta Que gasto=5
	Escribir " "
	Escribir "SUSCRIPCIONES"  
	Repetir
		Escribir " "
		
		Escribir "1- Netflix , 2- Spotify, 3- Disney, 4-Flow, 5-otras o 6-salir"
		Leer suscripcion
		si suscripcion=6
			Escribir " "
			Escribir "Ud tiene actualmente  ", sueldof, " pesos"
			
		SiNo
			Escribir " "
			Escribir "ingrese el monto" 
			Leer monto
			
			Segun suscripcion Hacer //tengo un problema con las suscripciones y las sumas de �stas, cierra el proceso en la primera entrada
				1:
					sueldof=sueldof-monto
					totalsuscrip=totalsuscrip+monto
					Escribir " "
					Escribir sueldof
				2:
					sueldof=sueldof-monto
					totalsuscrip=totalsuscrip+monto
					Escribir " "
					Escribir sueldof
				3:
					sueldof=sueldof-monto
					totalsuscrip=totalsuscrip+monto
					Escribir " "
					Escribir sueldof
				4:
					sueldof=sueldof-monto
					totalsuscrip=totalsuscrip+monto
					Escribir " "
					Escribir sueldof
				5:
					sueldof=sueldof-monto
					totalsuscrip=totalsuscrip+monto
					Escribir " "
					Escribir sueldof
				De Otro Modo:
					Escribir " "
					Escribir "debe escribir un n�mero del 1 al 6 "
					
					
			FinSegun
		FinSi
	Hasta Que suscripcion=6
	Escribir " "
	Escribir "Sueldo+aumentos= ", sueldo, " pesos"
	Escribir " "
	a = 100/sueldo //para resumir el c�lculo del porcentaje
	Escribir "Total tarjetas  ", tarjetas, " pesos =    ",tarjetas*a , "% de su sueldo" 
	Escribir " "
	
	Escribir "Total arreglos  ", arreglos, " pesos =  ",arreglos*a , "% de su sueldo"
	Escribir " "
	
	Escribir "Total supermercado " supermercado, " pesos =  ", supermercado*a, "% de su sueldo"
	Escribir " "
	
	Escribir "Total servicios ",  servicios, " pesos=  ", servicios*a, "% de su sueldo"
	Escribir " "
	
	Escribir "Total suscripciones " totalsuscrip, " pesos=  ",totalsuscrip*a , "% de su sueldo"
	Escribir " "
	Escribir "Total de gastos  ", tarjetas+servicios+arreglos+supermercado+totalsuscrip, " pesos"
	sumagastos=tarjetas+servicios+arreglos+supermercado+totalsuscrip
	Escribir " "
	
	Escribir "Porcentaje de gastos= ", sumagastos*a, "%"
	Escribir  "  "
	Escribir "Desea saber cu�ntos d�lares puede comprar?"
	Escribir " "
	Escribir "1 - s� , 2 - no"
	Leer respuesta
	Si respuesta=1
		Escribir "Ingrese el valor actual del d�lar"
		Leer precio
		Escribir " "
		Escribir "Ud puede comprar ",sueldof/precio, " d�lares"
		Escribir "Gracias por utilizar este servicio"
	SiNo
		Escribir " "
		Escribir "Gracias por utilizar este servicio"
		
	FinSi
	
	
FinAlgoritmo




