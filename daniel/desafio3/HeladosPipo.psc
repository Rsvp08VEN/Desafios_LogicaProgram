Algoritmo HeladosPipo
	Definir topping Como Caracter
	Definir precio,precio_tgs,totalPagar,helado_con_topping Como Real
	Definir cantidad Como Entero
	precio=2
	Mostrar "Saludos " "Bienvenidos a la Heladeria Pipo´s"
	Mostrar ""
	Mostrar "|||||||||||||||||||||||"
	Mostrar "** Topping Oreo    (O)"
	Mostrar "** Topping KitKat  (K)"
	Mostrar "** Topping Brownie (B)"
	Mostrar "|||||||||||||||||||||||"
	Mostrar ""
	Mostrar "Que Topping Desea Escoger: "
	Leer topping
	
	si no Mayusculas(topping)<> "O" Entonces
		precio_tgs=1.50
		helado_con_topping=precio+precio_tgs
		Mostrar "Su Helado con Topping de Oreo Vale: " helado_con_topping
	SiNo
		si Mayusculas(topping)= "K" Entonces
			precio_tgs=1.75
			helado_con_topping=precio+precio_tgs
			Mostrar "Su Helado con Topping de Kitkat Vale: " helado_con_topping
		SiNo
			si Mayusculas(topping)="B" Entonces
				precio_tgs=0.75
				helado_con_topping=precio+precio_tgs
				Mostrar "Su Helado con Topping de Brownie Vale: " helado_con_topping
			SiNo
				Mostrar "Lo sentimos  este tipo de topping no esta disponible ahora"
				Mostrar"Helado sin Topping Vale: " precio
			FinSi
		FinSi
	FinSi
	Mostrar "Cuantos Helados desea Llevar: "
	Leer cantidad
	
	totalPagar=cantidad*helado_con_topping
	
	si cantidad>0 Entonces
		si Mayusculas(topping)="O" Entonces
			Mostrar ""
			Mostrar "Factura"
			Mostrar ""
			Mostrar "Cantidad de Helado a LLevar: " cantidad 
			Mostrar "Tipo de Topping escogido: " Mayusculas(topping)
			Mostrar "Precio del Helado: " precio
			Mostrar "Precio del Topping: " precio_tgs
			Mostrar "Total a Pagar: " totalPagar
			Mostrar ""
		SiNo
		si Mayusculas(topping)="K" Entonces
			Mostrar ""
			Mostrar "Factura"
			Mostrar ""
			Mostrar "Cantidad de Helado a LLevar: " cantidad 
			Mostrar "Tipo de Topping escogido: " Mayusculas(topping)
			Mostrar "Precio del Helado: " precio
			Mostrar "Precio del Topping: " precio_tgs
			Mostrar "Total a Pagar: " totalPagar
			Mostrar ""
		SiNo
			si no Mayusculas(topping)<> "B" Entonces
					Mostrar ""
					Mostrar "Factura"
					Mostrar ""
					Mostrar "Cantidad de Helado a LLevar: " cantidad 
					Mostrar "Tipo de Topping escogido: " Mayusculas(topping)
					Mostrar "Precio del Helado: " precio
					Mostrar "Precio del Topping: " precio_tgs
					Mostrar "Total a Pagar: " totalPagar
					Mostrar ""
				SiNo
					Mostrar ""
					Mostrar "ERROR"
					Mostrar ""
					
					Mostrar "El Helado no puede valer menos de y/o el toppings no esta disponibles"
					Mostrar "reintente operacion"
				FinSi
			FinSi
        finsi
		
	SiNo
		Mostrar ""
		Mostrar "ERROR"
		Mostrar ""
		
		Mostrar "El Helado no puede valer menos de y/o el toppings no esta disponibles"
		Mostrar "reintente operacion"
	FinSi
FinAlgoritmo
