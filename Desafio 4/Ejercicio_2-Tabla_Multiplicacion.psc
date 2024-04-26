Algoritmo Ejercicio_2
	//Declaracion de Variables
	Definir dato,multiplicacion Como Real
	Definir vuelta Como Entero
	//asignando valor para mostrar dese la 1era vuelta
	//para mostrar las tablas de muntiplicar desde 1 hasta 10
	vuelta=1
	//recolectando datos del usuario
	Mostrar "Ingrese Un Numero: "
	Leer dato
	//ejecutando un ciclo para Mostrar resultados
	Repetir
		Mostrar "Tabla de Multiplicar de " dato
        multiplicacion=vuelta*dato
		Mostrar vuelta "x" dato "= " multiplicacion
		vuelta=vuelta+1
		
	Mientras Que  (no vuelta>10)
	
	
FinAlgoritmo

