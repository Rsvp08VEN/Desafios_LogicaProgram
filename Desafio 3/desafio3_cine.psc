funcion nposit<-leer_positivo(msj)
	Repetir
		Mostrar msj
		leer nposit
		si no nposit>0 entonces
			Mostrar "ERROR"
			Mostrar "Ingrese un numero positivo"
			Esperar 1 Segundos
			Limpiar Pantalla
		FinSi
	Hasta Que nposit>=0 
FinFuncion

Funcion num_rang<-leer_num(min,max,msj)
	Repetir
		Mostrar msj
		Esperar 2 Segundos
		Limpiar Pantalla
		num_rang=leer_positivo("Ingrese un numero para continuar ")
		si no (num_rang>=min y num_rang<=max) entonces
			Mostrar "ERROR"
			Mostrar " El debe estar entre " min " y " max
		FinSi
	Hasta Que (num_rang>=min y num_rang<=max)
FinFuncion

Funcion porcentaje<-porc(cantidad,precio)
	porcentaje=cantidad/precio*100
FinFuncion

Funcion canti_total<-calc_cant(cantidad,precio)
	canti_total=cantidad*precio
FinFuncion

Funcion text <- validar_cadena(dato)
	Repetir
		Mostrar "Ingrese " dato
		leer text
		si no (((Longitud(text)=3 y (Subcadena(text,1,1)="A" o Subcadena(text,1,1)="a")o(subcadena(text,1,1)="b" o Subcadena(text,1,1)="B")o(subcadena(text,1,1)="c" o Subcadena(text,1,1)="C")) y ((subcadena(text,2,2)="-"))) y ((subcadena(text,3,3)="0")o(subcadena(text,3,3)="1")o(subcadena(text,3,3)="2")o(subcadena(text,3,3)="3")o(subcadena(text,3,3)="4")o(subcadena(text,3,3)="5")o(subcadena(text,3,3)="6")o(subcadena(text,3,3)="7")o(subcadena(text,3,3)="8")o(subcadena(text,3,3)="9"))) Entonces
			Mostrar "Error"
			Mostrar "La Entrada ingresada esta fuera de los parametros"
			Mostrar "por favor ingrese una entrada tenga 3 caracteres, empiece en "
			Mostrar "A, B o C, que este seguida de un guion ( - ) y"
			Mostrar "que el numero este entre 0 y 9"
		FinSi
	Hasta Que (((Longitud(text)=3 y (Subcadena(text,1,1)="A" o Subcadena(text,1,1)="a")o(subcadena(text,1,1)="b" o Subcadena(text,1,1)="B")o(subcadena(text,1,1)="c" o Subcadena(text,1,1)="C")) y ((subcadena(text,2,2)="-"))) y ((subcadena(text,3,3)="0")o(subcadena(text,3,3)="1")o(subcadena(text,3,3)="2")o(subcadena(text,3,3)="3")o(subcadena(text,3,3)="4")o(subcadena(text,3,3)="5")o(subcadena(text,3,3)="6")o(subcadena(text,3,3)="7")o(subcadena(text,3,3)="8")o(subcadena(text,3,3)="9")))
FinFuncion

SubProceso ingresar_datos(num_sala Por Referencia,codigo_peli Por Referencia,asientos_disp Por Referencia,entradas_vend Por Referencia)
	Mostrar "Datos de la sala"
	Esperar 1 Segundos
	Limpiar Pantalla
	num_sala=leer_num(1, 8, "Numeros de salas disponibles" )
	codigo_peli=validar_cadena("Codigo de pelicula")
	Esperar 1 Segundos
	Limpiar Pantalla
	Mostrar "Asientos de la Sala"
	asientos_disp=leer_num(60, 150,"Cantidad de asientos disponibles")
	Esperar 1 Segundos
	Limpiar Pantalla
	entradas_vend=leer_num(0, asientos_disp,"Cantidad de asientos vendidos")
FinSubProceso

SubProceso calc_estadist(asientos_disp,entradas_vend,monto_sala Por Referencia,porcentaje_sala Por Referencia) 
	monto_sala=calc_cant(entradas_vend,3.5)
	porcentaje_sala=porc(entradas_vend,asientos_disp)
FinSubProceso

SubProceso lista(num_sala,codigo_peli,asientos_disp,entradas_vend,monto_sala,porcentaje_sala) 
	Mostrar "Datos de la Sala"
	Mostrar "--------------------------------------------"
	Mostrar "Numero de sala " num_sala
	Mostrar "Codigo de la Pelicula " Mayusculas(codigo_peli)
	Mostrar "Asientos Disponibles " asientos_disp
	Mostrar "Entradas Vendidas " entradas_vend
	Mostrar "Monto Generado por la sala: " monto_sala "$"
	Mostrar "Porcentaje de Ocupacion de la Sala: " porcentaje_sala "%"
	Mostrar "--------------------------------------------"
FinSubProceso

SubProceso menu()
	Definir opc Como Entero
	
	Repetir
		Mostrar "······Menu·····"
		Mostrar "1. Ingresar Datos"
		Mostrar "2. Calculos Estadisticos"
		Mostrar "3. Mostrar Datos y Calculos"
		Mostrar "4. Salir"
		Mostrar "···············"
		Mostrar "¿Cual Opcion Desea Escoger?"
		Leer opc
		Segun (opc)
			1:
				Esperar 1 Segundos
				Limpiar Pantalla
				ingresar_datos(num_sala,codigo_peli,asientos_disp,entradas_vend)
				Mostrar ""
				Mostrar "Presione Cualquier Tecla para Continuar"
				Esperar Tecla
				Limpiar Pantalla
			2:
				Esperar 1 Segundos
				Limpiar Pantalla
				Mostrar "Realizando calculos"
				calc_estadist(asientos_disp,entradas_vend,monto_sala,porcentaje_sala)
				Esperar 1 Segundos
				Limpiar Pantalla
				Mostrar "Calculos realizado exitosamente"
				Esperar 1 Segundos
				Limpiar Pantalla
				Mostrar ""
				Mostrar "Presione Cualquier Tecla para Continuar"
				Esperar Tecla
				Limpiar Pantalla
			3:
				Esperar 1 Segundos
				Limpiar Pantalla
				lista(num_sala,codigo_peli,asientos_disp,entradas_vend,monto_sala,porcentaje_sala)
				Mostrar ""
				Mostrar "Presione Cualquier Tecla para Continuar"
				Esperar Tecla
				Limpiar Pantalla
				
				
			4:
				Mostrar "Usted elgio salir del Sistema"
				Mostrar ""
				Mostrar "Presione Cualquier Tecla para Continuar"
				Esperar Tecla
				Limpiar Pantalla

			De Otro Modo:
				Mostrar "ERROR"
				Mostrar "Ingrese una Opcion Valida, por favor"
				Mostrar "Revise las opcines disponebles "	
		FinSegun
	Mientras Que (opc<>4)
FinSubProceso

Algoritmo desafio3_cine
	menu()
FinAlgoritmo
