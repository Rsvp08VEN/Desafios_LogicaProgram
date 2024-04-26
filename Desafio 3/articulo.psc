Algoritmo com_artc
	//declaracion de Variables
	Definir articulo Como Caracter
	Definir cantidad Como Entero
	Definir sub_total,total_pagar,descuento,precio,sub_total_2 Como Real
	//recoleccion de Datos
	Mostrar "Ingrese El articulo a Cancelar: "
	Leer articulo
	Mostrar "Ingrese La cantidad de articulos a llevar: "
	Leer cantidad
	precio= Aleatorio(50,100)
	//procesos 
	sub_total=precio*cantidad
	//validacion de datos
	si no sub_total > 1000 Entonces
		descuento=0.05
	SiNo
		descuento=0.10
	FinSi
	//otros procesos luego de validar los Datos
	sub_total_2=sub_total*descuento
	total_pagar=sub_total-sub_total_2
	
	//validando resultados de los procesos y mostrando en pantalla
	si cantidad >0 Entonces
		si precio>0 Entonces
			Mostrar "Factura"
			Mostrar "------------------"
			Mostrar "Articulo: " articulo
			Mostrar "Cantidad a llevar: " cantidad " c/u"
			Mostrar "Precio del Articulo: " precio " $"
			Mostrar "Precio sin el Descuento: " sub_total " $"
			Mostrar "Porcentaje de Descuento: " descuento "%"
			Mostrar "Monto del Descuento: " sub_total_2 " $"
			Mostrar "Monto a Pagar: " total_pagar " $"
			Mostrar "------------------"
		FinSi
	SiNo
		Mostrar "No se puede Procesar la operacion"
		Mostrar "No puede llevar menos de 1 producto en su compra"
		Mostrar "Revise sus datos y vuelva a intentarlo"
	FinSi
	
FinAlgoritmo
