SubProceso ingresar_datos(cant_mer Por Referencia,nombre Por Referencia,preciomer por Referencia,precioMay Por Referencia,precioMen Por Referencia,sumapre Por Referencia, nomMay Por Referencia, nomMen Por Referencia) 
	Definir i Como Entero
	Mostrar "Bienvenido"
	Mostrar ""
	precioMay=0
	precioMen=0
	sumapre=0
	Mostrar "¿Cuantas Mermeladas desea Agregar?"
	Leer cant_mer
	si cant_mer>0 Entonces
		
		Para i=1 Hasta cant_mer  Hacer
		Mostrar "Ingrese el nombre de la Mermelada"
		Leer nombre
		Mostrar "Ingrese el Precio de la Mermelada"
		Leer preciomer
		sumapre=sumapre+preciomer
        si i==1 Entonces
			precioMay=preciomer
			precioMen=preciomer
			nomMay=nombre
			nomMen=nombre
		SiNo
			si preciomer>precioMay Entonces
				precioMay=preciomer
				nomMay=nombre
			SiNo
				si preciomer<precioMen Entonces
					precioMen=preciomer
					nomMen=nombre
				FinSi
			FinSi
		FinSi
	FinPara
SiNo
	Mostrar "Error"
	Mostrar "No puede Ingresar menos de 1 cantidad de mermelada"
   FinSi

FinSubProceso

SubProceso calc_estadist(precioMay,precioMen,nomMay,nomMen) 
	Mostrar "ººººInformacion Destacadaºººº"
	si Mayusculas(nomMay) == Mayusculas(nomMen) Entonces
		Mostrar "La unica mermelada agrega es " Mayusculas(nomMay) " con un valor de: " precioMay "$"
	SiNo
		Mostrar "La Mermelada màs Costosa es: " Mayusculas(nomMay) " con un valor de " precioMay "$"
		Mostrar "La Mermelada màs Accesible es: " Mayusculas(nomMen) " con un valor de " precioMen "$"
	FinSi

FinSubProceso

SubProceso prom_pre(sumapre,cant_mer,prom Por Referencia) 
	prom=pro(sumapre,cant_mer)
	Mostrar "El precio promedio de cada mermelada es de: " redon(prom) "$"
FinSubProceso

Funcion promedio<-pro(sumapre,cant_mer) 
	promedio=sumapre/cant_mer
FinFuncion

Funcion porcentaje<-porc(desc,precio)
	porcentaje=precio*desc
FinFuncion

SubProceso lista(desc Por Referencia,precio Por Referencia) 
	Definir tipo como Caracter
	Definir cantidad Como Entero
	Mostrar "*****Mermeladas******"
	Mostrar ""
	Mostrar "Fresa -> 85"
	Mostrar "Piña -> 45"
	Mostrar "Guayaba -> 63"
	Mostrar "Melocoton -> 94"
	Mostrar "Durazno -> 23"
	Mostrar "Albaricoque -> 88"
	Mostrar "Guanabana -> 92"
	Mostrar "Mango -> 48"
	Mostrar ""
	Mostrar "*********************"
	Mostrar "¿Cual desea Elegir?"
	Leer tipo
	Mostrar "Cuantas desea Llevar?"
	leer cantidad
    Segun (Mayusculas(tipo)) Hacer
		"FRESA": 
			si Mayusculas(tipo)="FRESA" Entonces
				precio=85
				desc=0.05
				monto_desc=porc(precio,desc)
			FinSi
			total=cantidad*(precio-monto_desc)
			Mostrar "El Precio con Descuento de " Mayusculas(tipo) " es: " total "$"
		"MELOCOTON":
			si Mayusculas(tipo)="MELOCOTON" Entonces
				precio=94
				desc=0.05
				monto_desc=porc(precio,desc)
			FinSi
			total=cantidad*(precio-monto_desc)
			Mostrar "El Precio con Descuento de " Mayusculas(tipo) " es: " total "$"
		"PIÑA":
			si Mayusculas(tipo)="PIÑA" Entonces
				precio=45
				desc=0.10
				monto_desc=porc(precio,desc)
			FinSi
			total=cantidad*(precio-monto_desc)
			Mostrar "El Precio con Descuento de " Mayusculas(tipo) " es: " total "$"
		"GUAYABA":
			si Mayusculas(tipo)="GUAYABA" Entonces
				precio=63
				desc=0.10
				monto_desc=porc(precio,desc)
			FinSi
			total=cantidad*(precio-monto_desc)
			Mostrar "El Precio con Descuento de " Mayusculas(tipo) " es: " total "$"
		"DURAZNO":
			si Mayusculas(tipo)="DURAZNO" Entonces
				precio=23
				desc=0.03
				monto_desc=porc(precio,desc)
			FinSi
			total=cantidad*(precio-monto_desc)
			Mostrar "El Precio con Descuento de " Mayusculas(tipo) " es: " total "$"
		"ALBARICOQUE":
			si Mayusculas(tipo)="DURAZNO" Entonces
				precio=88
				desc=0.03
				monto_desc=porc(precio,desc)
			FinSi
			total=cantidad*(precio-monto_desc)
			Mostrar "El Precio con Descuento de " Mayusculas(tipo) " es: " total "$"
		"GUANABANA":
			precio=92
			total=cantidad*precio
			Mostrar "El precio es de : " total "$"
		"MANGO":
			precio=48
			total=cantidad*precio
			Mostrar "El precio es de : " total "$"
		De Otro Modo:
			Mostrar "Error"
			Mostrar "La mermelada seleccionada"
			Mostrar "no esta disponible o no existe"
			Mostrar "Por Favor verifique los datos"
			Mostrar "y reintente la operacion"
	
	FinSegun
	
	
FinSubProceso


SubProceso menu()
	Definir opc Como Entero
	
	Repetir
		Mostrar "······Menu·····"
		Mostrar "1. Ingresar Datos"
		Mostrar "2. Mostrar Calculos Estadisticos"
		Mostrar "3. Calcular y Mostrar Promedio"
		Mostrar "4. Comprar"
		Mostrar "5. Salir"
		Mostrar "···············"
		Mostrar "¿Cual Opcion Desea Escoger?"
		Leer opc
		Segun (opc)
			1:
				Esperar 1 Segundos
				Limpiar Pantalla
				ingresar_datos(cantidad,nombre,precio,precioMayor,precioMenor,suma,nombreMayor,nombreMenor)
				Mostrar ""
				Mostrar "Presione Cualquier Tecla para Continuar"
				Esperar Tecla
				Limpiar Pantalla
			2:
				Esperar 1 Segundos
				Limpiar Pantalla
				calc_estadist(precioMayor,precioMenor,nombreMayor,nombreMenor)
				Mostrar ""
				Mostrar "Presione Cualquier Tecla para Continuar"
				Esperar Tecla
				Limpiar Pantalla
			3:
				Esperar 1 Segundos
				Limpiar Pantalla
				prom_pre(suma,cantidad,promedio)
				Mostrar ""
				Mostrar "Presione Cualquier Tecla para Continuar"
				Esperar Tecla
				Limpiar Pantalla
				
				
			4:
				Esperar 1 Segundos
				Limpiar Pantalla
				lista(desc,precio)
				Mostrar ""
				Mostrar "Presione Cualquier Tecla para Continuar"
				Esperar Tecla
				Limpiar Pantalla
			5: 
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
	Mientras Que (opc<>5)
FinSubProceso

Algoritmo desafio3
	menu()
FinAlgoritmo
