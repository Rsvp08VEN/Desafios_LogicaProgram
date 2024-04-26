//funcion para buscar nombres en el arreglo nombre
funcion nom=buscar_elemento(n, arreglo, dato)
Definir nom Como Caracter
definir i como entero

i=1

encontro=falso

repetir
	
	si Mayusculas( arreglo[i])= Mayusculas(dato) entonces
		
		encontro=verdadero
		nom=arreglo[i]
	SiNo
		
		i=i+1
		
	FinSi
Hasta Que encontro=verdadero o i>n
FinFuncion



//funcion para validar un dato
Funcion validado<-val_num(msj,min,max)

	Repetir
		
		mostrar msj
		
		leer num
		
		si no (num>=min y num<=max) entonces
			
			mostrar "Dato invalido ingrese un valor entre " min " y " max
			
		FinSi
		
	Hasta Que num>=min y num<=max
	
	validado=num
FinFuncion


//funcion para sacar promedio de un arreglo
funcion promedio=promediar_arreglo(n,arreglo)
	
	definir acumulador como real
	
	acumulador=0
	
	para i=1 hasta n
		
		acumulador=acumulador+arreglo[i]
		
	FinPara
	
	promedio=acumulador/n
	
FinFuncion

funcion suma=suma_arreglo(n,arreglo)
	
	definir acumulador como real
	
	acumulador=0
	
	para i=1 hasta n
		
		acumulador=acumulador+arreglo[i]
		
	FinPara
	
	suma=acumulador
	
FinFuncion


//modulo para buscar elemento en un arreglo
SubProceso buscar_ver(lim_arreglo,nombre,precio,cantidad)
	Definir articulo como caracter
	Definir codigo_unico Como Entero
	//esta variable tiene como finalidad simular el codigo de un producto registrado en un inventario
	//esto ayuda a diferenciar el resultado del nombre ingresado para ejecutar la Funcion 
	//buscar nombre
	codigo_unico=Aleatorio(10000,30000)
	 
	Mostrar "Ingrese el articulo a buscar"
	Leer articulo
	
	hayado=buscar_elemento(lim_arreglo,nombre,articulo)
	
		para i=1 hasta lim_arreglo
			si hayado == nombre[i] Entonces
				Mostrar ""
				Mostrar "Resultado de la busqueda en el inventario"
				Mostrar "+++++++++++++++++++++++++++"
				Mostrar nombre[i] " #" codigo_unico 
				Mostrar "+++++++++++++++++++++++++++"
			FinSi
		FinPara
	
FinSubProceso

//modulo para calcular el monto ingresado por cada producto y el monto final de el inventario
SubProceso calculos(lim_arreglo,nombre,precio,cantidad,monto_inv Por Referencia)
	Definir i,j Como Entero
	
	para i=1 hasta lim_arreglo
		monto_inv[i]=cantidad[i]*precio[i]
	FinPara
FinSubProceso

//modulo para agregar datos a los arreglos

SubProceso cargar_arreglos(nombre por Referencia, precio Por Referencia, cantidad Por Referencia,lim_arreglo) 
	Definir i Como Entero
	//validando que el limite de el arreglo sea 7 o menor a 7
    si lim_arreglo <= 7  entonces
		para i=1 Hasta lim_arreglo
			Mostrar "Ingrese el nombre del Electrodomestico numero " i  
			Leer nombre[i]
			//validando el precio y la cantidad ingresada
			precio[i]=val_num("Ingrese el precio del Electrodomestico " ,100,1000)
			cantidad[i]=val_num("Ingrese la cantidad vendida de los Electrodomesticos ",0,20) 
		FinPara

    SiNo
		si lim_arreglo>7
			Mostrar "Error"
			Mostrar "El limete del los arreglos es de 7"
		FinSi
    FinSi
FinSubProceso

//modulo para mostrar en pantalla datos del inventario
SubProceso ver_pant(lim_arreglo,nombre,precio,cantidad,monto_inv)
	Mostrar "Promedio de Precio de los Electrodomestivos"
	Mostrar "||||||||||||||||||||||||||||||||||||||||||"
	Mostrar promediar_arreglo(lim_arreglo,precio)
	Mostrar "||||||||||||||||||||||||||||||||||||||||||"
	Mostrar ""
	Mostrar "Lista de Ganancias por Cadad Articulo vendido"
	Mostrar "******************************************"
	para i=1 hasta lim_arreglo
		Mostrar nombre[i] " - " monto_inv[i] "$"
	FinPara
	Mostrar "******************************************"
	Mostrar ""
	Mostrar "Ganancias Totales de Todo el Inventario"
	Mostrar "_________________________________________"
	Mostrar "" suma_arreglo(lim_arreglo,monto_inv) "$"
	Mostrar "_________________________________________"
FinSubProceso
//modulo de menu que controla el llamado de los otros modulos
SubProceso menu() 
	Definir opc Como Entero
	Repetir
		Mostrar "Bienvenidos"
		Mostrar "------------------------------"
		Mostrar "1. Ingresar nuevos articulos vendidos al inventario"
		Mostrar "2. Calculos Administrativos "
		Mostrar "3. Datos del inventario"
		Mostrar "4. Buscar articulos en el inventario"
		Mostrar "5. Salir"
		Mostrar "------------------------------"
		Mostrar "Cual opcion desea elegir"
		Leer opc
		Segun (opc)
			
			1:
				Mostrar "Ingrese la cantidad de datos a procesar    (Maximo 7)"
				Leer lim_arreglo
				si lim_arreglo<=0 Entonces
					Mostrar ""
					Mostrar "Error"
					Mostrar "Opcion no disponible,  "
					Mostrar "hasta ingresar algun Electrodomesticos al menu"
					Mostrar ""
				SiNo
						Dimension nombre[lim_arreglo] 
						Dimension precio[lim_arreglo]
						Dimension cantidad[lim_arreglo]
						Dimension monto_inv[lim_arreglo]
						cargar_arreglos(nombre,precio,cantidad,lim_arreglo)
				FinSi
				Mostrar ""
				Mostrar "Presione una tecla para continuar"
				Esperar Tecla
				Limpiar Pantalla
				
				
			2:
				Mostrar "Realizando Calculos"
				Esperar 1 Segundos
				Limpiar Pantalla
				si lim_arreglo<=0 Entonces
					Mostrar ""
					Mostrar "Error"
					Mostrar "Opcion no disponible,  "
					Mostrar "hasta ingresar algun plato al menu"
					Mostrar ""
				SiNo
					calculos(lim_arreglo,nombre,precio,cantidad,monto_inv)
					Mostrar "Calculos realizados Existosamente"
			FinSi
			Esperar 2 Segundos
			Limpiar Pantalla
				
				
			3:
				si lim_arreglo<=0 Entonces
					Mostrar ""
					Mostrar "Error"
					Mostrar "Opcion no disponible,  "
					Mostrar "hasta ingresar algun Electrodomesticos al menu"
					Mostrar ""
				SiNo
					para i=1 Hasta lim_arreglo
						si monto_inv[i]>0 Entonces
							
								ver_pant(lim_arreglo,nombre,precio,cantidad,monto_inv)
							i=lim_arreglo
						FinSi
						
					FinPara
					
					
				FinSi
				Mostrar "Presione una tecla para continuar"
				Esperar Tecla
				Limpiar Pantalla
				
				
			4:
				si lim_arreglo<=0 Entonces
					Mostrar ""
					Mostrar "Error"
					Mostrar "Opcion no disponible,  "
					Mostrar "hasta ingresar algun plato al menu"
					Mostrar ""
				SiNo
					 buscar_ver(lim_arreglo,nombre,precio,cantidad)
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
		
	Mientras Que (opc<>5)
FinSubProceso


Algoritmo desafio2
	menu()
FinAlgoritmo
