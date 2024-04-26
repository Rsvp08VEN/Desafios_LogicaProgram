Algoritmo desafio4requerimiento2
	Definir num Como Entero
	Definir t_multi Como Entero
	Definir i Como Entero
	Definir resultado Como Entero
	Mostrar "Ingrese la tabla de multiplicar a mostrar:"
	Leer t_multi
	Mostrar "Hasta que numero se mostrara la tabla de multiplicar:"
	Leer num
	Para i=0 Hasta num Con Paso 1 Hacer
		resultado=t_multi*i
		Mostrar t_multi "X" i " =" resultado
	Fin Para
FinAlgoritmo
