Algoritmo sin_titulo
	Definir resp,opc,nom,apell,eli Como Caracter
	Definir cantidad_cuenta Como Real
	Definir cedu,telefono,contra Como Entero
	Repetir
		Mostrar "A.Consultar Saldo."
		Mostrar "B.Afiliar al Club de Clientes."
		Mostrar "C.Elimiar Cuenta."
		Mostrar "¿Que Opcion desea Elegir?: "
		Leer opc
		
		Segun (opc)
			"a","A":cantidad_cuenta=Aleatorio(0,3000)
				Mostrar "Su Saldo es: " cantidad_cuenta "$"
			"b","B":Mostrar "Ingrese su Nombre y Apellido: "
				Leer nom,apell
				Mostrar "Ingrese su Cedula: "
				Leer cedu
				Mostrar "Ingrese su numero de telefono: "
				Leer telefono
				si (telefono<=0 )  Entonces
						Mostrar "Su numero de telefono no pude ser 0"
		


				SiNo
					Mostrar "Bienvenido (Sr o Sra)" nom "" apell " al club de clientes"
				FinSi
			"c","C":Mostrar "¿Desea Eliminar su Cuenta del Club de Clientes? (S/N)"
				Leer eli
				si eli = "S" o eli ="s" Entonces
					Mostrar "Ingrese su Contraseña: "
					Leer contra
					si (contra=12345) Entonces
						Mostrar "Su Cuenta fue Eliminada con Exito"
					SiNo
						si (no contra=12345) Entonces
							Mostrar "Contraseña Incorrecta"
							Mostrar "Su cuenta ha sido Bloqueada"
						FinSi
					FinSi
				FinSi
			De Otro Modo:
				Mostrar "Eliga una opcion disponible"
		FinSegun
		Mostrar "¿Desea continuar? S/N"
		Leer resp
	Hasta Que (resp == "N" o resp=="n")  
FinAlgoritmo
