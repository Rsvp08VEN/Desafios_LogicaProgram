Algoritmo Desafio_2
	//Declarando Variables
	Definir precio,desc,sub_total,monto_desc,total_pagar Como Real
	Definir nombre,id,tipo_boleto Como Caracter
	Definir cantidad Como Entero
	//Recoleccion de Datos
	Mostrar "Bienvenido"
	Esperar 3 Segundos
	Limpiar Pantalla
	Mostrar "Ingrese su Nombre: "
	Leer nombre
	Mostrar "Ingrese su Cedula: "
	Leer id
	Esperar 3 Segundos
	Limpiar Pantalla
	Mostrar "------------------------"
	Mostrar "Tipos de Bolestos"
	Mostrar "V.I.P = 500 $ (V) "
	Mostrar "Preferencial 300$ (P)"
	Mostrar "General 150$ (G)"
	Mostrar "------------------------"
	Mostrar "¿Que Boleto desea LLevar?"
	Leer tipo_boleto
	Mostrar "¿Cuantos Boletos Desea LLevar?"
	Leer cantidad
	Esperar 1 Segundos
	Limpiar Pantalla
	//Procesos para la Validacion de los Datos
	si Mayusculas(tipo_boleto) = "V" Entonces
		precio = 500 
	SiNo
		si Mayusculas(tipo_boleto) = "P" Entonces
			precio=300
		SiNo
			si Mayusculas(tipo_boleto) = "G" Entonces
				precio=150
			sino 
				Mostrar "El tipo de boleto seleccionado"
				Mostrar "no existe o no está disponible"
				Mostrar "solo tenemos tipo V, P y G"
				Mostrar ""
				Mostrar "compruebe los datos ingresados"
				Mostrar "y reintente la operacion"
				Mostrar ""
			FinSi
		FinSi
	FinSi
	sub_total = precio*cantidad
	si sub_total <= 400 Entonces
		desc=0.05
	SiNo
		si sub_total > 400   Entonces
			desc=0.07
			si sub_total <= 800 Entonces
				desc=0.07
			SiNo
				si sub_total >= 2400 Entonces
					desc=0.10
				SiNo
					desc = 0.01
					FinSi
				FinSi
			FinSi
			
		FinSi

	//asignacion de valores a la variables para el calculo de los procesos
	monto_desc=sub_total*desc
	total_pagar= sub_total - monto_desc
	//Mostrando en pantalla los resultados de los procesos y los datos ingresados por el usuario
	si cantidad >0 Entonces
	
		si precio>0 Entonces
			Mostrar "Factura"
			Mostrar "------------------------"
			Mostrar "Nombre " nombre
			Mostrar "Cedula " id
			Mostrar "Tipo de Boleto " Mayusculas(tipo_boleto)
			Mostrar "Cantidad a Llevar " cantidad
			Mostrar "Sub Total " sub_total " $"
			Mostrar "Monto a Descontar " monto_desc " $"
			Mostrar "Total a Pagar " total_pagar " $"
			Mostrar "------------------------"
		SiNo
			Mostrar ""
			Mostrar "El precio de los boletos no puede ser "
			Mostrar "menor a 0, reintente operacion "

		FinSi
	SiNo
		si cantidad < 0 Entonces
			Mostrar "NO puede comprar menos de 1 boleto"
			Mostrar "reintente operacion "
		FinSi

	FinSi
	
	
FinAlgoritmo
