Algoritmo NotasYPromedio
	Dimension notas[8]
	Definir notas, i, aprobados, desaprobados Como Entero
	Definir suma, promedio Como Real
	aprobados <- 0
	desaprobados <- 0
	suma <- 0
	Escribir "=== INGRESO DE NOTAS (0 a 10) ==="
	Para i <- 1 Hasta 8 Con Paso 1 Hacer
		Repetir
			Escribir "Ingrese la nota del estudiante ", i, ":"
			Leer notas[i]
			Si notas[i] < 1 O notas[i] > 10 Entonces
				Escribir "[ERROR] Debe ser entre 1 y 10."
			FinSi
		Hasta Que notas[i] >= 1 Y notas[i] <= 10
		suma <- suma + notas[i]
	FinPara
	Escribir ""
	Escribir "=== RESULTADOS INDIVIDUALES ==="
	Para i <- 1 Hasta 8 Con Paso 1 Hacer
		Si notas[i] >= 6 Entonces
			Escribir "Posicion ", i, " - Nota: ", notas[i], " -> APROBADO"
			aprobados <- aprobados + 1
		Sino
			Escribir "Posicion ", i, " - Nota: ", notas[i], " -> DESAPROBADO"
			desaprobados <- desaprobados + 1
		FinSi
	FinPara
	promedio <- suma / 8
	Escribir ""
	Escribir "=== RESUMEN GENERAL ==="
	Escribir "Estudiantes aprobados: ", aprobados
	Escribir "Estudiantes desaprobados: ", desaprobados
	Escribir "Suma total de notas: ", suma
	Escribir "Promedio general: ", promedio
FinAlgoritmo