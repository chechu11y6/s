Algoritmo porcentaje_aumento
	Definir porcentaje, sueldoi, sueldof, suma, meses, aumento, x, gastos, gasto, monto Como Real
	
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
	
	 
		Escribir "ingrese el tipo de gasto"
		Escribir "1- tarjetas , 2- servicios, 3- arreglos, 4-supermercado, 5-salir (doble enter luego)"
		Leer gasto
		Escribir "ingrese el monto"
		Leer monto
		
		si gasto=5
			Escribir "Su sueldo restante es  ", sueldof
		SiNo
			
			
			Segun gasto Hacer
				1:
					sueldof=sueldof-monto
					
					Escribir sueldof
				2:
					sueldof=sueldof-monto
					
					Escribir sueldof
				3:
					sueldof=sueldof-monto
					
				4:
					sueldof=sueldof-monto
					
					Escribir sueldof
				De Otro Modo:
					Escribir "su sueldo sigue intacto y es de  ", sueldof, " o debe escribir un número del 1 al 4 "
					
					
			FinSegun
		FinSi
		
		Escribir "sueldo restante=  ",sueldof
		
	FinMientras
	
	
FinAlgoritmo
