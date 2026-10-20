Algoritmo RegistroEdades
	Dimension edades[6]
	Definir edades, i Como Entero
	Escribir "=== REGISTRO DE EDADES DE ESTUDIANTES ==="
	Para i <- 1 Hasta 6 Con Paso 1 Hacer
		Escribir "Ingrese la edad del estudiante ", i, ":"
		Leer edades[i]
	FinPara
	Escribir ""
	Escribir "=== LISTADO DE EDADES ==="
	Para i <- 1 Hasta 6 Con Paso 1 Hacer
		Escribir "[Posicion ", i, "]: ", edades[i], " años"
	FinPara
FinAlgoritmo