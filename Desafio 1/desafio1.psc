SubProceso cargar_arreglos(nombre_plato Por Referencia,precio_plato Por Referencia,limite_platos)
	Definir i Como Entero
	si limite_platos<=100 Entonces
		Para i=1 Hasta limite_platos
			Mostrar "Ingrese el nombre del plato numero " i  
			leer nombre_plato[i]
			Mostrar "Ingrese el precio del plato numero " i
			Leer precio_plato[i]
		FinPara
	SiNo
		si cantidad>100 Entonces
			Mostrar "Error"
			Mostrar "El limete del los arreglos es de 100"
		FinSi
	FinSi
FinSubProceso

SubProceso calculos_generales(nombre_plato,precio_plato,limite_platos,nombre_mayor Por Referencia,nombre_menor Por Referencia, posicion_may Por Referencia,posicion_men Por Referencia,promedio_precio Por Referencia) 
	Definir acumulador_precio Como real
	Definir i Como Entero
	precio_menor=99999
	precio_mayor=0
	posicion_may=0
	posicion_men=0
	para i=1 hasta limite_platos 
		acumulador_precio=acumulador_precio+precio_plato[i]
		si i==1 Entonces
			posicion_may=i
			precio_mayor=precio_plato[i]
			nombre_mayor=nombre_plato[i]
		finSi
		si precio_plato[i]>precio_mayor Entonces
			precio_mayor=precio_plato[i]
			nombre_mayor=nombre_plato[i]
			posicion_may=i
		FinSi
		
		
	FinPara
	
	para i=1 hasta limite_platos 
		si i==1 Entonces
			posicion_men=i
			precio_menor=precio_plato[i]
			nombre_menor=nombre_plato[i]
		finSi
		si precio_plato[i]<precio_menor Entonces
			nombre_menor=nombre_plato[i]
			precio_menor=precio_plato[i]
			posicion_men=i
			
		FinSi
		promedio_precio=calcular_prom(acumulador_precio,limite_platos)
		
	FinPara
	
FinSubProceso 

SubProceso ver_pant(limite_platos,precio_plato,nombre_plato,nombre_mayor,nombre_menor,posicion_may,posicion_men,promedio_precio)
	Mostrar ""
	Mostrar "El plato mas barato esta en la posicion " posicion_men " del menu, ese es " nombre_menor 
	
	Mostrar "El plato mas caro esta en la posicion " posicion_may " del menu, ese es " nombre_mayor 
	Mostrar ""
	Mostrar "Todos los Platos de menu"
	para cada plato de nombre_plato
		Mostrar plato
	FinPara
	Mostrar "------------------------"
	Mostrar "Platos Estrella"
	para i=1 hasta limite_platos 
		si precio_plato[i]>promedio_precio Entonces
			
			Mostrar nombre_plato[i]
		FinSi
	FinPara
	Mostrar ""
FinSubProceso

SubProceso buscar_plato(nombre_plato,precio_plato,limite_platos) 
	Definir num_busc Como Entero
	Mostrar "Ingrese el numero del plato que desea ordenar"
	Leer num_busc
	si num_busc>0 Entonces
		para i=1 Hasta limite_platos
			si num_busc==i Entonces
				Mostrar "El Plato seleccionado es "
				Mostrar nombre_plato[i] " = " precio_plato[i] "bs"
			FinSi
		FinPara
		Mostrar "Ese numero de plato no se encuentra en el menu"
	SiNo
		Mostrar "Ese numero de plato no se encuentra en el menu"
	FinSi

FinSubProceso


SubProceso menu ()
	Definir limite_platos,opc Como Entero 
	Repetir
		Mostrar "Bienvenido"
		Mostrar "-----------------------------------"
		Mostrar "1. Agregar platos al menu"
		Mostrar "2. Realizar Calculos Estadisticos "
		Mostrar "3. Mostrar datos del menu"
		Mostrar "4. Buscar plato en el menu"
		Mostrar "5. Salir"
		Mostrar "-----------------------------------"
		Mostrar "¿Que opcion desea elegir?"
		Leer opc
		Esperar 1 Segundos
		Limpiar Pantalla
		Segun (opc)
			1:
				
				
				Mostrar "Cuantos platos desea procesar? (LIMITE 100)"
				leer limite_platos
				si limite_platos<=0 Entonces
					Mostrar ""
					Mostrar "Error"
					Mostrar "Opcion no disponible,  "
					Mostrar "hasta ingresar algun plato al menu"
					Mostrar ""
				SiNo
				Dimension nombre_plato[limite_platos] 
				Dimension precio_plato[limite_platos]
				Mostrar ""
				Esperar 1 Segundos
				Limpiar Pantalla
				cargar_arreglos(nombre_plato,precio_plato,limite_platos)
			    FinSi
				Mostrar "Presione una tecla para continuar"
				Esperar Tecla
				Limpiar Pantalla
				
			2:
				
				
				Mostrar "Realizando Calculos"
				Esperar 1 Segundos
				Limpiar Pantalla
				si limite_platos<=0 Entonces
					Mostrar ""
					Mostrar "Error"
					Mostrar "Opcion no disponible,  "
					Mostrar "hasta ingresar algun plato al menu"
					Mostrar ""
				SiNo
					calculos_generales(nombre_plato,precio_plato,limite_platos,nombre_mayor,nombre_menor, posicion_may,posicion_men,promedio_precio)
					Mostrar "Calculos realizados Existosamente"
				FinSi
				Esperar 2 Segundos
				Limpiar Pantalla
				
			3:
				
				
				si limite_platos<=0 Entonces
					Mostrar ""
					Mostrar "Error"
					Mostrar "Opcion no disponible,  "
					Mostrar "hasta ingresar algun plato al menu"
					Mostrar ""
				SiNo
				ver_pant(limite_platos,precio_plato,nombre_plato,nombre_mayor,nombre_menor,posicion_may,posicion_men,promedio_precio)
			    FinSi
				Mostrar "Presione una tecla para continuar"
				Esperar Tecla
				Limpiar Pantalla
				
			4:
				si limite_platos<=0 Entonces
					Mostrar ""
					Mostrar "Error"
					Mostrar "Opcion no disponible,  "
					Mostrar "hasta ingresar algun plato al menu"
					Mostrar ""
				SiNo
					buscar_plato(nombre_plato,precio_plato,limite_platos)
				FinSi
				Mostrar "Presione una tecla para continuar"
				Esperar Tecla
				Limpiar Pantalla
				
			5:
				Mostrar "Usted Eligio Salir del Sistema"
				Mostrar "Presione una tecla para continuar"
				Esperar Tecla
				Limpiar Pantalla
				
			De Otro Modo:
				Mostrar ""
				Mostrar "Error"
				Mostrar "Eliga una opcion que este disponible"
				Mostrar "en el sistema"
				Mostrar ""
				Mostrar "Presione una tecla para continuar"
				Esperar Tecla
				Limpiar Pantalla
		FinSegun
	mientras Que (opc<>5) 
FinSubProceso

funcion promedio=calcular_prom(acumulador,cant)
	promedio=acumulador/cant
FinFuncion

Algoritmo desafio1

	menu()
	Mostrar "Vuelva pronto"
FinAlgoritmo
