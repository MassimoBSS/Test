Algoritmo AnalisisNumeros
    Definir numeros, pares, impares, i Como Entero 
    Definir mayorNum, menorNum, posMayor, posMenor Como Entero
    Dimension numeros[10]
    pares = 0
    impares = 0
    Escribir "=== CARGAR 10 NÚMEROS ENTEROS ==="
    Para i = 1 Hasta 10 Con Paso 1 Hacer
        Escribir "Ingrese el numero para la posicion ", i, ":"
        Leer numeros[i]
    FinPara
    mayorNum = numeros[1]
    posMayor = 1
    menorNum = numeros[1]
    posMenor = 1
    Para i = 1 Hasta 10 Con Paso 1 Hacer
        Si numeros[i] MOD 2 = 0 Entonces
            pares = pares + 1
        Sino
            impares = impares + 1
        FinSi
        Si numeros[i] > mayorNum Entonces
            mayorNum = numeros[i]
            posMayor = i
        FinSi
        Si numeros[i] < menorNum Entonces
            menorNum = numeros[i]
            posMenor = i
        FinSi
    FinPara
    Escribir ""
    Escribir "=== RESULTADOS ==="
    Escribir "Cantidad de numeros pares: ", pares
    Escribir "Cantidad de numeros impares: ", impares
    Escribir "Numero mayor: ", mayorNum, " (Aparece por primera vez en la posicion ", posMayor, ")"
    Escribir "Numero menor: ", menorNum, " (Aparece por primera vez en la posicion ", posMenor, ")"
FinAlgoritmo