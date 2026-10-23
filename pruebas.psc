Algoritmo finales
	Dimension notaAlumno[10], nombreAlumno[10]
	Definir notaAlumno, promedioClase Como Real
	Definir i, opcion, alumnoBuscar, notaCambiar Como Entero
	Definir nombreAlumno, nombreCambiar como cadena
	totalAlumnos = 0
	totalClase = 0
	Repetir
		Escribir "=========================="
		Escribir "/1. Registrar Estudiante /"
		Escribir "/2. Listar Estudiantes   /"
		Escribir "/3. Editar Notas         /"
		Escribir "/4. Finalizar            /"
		Escribir "=========================="
		leer opcion
		Segun opcion Hacer
			1:
				totalAlumnos = totalAlumnos + 1
				i = totalAlumnos
				Escribir "Ingrese nombre del alumno"
				leer nombreAlumno[i]
				Escribir "Ingrese la nota de " nombreAlumno[i]
				leer notaAlumno[i]
				Escribir "[REGISTRADO CON EXITO]"
				Esperar 1 Segundos
				Limpiar Pantalla
			2:
				Escribir "------------------------"
				Para i = 1 Hasta totalAlumnos Con Paso 1 Hacer
					Escribir "[" i "] " nombreAlumno[i] " - nota:(" notaAlumno[i] ")"
					Escribir "------------------------"
				Fin Para
				Escribir "Toque cualquier tecla para continuar"
				Esperar Tecla
				Limpiar Pantalla
			3:
				Escribir "Ingrese número de la lísta del alumno"
				leer alumnoBuscar
				Para i = 1 Hasta totalAlumnos Con Paso 1 Hacer
					Si alumnoBuscar = i Entonces
						Escribir "Alumno: " nombreAlumno[i]
						Escribir "Nota: " notaAlumno[i]
						Escribir ""
						Escribir "Editar su nota (1)"
						Escribir "Editar su nombre (2)"
						Leer opcion
						si opcion = 1 Entonces
							Escribir "Ingrese la nueva nota"
							leer notaCambiar
							notaAlumno[i] = notaCambiar
							Escribir "[GUARDADO CON EXITO]"
							Esperar 1 Segundos
							Limpiar Pantalla
						SiNo
							si opcion = 2 Entonces
								Escribir "Ingrese el nuevo nombre"
								leer nombreCambiar
								nombreAlumno[i] = nombreCambiar
								Escribir "[GUARDADO CON EXITO]"
								Esperar 1 Segundos
								Limpiar Pantalla
							FinSi
						FinSi
					FinSi
				Fin Para
			4:
				Escribir "Finalizando..."
			De Otro Modo:
				Escribir "La opción " opcion " no existe."
		Fin Segun
	Hasta Que opcion = 4
FinAlgoritmo