Algoritmo helados_cali
	//declarando variables
	Definir precio,precio_toppings,total_pagar,helado_sinToppings Como Real
	Definir cantidad Como Entero
	Definir toppings Como Caracter
	//asignando valor a una variable
	precio=2
	//recoleccion de datos
	Mostrar "Bienvenidos a Helados Cali"
	Mostrar ""

	Esperar 1 Segundos
	Limpiar Pantalla
	Mostrar "Toppings"
	Mostrar "------------------"
	Mostrar "El topping de oreo= (O) ->   cuesta 1$"
	Mostrar "El topping de kitkat=(K) ->  cuesta 1.50$"
	Mostrar "El topping de brownie=(B) -> cuesta 0.75$"
	Mostrar "------------------"
	Mostrar "Cual desea llevar"
	Leer toppings
	
	

	//validando a datos
	si no Mayusculas(toppings)<>"O" Entonces
		precio_toppings=1
		Mostrar "Su Helado con Topping de Oreo Vale: " precio+precio_toppings
		
	SiNo
		si no Mayusculas(toppings)<>"K" Entonces
			precio_toppings=1.50
			Mostrar "Su Helado con Topping de Kitkat vale: " precio+precio_toppings
		SiNo
			si no Mayusculas(toppings)<>"B" Entonces
				precio_toppings=0.75
				Mostrar "Su Helado con Topping de Brownie vale: " precio+precio_toppings
				
			SiNo
				Mostrar "lo sentimos, no tenemos este topping."
				Mostrar "Helado sin toppings: " precio "$"
			FinSi
		FinSi
	FinSi
	
	//fin del requerimiento 2
	
	
	//inicio del Requerimiento 1
	//recolectando otros datos
	Mostrar "Cuantos helados desea llevar: "
	Leer cantidad
	//procesos con los datos recolectados de los Requeriemiento 2 y 3
	helado_sinToppings=precio*cantidad
	total_pagar=helado_sinToppings+precio_toppings
	
	Limpiar Pantalla
	//validando resultados y mostrando en pantalla
si no cantidad>0 Entonces
	Mostrar ""
	Mostrar "ERROR"
	Mostrar ""

	Mostrar "El Helado no puede valer menos de 1"
	Mostrar "reintente operacion"

SiNo
	si no Mayusculas(toppings) <> "O" Entonces
		Mostrar ""
		Mostrar "Factura"
		Mostrar "-----------------------"
		Mostrar "Cantidad de Helado a LLevar: " cantidad " c/u"
		Mostrar "Tipo de Topping escogido: " Mayusculas(toppings)
		Mostrar "Precio del Helado: " precio "$"
		Mostrar "Precio del Topping: " precio_toppings "$"
		Mostrar "Total a Pagar: " total_pagar "$"
		Mostrar "-----------------------"
 SiNo
	 si no  Mayusculas(toppings) <> "K" Entonces
		 Mostrar ""
		 Mostrar "Factura"
		 Mostrar "-----------------------"
		 Mostrar "Cantidad de Helado a LLevar: " cantidad "c/u"
		 Mostrar "Tipo de Topping escogido: " Mayusculas(toppings)
		 Mostrar "Precio del Helado: " precio
		 Mostrar "Precio del Topping: " precio_toppings
		 Mostrar "Total a Pagar: " total_pagar
		 Mostrar "-----------------------"
	 SiNo
		 si no  Mayusculas(toppings) <> "B" Entonces
			 Mostrar ""
			 Mostrar "Factura"
			 Mostrar "-----------------------"
			 Mostrar "Cantidad de Helado a LLevar: " cantidad "c/u"
			 Mostrar "Tipo de Topping escogido: " Mayusculas(toppings)
			 Mostrar "Precio del Helado: " precio
			 Mostrar "Precio del Topping: " precio_toppings
			 Mostrar "Total a Pagar: " total_pagar
			 Mostrar "-----------------------"
			 
		 SiNo
			 Mostrar ""
			 Mostrar "Factura"
			 Mostrar "-----------------------"
			 Mostrar "Cantidad de Helado a LLevar: " cantidad "c/u"
			 Mostrar "Tipo de Topping escogido: " Mayusculas(toppings)
			 Mostrar "Precio del Helado: " precio
			 Mostrar "Precio del Topping: " precio_toppings
			 Mostrar "Total a Pagar: " total_pagar
			 Mostrar "-----------------------"
			 
		 FinSi
	 FinSi
	 
	 FinSi
	 
	 FinSi

FinAlgoritmo
