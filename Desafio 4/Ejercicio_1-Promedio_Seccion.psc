Algoritmo Ejercicio_1
	//Declarando las Variables
	Definir vuelta,alumnos,nota como entero
	Definir suma_nota Como Real
    Definir prom Como Real
	//inicializando el valor que controlara las iteraciones del Ciclo
	vuelta=0
	//Recolectando Datos para empezar el Ciclo
	Mostrar "Ingrese la Cantidad de Estudiantes de la Seccion:"
	Leer alumnos
	//Realizando un ciclo para porder realizar la operaciones requeridas
	Mientras (no vuelta>=alumnos)
		
		Mostrar"Ingrese su Nota Final de la Materia (100/100 pts)"
		Leer nota
		suma_nota=suma_nota+nota
		vuelta=vuelta+1
	FinMientras
	//calculando las operaciones
	prom=suma_nota/alumnos
	//mostrando en pantalla los resultados obtenidos
	//usando una funcion para rendondear el valor de prom
	Mostrar "El promedio de la Seccion es: " redon(prom) "pts"
	Mostrar "Cantidad de Alumnos: " alumnos
	Mostrar "Notas Totales de los Alumnos: " suma_nota "pts"
	//valindando resultados
	si prom>=80 Entonces
		Mostrar "Felicidades la Seccion Aprobo el Curso"
	SiNo
		Mostrar "Lo sentimos ,Algunos Alumnos Reprobaron el Curso "
	FinSi


FinAlgoritmo
