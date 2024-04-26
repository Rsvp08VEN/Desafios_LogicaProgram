SubProceso datos_ventas(ventas por referencia,suma_ventas Por Referencia)
	
	vuelta=1
	Mientras (vuelta<5)
		Mostrar "Ingrese los ventas totales del Mes de la Surcular Nro° " vuelta
		Leer ventas
		si ventas>0 Entonces
			suma_ventas=suma_ventas+ventas
		SiNo
			Mostrar "Error"
			Mostrar "ingrese una cantidad valida"
			vuelta=vuelta-1
			Esperar 1 Segundos
			Limpiar Pantalla
		FinSi
	
		vuelta=vuelta+1
	FinMientras
FinSubProceso

SubProceso promedio_ganancia(ventas Por Referencia,suma_ventas por valor, prom Por Referencia,gan_ven Por Referencia,porc por valor)
	
	porc=0.30
	prom=suma_ventas/4
	gan_ven=prom*porc
	

FinSubProceso

SubProceso factura (ventas Por Referencia,suma_ventas Por Referencia, prom Por Referencia,gan_ven Por Referencia,porc por valor)
	Mostrar "-------Factura-------"
	Mostrar "Suma de Las Ventas Totales de Todas Las Sucursales: " suma_ventas " $"
	Mostrar "Promedio de Ventas de Cada Sucursal: " prom " $"
	Mostrar "Ganancias de Este Mes para La Compañia: " gan_ven " $"
	Mostrar "---------------------"
FinSubProceso



Algoritmo desafio_1
	Mostrar "Bienvenidos"
	Esperar 1 Segundos
	Limpiar Pantalla
	datos_ventas(vent,suma_ven)
	promedio_ganancia(vent,suma_ven,pro,ga,porc)
	Mostrar "....CARGANDO...."
	Esperar 1 Segundos
	Limpiar Pantalla
	factura(vent,suma_ven,pro,ga,porc)
	Mostrar ""
	Mostrar "Pulse Cualquier Tecla para Finalizar"
	Esperar Tecla
	Limpiar Pantalla
	Mostrar "Vuelva Pronto"
FinAlgoritmo
