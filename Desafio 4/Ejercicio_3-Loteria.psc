Algoritmo Ejercicio_3
	//Declarando variables
	Definir num1,num2,loteria Como Real
	Definir vuelta,vuelta_num_elegido Como Entero
	Definir resp Como Caracter
	//Iniciando en 1 para el dato de la vueltas del ciclo
	
	vuelta=1
	
	//Recolectando datos
		Mostrar "Ingrese un numero"
		Leer num1
		Mostrar "Ingrese otro numero "
		Leer num2
		Mostrar "Presione cualquier tecla para continuar"
		Esperar Tecla
		Limpiar Pantalla
		//iniciando Ciclo
		Repetir
			//funcion para generar numeros aleatorios con 
			//los datos obtenidos anteriomente
			loteria=aleatorio(num1,num2)
			Mostrar "Su Numero de Loteria es: " loteria 
			Mostrar "¿Quiere Comprar este numero de la loteria? [S o N] o [s o n]"
			Leer resp
			//validando respuesta para guarda la iteracion
			//donde se eligio el numero
			si no resp<>"S" o resp="s" Entonces
				vuelta_num_elegido=vuelta
			FinSi
			Mostrar "Presione cualquier tecla para continuar"
			Esperar Tecla
			Limpiar Pantalla
			vuelta=vuelta+1
		Hasta Que (resp="S" o resp="s") 
		//mostrando en pantalla los resultados obtenidos
		Mostrar "Su Numero de loteria es: " loteria
		Mostrar "Se Escogio en la Iteracion o Vuelta: " vuelta_num_elegido
FinAlgoritmo
