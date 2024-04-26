Algoritmo Desafio4_Requerimiento1
	Definir i Como Entero 
	Definir nta,alum Como Entero
	Definir promedio,nts_suma,escala100 Como Real
	Definir opc Como Caracter
	Definir valido Como Logico
	i=0
	Repetir
		
		Mostrar ""
		Mostrar "Welcome to Academy CADIF1"
		Mostrar "A.Consultar Promedio Seccion."
		Mostrar "B.Salir"
		Mostrar "¿Que Opcion desea Elegir?: "
		Leer opc
		Segun (opc)
			"a","A":Mostrar "Cuantos Alumnos hay en la Sección:"
				Leer alum
				Mientras (no i>=alum  )
					
					Mostrar"Ingrese su Nota Final de la Materia (100/100 pts)"
					Leer nta
					
					si nta>100 Entonces
						Mostrar "Error"
						Mostrar "La escala de notas es 100/100pts"
						Mostrar "El valor ingresado sobrepasa la escala"
						alum=0
					SiNo
						nts_suma=nts_suma+nta
					FinSi
					
					i=i+1
				FinMientras
				promedio=nts_suma/alum
				
				
				
				si (promedio>80)  Entonces
					Mostrar "Felicidades la seccion aprobo el curso"
				SiNo
					Mostrar "Lo sentimos la seccion no aprobo el curso"
				FinSi
				Mostrar ""
				Mostrar "El promedio de la Seccion es: " redon(promedio) "pts"
				Mostrar "Cantidad de Alumnos: " alum
				Mostrar "Notas Totales de los Alumnos: " nts_suma "pts"
		FinSegun
		
		
	Hasta Que (opc="b" o opc="B")
	
FinAlgoritmo
