SubProceso ingresar_datos(canti_chefs por Referencia,canti_platos_totales Por Referencia,cont_hombres por Referencia,cont_mujeres Por Referencia,precio_plato_menor_5 Por Referencia,acum_precio_totales por Referencia)
	Definir j,i,canti_platos Como Entero
	Definir nombre, sexo Como Caracter
	Definir precio,acum_precio_platos Como Real
	
	canti_chefs=aleatorio(2,7)
	i=1
	j=1
	cont_hombres=0
	cont_mujeres=0
	acum_precio_totales=0
	acum_precio_platos=0
	precio_plato_menor_5=0
	
	Mostrar "En la cocina hay " canti_chefs " chefs disponibles"
	Mostrar ""
	Mostrar "Ingrese la Cantidad de platos de cada chef"
	Leer canti_platos
	canti_platos_totales=canti_chefs*canti_platos
	para i=1 Hasta canti_chefs Hacer
		Mostrar "Ingrese el nombre del Chef " i
		Leer nombre
		Mostrar "Ingrese el sexo del Chef (M o F)"
		Leer sexo
		si (sexo = "m") o (sexo ="M") Entonces
			cont_hombres=cont_hombres+1
		SiNo
			si (sexo = "f") o (sexo ="F") Entonces
				cont_mujeres=cont_mujeres+1
			FinSi
		FinSi
		para j=1 Hasta canti_platos Hacer
			Mostrar "Ingrese el precio del plato " j " del chef " nombre
			Leer precio
			si precio<=5 Entonces
				precio_plato_menor_5=precio_plato_menor_5+1
			FinSi
			acum_precio_platos=acum_precio_platos+precio
			acum_precio_totales=acum_precio_totales+precio
		FinPara
		
		Mostrar "El chef " nombre " prepara " canti_platos " platos y "
	    Mostrar "el promedio de precio de los platos preparados por el es: " calc_promedio(acum_precio_platos,canti_platos) "bs"
		acum_precio_platos=0
	
	FinPara
	
FinSubProceso

SubProceso datos_menu(canti_chefs,canti_platos_totales,acum_precio_totales,precio_plato_menor_5,cont_hombres,cont_mujeres)
	Mostrar "--------------------------------Datos Generales-------------------------"
	Mostrar "Cantidad total de platos del menú es de: " canti_platos_totales " platos"
	Mostrar "Promedio de precios de todos los platos del menú es de " calc_promedio(acum_precio_totales,canti_platos_totales) "bs"
	porcentaje_menu_y_cantidad_hombres_mujeres(canti_chefs,canti_platos_totales,precio_plato_menor_5,cont_hombres,cont_mujeres)
	Mostrar "------------------------------------------------------------------------"
FinSubProceso

SubProceso porcentaje_menu_y_cantidad_hombres_mujeres(canti_chefs,canti_platos_totales,precio_plato_menor_5,cont_hombres,cont_mujeres)
	Definir porcentaje_hombres, porcentaje_mujeres Como Real
	Mostrar "Porcentaje de platos del menú cuyo precio es inferior"
	Mostrar "a 5 es de " calc_porcentaje(canti_platos_totales,precio_plato_menor_5) "%"
	Mostrar "El numero de Chef´s Masculinos es de " cont_hombres " y su Porcentaje es " calc_porcentaje(canti_chefs,cont_hombres) "%"
	Mostrar "El numero de Chef´s Femeninos es de "  cont_mujeres " y su Porcentaje es " calc_porcentaje(canti_chefs,cont_mujeres) "%"
FinSubProceso

SubProceso menu()
	Definir resp Como Caracter
	Definir opc Como Entero
	Repetir
		Mostrar "······Menu·····"
		Mostrar "1. Ingresar Datos"
		Mostrar "2. Mostrar Datos Generales"
		Mostrar "3. Salir"
		Mostrar "···············"
		Mostrar "¿Cual Opcion Desea Escoger?"
		Leer opc
		Segun (opc)
			1:
				Esperar 1 Segundos
				Limpiar Pantalla
				ingresar_datos(canti_chefs,canti_platos_totales,cont_hombres,cont_mujeres,precio_plato_menor_5,acum_precio_totales)
				Mostrar ""
				Mostrar "Presione Cualquier Tecla para Continuar"
				Esperar Tecla
				Limpiar Pantalla

			2:
				Esperar 1 Segundos
				Limpiar Pantalla
				datos_menu(canti_chefs,canti_platos_totales,acum_precio_totales,precio_plato_menor_5,cont_hombres,cont_mujeres)
				Mostrar ""
				Mostrar "Presione Cualquier Tecla para Continuar"
				Esperar Tecla
				Limpiar Pantalla

			3:
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
			mientras Que ((opc<>3)o(opc<>3)) 

FinSubProceso


Funcion prom<-calc_promedio(acumulador,contador)
	si contador>0 entonces 
		prom=acumulador/contador
	sino
		Mostrar "Error"
		Mostrar "No se puede dividir entre 0"
	FinSi
	
FinFuncion

Funcion porc<-calc_porcentaje(contador_general,contador_especifico)
	si contador_general>0 entonces
		porc=contador_especifico/contador_general*100
	sino
		Mostrar ""
		Mostrar "Error"
		Mostrar "No se puede dividir entre 0"
		Mostrar ""
	FinSi
	
FinFuncion


Algoritmo desafio4
 menu()
FinAlgoritmo
