Algoritmo TikTok
    Definir duracionVideo, tiempoVistoTotal, promedioTiempoVisto Como Real
    Definir totalUsuarios, totalLikes, totalComentarios, totalCompartidos Como Entero
    Definir porcentajeRetencionPromedio, puntajeFinal Como Real
    
    Escribir "=== SIMULADOR DE PONDERACIÓN GLOBAL DE TIKTOK ==="
    Escribir "Ingrese la duración total del video (en segundos): "
    Leer duracionVideo
    
    Repetir
        Escribir "Ingrese la cantidad total de usuarios que vieron el video (vistas): "
        Leer totalUsuarios
    Hasta Que totalUsuarios > 0
    
    Escribir "Ingrese la suma total de tiempo visto entre todos los usuarios (en segundos): "
    Leer tiempoVistoTotal
    
    Repetir
        Escribir "Ingrese la cantidad total de Likes recibidos: "
        Leer totalLikes
		si totalLikes > totalUsuarios Entonces
			Escribir "[No pueden haber más likes que usuarios]"
		FinSi
    Hasta Que totalLikes >= 0 Y totalLikes <= totalUsuarios
    
    Repetir
        Escribir "Ingrese la cantidad total de Comentarios recibidos: "
        Leer totalComentarios
    Hasta Que totalComentarios >= 0
    
    Repetir
        Escribir "Ingrese la cantidad total de veces que se Compartió el video: "
        Leer totalCompartidos
    Hasta Que totalCompartidos >= 0 
    
    promedioTiempoVisto <- tiempoVistoTotal / totalUsuarios
    porcentajeRetencionPromedio <- (promedioTiempoVisto / duracionVideo) * 100
    
    puntajeFinal <- (porcentajeRetencionPromedio * 0.5)
    
    puntajeFinal <- puntajeFinal + ((totalLikes / totalUsuarios) * 15)
    puntajeFinal <- puntajeFinal + ((totalComentarios / totalUsuarios) * 20)
    puntajeFinal <- puntajeFinal + ((totalCompartidos / totalUsuarios) * 25)
    
    Escribir "--------------------------------------------"
    Escribir "Tiempo Promedio Visto: ", promedioTiempoVisto, " segundos"
    Escribir "Porcentaje de Retención Promedio: ", porcentajeRetencionPromedio, "%"
    Escribir "Puntaje de Viralidad Calculado: ", puntajeFinal, " pts"
    Escribir "--------------------------------------------"
    
    Si puntajeFinal >= 50 Entonces
        Escribir "Decisión del Algoritmo: [RECOMENDAR VIDEO A MÁS USUARIOS]."
    Sino
        Escribir "Decisión del Algoritmo: [DETENER DIFUSIÓN]."
    FinSi
	
FinAlgoritmo