Algoritmo Ejercicio_4
	//declarando variables
	Definir saldo Como Real
	Definir cliente,clave,nombre,apellido,correo,resp Como Caracter
	Definir id,opc Como Entero
	//iniciando Ciclo con opciones para controlar el Switch
	Repetir
		Mostrar "---------Bienvenido---------"
		Mostrar "1.Consultar Saldo."
		Mostrar "2.Afiliar al Club de Clientes."
		Mostrar "3.Elimiar Cuenta."
		Mostrar "4.Salir"
		Mostrar "----------------------------"
		Mostrar "¿Que Opcion desea Elegir?: "
		Leer opc
		//iniciando el Condiconal segun con la opcion elegida
		Segun(opc)
			
			1:  esperar 1 segundos
				Limpiar Pantalla
				saldo=azar(3000)
				Mostrar "Su Saldo es: " saldo "$"
				Mostrar "Presione Cualquier Tecla para Continuar"
				Esperar Tecla
				Limpiar Pantalla
			2:  esperar 1 segundos
				Limpiar Pantalla
				mostrar"||||||Registro de Cllientes||||||"
				Mostrar "Ingrese su Nombre y Apellido: "
				Leer nombre,apellido
				Mostrar "Ingrese su Cedula: "
				Leer id
				Mostrar "Ingrese su Correo: "
				Leer correo   
				Esperar 1 Segundos
				Limpiar Pantalla
				Mostrar "...CARGANDO..."
				Esperar 1 Segundos
				Limpiar Pantalla
				si id >0 Entonces
					Mostrar "Felicidades , fue registrado con exito"
					Mostrar "Bienvenido al Club de Clientes"
					Mostrar ""
					Mostrar "Presione Cualquier Tecla para Continuar"
					Esperar Tecla
					Limpiar Pantalla
				SiNo
					Mostrar "Su numero de identificacion no pude ser 0"
					Mostrar "Presione Cualquier Tecla para Continuar"
					Esperar Tecla
					Limpiar Pantalla
				FinSi
				
			3:  esperar 1 segundos
				Limpiar Pantalla
				mostrar"+++++++++Eliminacion de Cuenta+++++++++"
				Mostrar "¿Esta Seguro de Querer Eliminar su Cuenta del Club de Clientes?"
				Mostrar "                           S o N"
				Leer resp
				si mayusculas(resp) = "S" Entonces
					Esperar 1 Segundos
					Limpiar Pantalla
					Mostrar "Ingrese su Contraseña: "
					Leer clave 
					si (clave="12345") Entonces
						Mostrar "Su Cuenta fue Eliminada con Exito"
					SiNo
						si (no clave="12345") Entonces
							Esperar 1 Segundos
							Limpiar Pantalla
							Mostrar "Contraseña Incorrecta"
							Mostrar "Su cuenta ha sido Bloqueada"
						FinSi
					FinSi
				FinSi
				Mostrar "Presione Cualquier Tecla para Continuar"
				Esperar Tecla
				Limpiar Pantalla
		FinSegun
		Mientras que (no opc=4)
	esperar 1 segundos
	Limpiar Pantalla
	Mostrar "Vuelva Pronto"
	
	
FinAlgoritmo
