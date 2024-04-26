Algoritmo jubilacion
	//declarando variables
	Definir edad,cotizaciones como entero 
	Definir sexo Como Caracter
	//presentacion a los usuarios
	Mostrar "Bienvenido a Instituto Venezolano de los Seguros Sociales"
	
	Esperar 1 Segundos
	Limpiar Pantalla
	//recoleccion de datos
	Mostrar "Ingrese su edad: "
	Leer edad
	Mostrar "Ingrese el numero de cotizaciones emitidas por el IVSS:"
	Leer cotizaciones
	Mostrar "(M) o (F)"
	Mostrar "Ingrese su Sexo: "
	Leer sexo
	//validando datos y Mostrando el pantalla el resultado correspondiente 
	si Mayusculas(sexo)="M" y no edad<=60 Entonces
		si cotizaciones>=750 Entonces
			Mostrar "Felicidades Usted Puede Optar por la Pension"
			Esperar 1 Segundos
			Limpiar Pantalla
			Mostrar "Datos del Aspirante"
			Mostrar "Edad: " edad
			Mostrar "Sexo: " Mayusculas(sexo)
			Mostrar "Cotizacion del IVSS: " cotizaciones
		SiNo
			si no cotizaciones>=750 Entonces
				Mostrar "Lo sentimos no cumple con las condiciones para Optar por una Pension"
			FinSi
			
		FinSi
	FinSi
	
		si Mayusculas(sexo)="F" y  edad>=55 Entonces
			si  cotizaciones>=750 Entonces
				Mostrar "Felicidades Usted Puede Optar por la Pension"
				Esperar 1 Segundos
				Limpiar Pantalla
				Mostrar "Datos del Aspirante"
				Mostrar "Edad: " edad
				Mostrar "Sexo: " Mayusculas(sexo)
				Mostrar "Cotizacion del IVSS: " cotizaciones
			SiNo
				si no cotizaciones>=750 Entonces
					Mostrar "Lo sentimos no cumple con las condiciones para Optar por una Pension"
				FinSi
			FinSi
		FinSi

		
		si no Mayusculas(sexo)="F" y no edad>=55 Entonces
			Mostrar "Lo sentimos no cumple con las condiciones para Optar por una Pension"
		FinSi
		
		si no Mayusculas(sexo)="M" y no edad>=66 Entonces
			Mostrar "Lo sentimos no cumple con las condiciones para Optar por una Pension"
		FinSi
FinAlgoritmo
