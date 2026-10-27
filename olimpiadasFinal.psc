Algoritmo Categoria_4
	Dimension nombreJuego[10], codigoUnico[10], categoria[10], precioVenta[10], precioAlquiler[10], estado[10], edadRecomendada[10]
	Dimension nombreCliente[10], DNIcliente[10], limiteAlquileres[10]
	
	Definir nombreJuego, categoria, estado Como Cadena
	Definir i, opcion, codigoUnico, precioVenta, precioAlquiler, edadRecomendada, cantidadJuegos, codigoBuscar Como Entero
	Definir encontrado Como Logico
	cantidadJuegos <- 0
	
	Repetir
		Escribir "[]GESTOR=DE=VENTAS=Y=ALQUILER=DE=JUEGOS[]"
		Escribir "[ (1) Registrar Juego                   ]"
		Escribir "[ (2) Modificar datos de juego          ]"
		Escribir "[ (3) Listar catálogo [Vender/Alquilar] ]"
		Escribir "[ (4) Registrar devolución              ]"
		Escribir "[ (5) Finalizar.                        ]"
		Escribir "[]=====================================[]"
		Leer opcion
		Segun opcion Hacer
			1:
				Si cantidadJuegos < 10 Entonces
					
					cantidadJuegos = cantidadJuegos + 1
					i = cantidadJuegos
					
					Escribir "Ingrese el nombre del juego:"
					Leer nombreJuego[i]
					Escribir "Ingrese código único:"
					Leer codigoUnico[i]
					Escribir "Ingrese categoría:"
					Leer categoria[i]
					Escribir "Ingrese edad recomendada:"
					Leer edadRecomendada[i]
					Escribir "Ingrese precio de venta:"
					Leer precioVenta[i]
					Escribir "Ingrese precio de alquiler:"
					Leer precioAlquiler[i]
					
					estado[i] = "[Disponible]"
					Escribir "[Registrado con éxito]"
					
				Sino
					Escribir "Error: No se pueden registrar más de 10 juegos."
				FinSi
				
				Esperar 1 Segundos
				Limpiar Pantalla
			2:
				Si cantidadJuegos = 0 Entonces
					Escribir "No hay juegos registrados"
				Sino
					Escribir "Ingrese el código único del juego a modificar:"
					Leer codigoBuscar
					encontrado = Falso
					
					Para i = 1 Hasta cantidadJuegos Con Paso 1 Hacer
						Si codigoBuscar = codigoUnico[i] Entonces
							encontrado = Verdadero
							
							Escribir "Juego encontrado: ", nombreJuego[i]
							Escribir "Ingrese el nuevo nombre del juego:"
							Leer nombreJuego[i]
							Escribir "Ingrese nueva categoría:"
							Leer categoria[i]
							Escribir "Ingrese nueva edad recomendada:"
							Leer edadRecomendada[i]
							Escribir "Ingrese nuevo precio de venta:"
							Leer precioVenta[i]
							Escribir "Ingrese nuevo precio de alquiler:"
							Leer precioAlquiler[i]
							Escribir "[Datos modificados con éxito]"
						FinSi
					FinPara
					
					Si encontrado = Falso Entonces
						Escribir "El código ingresado no corresponde a ningún juego."
					FinSi
				FinSi
				
				Esperar 2 Segundos
				Limpiar Pantalla
			3:
				Escribir "              ===LISTA DE JUEGOS DISPONIBLES==="
				Escribir "-------------------------------------------------------------"
				
				Para i = 1 Hasta cantidadJuegos Con Paso 1 Hacer
					Escribir "Juego: ", nombreJuego[i],  " (+", edadRecomendada[i], ")       Código 	Único: " codigoUnico[i] 
					Escribir "Tipo de juego: ", categoria[i]
					Escribir "Precio: ALQUILER $", precioAlquiler[i], " / VENTA $", precioVenta[i]
					Escribir "-------------------------------------------------------------"
				Fin Para
				
				Esperar Tecla
				Limpiar Pantalla
				
			4:
				Esperar 1 Segundos
				Limpiar Pantalla
				
			5:
				Escribir "Saliendo del sistema..."
				
			De Otro Modo:
				Escribir "La opción ", opcion, " no existe."
				Esperar 1 Segundos
				Limpiar Pantalla
		FinSegun
	Hasta Que opcion = 5
FinAlgoritmo