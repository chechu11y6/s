Algoritmo porcentaje_aumento
	Definir porcentaje, sueldoi, sueldof, suma, meses, aumento, x, gastos, gasto, monto, suscripcion, totalsuscrip Como Real
	Definir contrasenia, contrasenia1 Como cadena
		
	porcentaje=0
	suma=0
	sueldoi=0
	meses=0
	x=0
	aumento=0
	gasto=0
	gasto=0
	tarjetas=0
	servicios=0
	arreglos=0
	supermercado=0
	monto=0
	suscripcion=0
	totalsuscrip=0
	contrasenia = "Chechu52"
	
	
	Escribir "Ingrese su contraseña"
	Leer contrasenia1
	si contrasenia=contrasenia1
		Escribir "Bienvenido su contraseña es correcta"
	SiNo
		
		Repetir
		
				Escribir "Ingrese su contraseña"
				Leer contrasenia1
			Hasta Que contrasenia = contrasenia1
			
			Escribir "Contraseña correcta"
			
	
		
	FinSi
	
	
	
	
	Escribir "ingrese el total de su sueldo"
	leer sueldoi
	sueldof=sueldoi
	Escribir "ingrese cantidad de meses en que se le otorgó un aumento, si no tuvo aumento ingrese 0"
	Leer meses
	si meses<>0
		Para x<-1 hasta meses Con Paso 1
			Escribir "escriba el porcentaje de aumento otorgado"
			leer porcentaje
			aumento=sueldof*porcentaje/100
			mostrar "aumento es de ", aumento, " pesos"
			sueldof= sueldof+aumento
			Escribir "El sueldo actual será  ", sueldof , " pesos"
		FinPara
		Escribir "El incremento en su sueldo ha sido de  ", sueldof-sueldoi, " pesos"
		sueldo=sueldof
	FinSi
	si meses=0
		sueldof=sueldoi
		sueldoi=sueldo
		
	FinSi
	
	Repetir
		
		repetir 
			Escribir "ingrese el tipo de gasto a descontar"
			Escribir "1- tarjetas , 2- servicios, 3- arreglos, 4-supermercado, 5-salir"
			
			Leer gasto
			si gasto< 1 o gasto >5
				Escribir "debe ingresar los números del 1 al 5"
			FinSi
		hasta que gasto >=1 Y gasto<= 5
		si gasto=5
			Escribir "Su sueldo restante es de ", sueldof, " pesos"
			
			
			
			
		SiNo
			Escribir "ingrese el monto" //tengo un problema cuando ingresa 5 SOLUCIONADO
			Leer monto
			
			Segun gasto Hacer
				1:
					sueldof=sueldof-monto
					tarjetas=tarjetas+monto
					
					Escribir sueldof
				2:
					sueldof=sueldof-monto
					servicios=servicios+monto
					
					Escribir sueldof
				3:
					sueldof=sueldof-monto
					arreglos=arreglos+monto
					Escribir sueldof
				4:
					sueldof=sueldof-monto
					supermercado=supermercado+monto
					
					Escribir sueldof
				De Otro Modo:
					Escribir "debe escribir un número del 1 al 5 "
					
					
			FinSegun
		FinSi
		
		
	Hasta Que gasto=5
	Escribir "suscripciones"  //problema con suscripcion ver ese bloque por separado ojo con la variable sueldof que viene de antes
	Repetir
		
		
		Escribir "1- Netflix , 2- Spotify, 3- Disney, 4-Flow, 5-otras o 6-salir"
		Leer suscripcion
		si suscripcion=6
			Escribir "Su sueldo restante es  ", sueldof
			
		SiNo
			Escribir "ingrese el monto" 
			Leer monto
			
			Segun suscripcion Hacer //tengo un problema con las suscripciones y las sumas de éstas, cierra el proceso en la primera entrada
				1:
					sueldof=sueldof-monto
					totalsuscrip=totalsuscrip+monto
					Escribir sueldof
				2:
					sueldof=sueldof-monto
					totalsuscrip=totalsuscrip+monto
					Escribir sueldof
				3:
					sueldof=sueldof-monto
					totalsuscrip=totalsuscrip+monto
					Escribir sueldof
				4:
					sueldof=sueldof-monto
					totalsuscrip=totalsuscrip+monto
					
					Escribir sueldof
				5:
					sueldof=sueldof-monto
					totalsuscrip=totalsuscrip+monto
					
					Escribir sueldof
				De Otro Modo:
					Escribir "debe escribir un número del 1 al 6 "
					
					
			FinSegun
		FinSi
	Hasta Que suscripcion=6
	Escribir "su sueldo inicial con los aumentos fue de  ", sueldo, " pesos"
	Escribir " "
	Escribir "ha gastado  ", tarjetas, "  en tarjetas, que equivale a  ", tarjetas*100/sueldo, "% de su sueldo" 
	Escribir arreglos " pesos en arreglos, que equivale a  ", arreglos*100/sueldo, "% de su sueldo"
	Escribir supermercado, " en supermercado, que equivale a  ", supermercado*100/sueldo, "% de su sueldo"
	Escribir servicios, " en servicios que equivale a  ", servicios*100/sueldo, "% de su sueldo"
	Escribir totalsuscrip " en suscripciones, que equivale a  ", totalsuscrip*100/sueldo, "% de su sueldo"
	Escribir "El total de gastos que ha tenido durante este período es de  ", tarjetas+servicios+arreglos+supermercado+totalsuscrip
	
FinAlgoritmo


