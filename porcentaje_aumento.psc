Algoritmo porcentaje_aumento
	Definir porcentaje, sueldoi, sueldof, suma, meses, aumento, x, gastos, gasto, monto, suscripcion, totalsuscrip Como Real
	
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
	
	Escribir "ingrese sueldo"
	leer sueldoi
	sueldof=sueldoi
	Escribir "ingrese cantidad de meses del aumento, si no tuvo aumento ingrese 0"
	Leer meses
	si meses<>0
		Para x<-1 hasta meses Con Paso 1
			Escribir "escriba el porcentaje asignado"
			leer porcentaje
			aumento=sueldof*porcentaje/100
			mostrar "aumento es igual a ", aumento
			sueldof= sueldof+aumento
			Escribir "El sueldo actual será  ", sueldof
		FinPara
		Escribir "El incremento ha sido de  ", sueldof-sueldoi
	FinSi
	si meses=0
		sueldof=sueldoi
		
	FinSi
	
	Repetir
		
		repetir 
			Escribir "ingrese el tipo de gasto"
			Escribir "1- tarjetas , 2- servicios, 3- arreglos, 4-supermercado, 5-salir"
			
			Leer gasto
			si gasto< 1 o gasto >5
				Escribir "debe ingresar los números indicados"
			FinSi
		hasta que gasto >=1 Y gasto<= 5
		si gasto=5
			Escribir "Su sueldo restante es  ", sueldof
			
			
			
			
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
	
	Escribir "de acuerdo a los montos ingresados su sueldo restante es de  ", sueldof, " pesos"
	Escribir "ha gastado  ", tarjetas, "  en tarjetas, que equivale a  " 
	Escribir arreglos " pesos en arreglos"
	Escribir supermercado, " en supermercado"
	Escribir servicios, " en servicios"
	Escribir totalsuscrip " en suscripciones"
	Escribir "El total de gastos que ha tenido durante este período es de  ", tarjetas+servicios+arreglos+supermercado+suscripcion
	
FinAlgoritmo


