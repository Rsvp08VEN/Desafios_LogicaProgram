Algoritmo desafio4req
	Definir boleto_loteria, num, num2, i Como Entero
	Definir salida Como Logico
	Definir opc Como Caracter
	i=1
	Mostrar "Ingrese un numero"
	Leer num
	Mostrar "Ingrese otro numero "
	Leer num2
	
	Repetir
		boleto_loteria=aleatorio(num,num2)
		Mostrar "Su Numero de Loteria es: " boleto_loteria
		Mostrar "¿Quiere Comprar este numero de la loteria? [S o N] o [s o n]"
		Leer opc
		si opc = "s" o opc = "S" Entonces
			Mostrar "Su Numero de loteria es: " boleto_loteria
			Mostrar "Se Escogio en la Iteracion o Vuelta: " i
			salida=Verdadero
		SiNo
			si opc ="n" o opc = "N" Entonces
				salida=Falso
			FinSi
		FinSi
		i=i+1
	Hasta Que (salida=Verdadero) 
	
FinAlgoritmo
