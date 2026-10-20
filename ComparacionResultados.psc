Algoritmo ComparaciónResultados
	Dimensionar puntosRonda1[6]
	Dimensionar puntosRonda2[6]
	Definir puntosRonda1, puntosRonda2, i, mejoraron, empeoraron, igualaron, sumaRonda1, sumaRonda2, maxRonda2, posMaxR2 Como Entero
	Definir promedio1, promedio2 Como Real
	mejoraron = 0
	empeoraron = 0
	igualaron = 0
	sumaRonda1 = 0
	sumaRonda2 = 0
	Escribir "=== REGISTRO DE PUNTAJES DE LA COMPETENCIA ==="
	Para i = 1 Hasta 6 Con Paso 1 Hacer
		Escribir "--- Equipo ", i, " ---"
		Escribir "Puntos en Ronda 1:"
		Leer puntosRonda1[i]
		Escribir "Puntos en Ronda 2:"
		Leer puntosRonda2[i]
		sumaRonda1 = sumaRonda1 + puntosRonda1[i]
		sumaRonda2 = sumaRonda2 + puntosRonda2[i]
	FinPara
	Escribir ""
	Escribir "=== RENDIMIENTO POR EQUIPO ==="
	Para i = 1 Hasta 6 Con Paso 1 Hacer
		Escribir "Equipo ", i, " [Ronda 1]: ", puntosRonda1[i], " / [Ronda 2]: ", puntosRonda2[i]
		Si puntosRonda2[i] > puntosRonda1[i] Entonces
			Escribir "   Estado: MEJORO"
			mejoraron = mejoraron + 1
		Sino
			Si puntosRonda2[i] < puntosRonda1[i] Entonces
				Escribir "   Estado: EMPEORO"
				empeoraron = empeoraron + 1
			Sino
				Escribir "   Estado: MANTUVO SU PUNTAJE"
				igualaron = igualaron + 1
			FinSi
		FinSi
	FinPara
	Escribir ""
	Escribir "=== RESUMEN DE RENDIMIENTO GENERAL ==="
	Escribir "Equipos que mejoraron: ", mejoraron
	Escribir "Equipos que empeoraron: ", empeoraron
	Escribir "Equipos que mantuvieron puntaje: ", igualaron
	promedio1 = sumaRonda1 / 6
	promedio2 = sumaRonda2 / 6
	Escribir ""
	Escribir "=== COMPARACION DE PROMEDIOS ==="
	Escribir "Promedio Ronda 1: ", promedio1
	Escribir "Promedio Ronda 2: ", promedio2
	Si promedio1 > promedio2 Entonces
		Escribir "La Ronda 1 tuvo el promedio mas alto."
	Sino
		Si promedio2 > promedio1 Entonces
			Escribir "La Ronda 2 tuvo el promedio mas alto."
		Sino
			Escribir "Ambas rondas tuvieron el mismo promedio."
		FinSi
	FinSi
	maxRonda2 = puntosRonda2[1]
	posMaxR2 = 1
	Para i = 1 Hasta 6 Con Paso 1 Hacer
		Si puntosRonda2[i] > maxRonda2 Entonces
			maxRonda2 = puntosRonda2[i]
			posMaxR2 = i
		FinSi
	FinPara
	Escribir ""
	Escribir "=== MAYOR PUNTAJE EN RONDA 2 ==="
	Escribir "El mayor puntaje fue de ", maxRonda2, " puntos, obtenido por primera vez por el Equipo ", posMaxR2, "."
FinAlgoritmo