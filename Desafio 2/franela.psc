//modulo para recoleccion de datos
SubProceso ingresar_datos(nombre Por Referencia, canti Por Referencia)
	Mostrar "-----Ingrese sus Datos-----"
	Mostrar "Ingrese su Nombre: "
	Leer nombre 
	Mostrar "Ingresar la Cantidad a llevar: "
	Leer canti
FinSubProceso
//modulo para la seleccion y validacion del tipo y precio de la Franela
SubProceso fran_talla( canti Por Valor,talla Por Referencia,val_talla Por Referencia)
	Definir resp Como caracter
	si canti>0 Entonces
		
	
	Repetir
		si canti>0 Entonces
			Mostrar "A -> 25 bs"
			Mostrar "B -> 150 bs"
			Mostrar "C -> 165 bs"
			Mostrar "-------------------------"
			Mostrar "Que talla deseas escoger:"
			Leer talla
			si talla =	"A" o talla = "a" Entonces
				val_talla = 25
			SiNo
				si talla =	"B" o talla = "b" Entonces
					val_talla = 150
				SiNo
					si talla =	"c" o talla = "C" Entonces
						val_talla =165
					SiNo
						mostrar "Elige una talla correcta"
					FinSi
				FinSi
			FinSi
		SiNo
			
			 resp = 'N'
		FinSi
		Mostrar ""
		Mostrar "¿Esta Seguro que desea ese Tipo de Franela ? (S/N)"
		Leer resp
		Esperar 1 Segundos
		Limpiar Pantalla
	Hasta Que (resp ="S" o resp ="s")
SiNo
	Mostrar "No puedes comprar menos de 1 franella"
FinSi
FinSubProceso

//submodulo para validar si existe descuento o no
SubProceso descuento(canti por Valor,desc por Referencia) 
	si canti>=24 Entonces
		desc= 0.15
	SiNo
		si canti>=6 y canti<=11  Entonces
			desc=0.05
		SiNo
			desc=0
		FinSi
	FinSi
FinSubProceso
//modulo de calculos varos
SubProceso calcular(canti Por Valor,val_talla por Valor, desc Por Valor,monto_com Por Referencia,monto_des Por Referencia,monto_pagar Por Referencia) 

	fran_talla(canti,talla,val_talla)
	monto_com=canti*val_talla
	descuento(canti,desc)
	monto_des=monto_com*desc
	monto_pagar=monto_com-monto_des
FinSubProceso
//modulo para mostrar en pantalla los datos recolectado y calculados
SubProceso ver_pant(nombre por Valor,canti Por Valor,monto_com Por Valor,monto_des Por Valor,monto_pagar Por Valor) 
	si canti>0 Entonces
		Mostrar "-------Factura-------"
		Mostrar "Nombre: " nombre
		Mostrar "Cantidades Solicitadas: " canti
		Mostrar "Monto de Compra: " monto_com " Bs"
		Mostrar "Descuento: " monto_des "Bs"
		Mostrar "Monto a Pagar: " monto_pagar " Bs"
		Mostrar "---------------------"
	SiNo
		Mostrar ""
		Mostrar "Error"
	FinSi

FinSubProceso

//cuerpo principal del programa ,donde se llama a la funcion 
Algoritmo ventas_franelas

	Definir resp como caracter
    Repetir
		Mostrar "Bienvenido"
		Esperar 2 Segundos
		Limpiar Pantalla
		ingresar_datos(nombre,canti)
		calcular(canti,valT,desc,montC,montD,montP)
		ver_pant(nombre,canti,montC,montD,montP)
		Mostrar "¿Desea continuar? (S/N)"
		Leer resp
		Esperar 2 Segundos
		Limpiar Pantalla
	Hasta Que (resp="N" o resp="n")

	Mostrar ""
	Mostrar "Pulse Cualquier Tecla para  Finalizar"
	Esperar Tecla
	Limpiar Pantalla
	Mostrar "Vuelva Pronto"
FinAlgoritmo
