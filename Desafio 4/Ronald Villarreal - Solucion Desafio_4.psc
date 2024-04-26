Algoritmo Desafio_4
	//declarar variables, dias_alq_vehiculo = dias de alquiler del vehiculo
	Definir costo_diario,pago_inicial,total_alquiler,cuotas_diarias Como Real
	Definir nombre_cliente,modelo_vehiculo Como Caracter
	Definir dias_alq_vehiculo Como Entero
	
	//recoleccion de datos de entrada proporcionados por el usuario
	Mostrar " Bienvenidos a ACO REN A CAR"
	
	Mostrar "Ingrese su Nombre: "
	Leer nombre_cliente
	Mostrar "¿Que Modelo de Vehiculo desear Alquilar: ?"
	Leer modelo_vehiculo
	Mostrar "¿Cuantos Dias Utilizara el Vehiculo: ?"
	Leer dias_alq_vehiculo
	Mostrar ""
	Mostrar "Presione una tecla para continuar"
	Esperar Tecla
	Limpiar Pantalla

	//Procesos para realizar las opreaciones
	
	costo_diario=Aleatorio(50,300)
	total_alquiler=costo_diario*dias_alq_vehiculo
	pago_inicial=total_alquiler*0.35
	cuotas_diarias=(total_alquiler*0.65)/dias_alq_vehiculo
	
	//salida de los resultados de la operaciones 
	Mostrar "Recibo de Pago "
	Mostrar "--------------------------------"
	Mostrar "Nombre del Cliente: " nombre_cliente
	Mostrar "Modelo del Vehiculo: " modelo_vehiculo
	Mostrar "Costo Diario del Alquiler del Vehiculo: " costo_diario "$"
	Mostrar "Dias de ALquiler: " dias_alq_vehiculo
	Mostrar "Monto Total del Alquiler:  " total_alquiler "$"
	Mostrar "Pago Inicial: " pago_inicial "$"
	Mostrar "Cuotas Diarias: " cuotas_diarias "$"
	Mostrar "--------------------------------"
	Mostrar "Pulse una Tecla para Finalizar"
	Esperar Tecla
	Limpiar Pantalla
	Mostrar "Gracias Vuelva Pronto"
FinAlgoritmo
