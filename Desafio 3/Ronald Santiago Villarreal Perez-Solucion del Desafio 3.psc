Algoritmo desafio_3
	Definir nombre_empleado Como Caracter
	Definir salario_base,prom_venta,com_ven,bono_tick Como real
	Definir ventas_enero,ventas_febrero,ventas_marzo,salario_total Como real
	Definir dias_trab Como Entero
	
	Mostrar "Ingrese el nombre del empleado: "
	Leer nombre_empleado
	Mostrar ""
	Mostrar "Ingrese su Salario Base: "
	Leer salario_base
	Mostrar ""
	Mostrar "Ingresar las Ventas de Enero,Febreo y Marzo: "
	Leer ventas_enero,ventas_febrero,ventas_marzo
	Mostrar ""
	Mostrar "Ingrese los Dias que trabajo: "
	Leer dias_trab
	Mostrar ""
	
	
	prom_venta = (ventas_enero+ventas_febrero+ventas_marzo)/3
	
	com_ven = prom_venta*0.15
	
	bono_tick = 10*dias_trab
	
	salario_total = salario_base + com_ven + bono_tick
	Mostrar ""
	Mostrar "Recibo de Pago a Empleado"
	Mostrar "Nombre del Empleado: " nombre_empleado
	Mostrar "Dias Trabajados: " dias_trab " Dias"
	Mostrar "Salario Base: " salario_base " Bs"
	Mostrar "Promedio de Ventas: " prom_venta " Bs"
	Mostrar "Comisión por Ventas: " com_ven " Bs"
	Mostrar "Tickets de Alimentación: " bono_tick " Bs"
	Mostrar "Salario Total: " salario_total " Bs"
FinAlgoritmo
