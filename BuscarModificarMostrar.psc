Algoritmo BuscarModificarMostrar
    Dimension productos[8]
    Definir productos, i, valorBuscar, posModificar, nuevoValor, opcion Como Entero
    Definir encontrado, inicializado Como Logico
    Para i = 1 Hasta 8 Con Paso 1 Hacer
        productos[i] = 0
    FinPara
    inicializado <- Falso
    Repetir
        Escribir "========================================"
        Escribir "       MENÚ DE GESTIÓN DE DEPÓSITO      "
        Escribir "========================================"
        Escribir "1. Cargar / Reiniciar stock inicial"
        Escribir "2. Mostrar listado de stock (Orden Normal)"
        Escribir "3. Mostrar listado de stock (Orden Inverso)"
        Escribir "4. Buscar productos por cantidad"
        Escribir "5. Modificar stock de un producto"
        Escribir "6. Salir"
        Escribir "========================================"
        Leer opcion
        Escribir ""
        Segun opcion Hacer
            1:
                Escribir "=== REGISTRO DE STOCK ==="
                Para i = 1 Hasta 8 Con Paso 1 Hacer
                    Escribir "Ingrese la cantidad del producto ", i, ": "
                    Leer productos[i]
                FinPara
                inicializado = Verdadero
                Escribir "¡Stock cargado con éxito!"
            2:
                Escribir "--- LISTADO DE STOCK (ORDEN NORMAL) ---"
                Para i = 1 Hasta 8 Con Paso 1 Hacer
                    Escribir "Producto ", i, ": ", productos[i], " unidades"
                FinPara
            3:
                Escribir "--- LISTADO DE STOCK (ORDEN INVERSO) ---"
                Para i = 8 Hasta 1 Con Paso -1 Hacer
                    Escribir "Producto ", i, ": ", productos[i], " unidades"
                FinPara
            4:
                Escribir "=== BUSQUEDA DE CANTIDAD ==="
                Escribir "Ingrese la cantidad que desea buscar: "
                Leer valorBuscar
                encontrado = Falso
                Para i = 1 Hasta 8 Con Paso 1 Hacer
                    Si productos[i] = valorBuscar Entonces
                        Escribir "La cantidad ", valorBuscar, " se encuentra en el Producto: ", i
                        encontrado <- Verdadero
                    FinSi
                FinPara
                Si NO encontrado Entonces
                    Escribir "La cantidad ", valorBuscar, " no se encuentra en el registro."
                FinSi
            5:
                Escribir "=== MODIFICACION DE STOCK ==="
                Repetir
                    Escribir "Ingrese el número de producto que desea modificar (1 a 8): "
                    Leer posModificar
                    Si posModificar < 1 o posModificar > 8 Entonces
                        Escribir "Producto inválido. Debe ser entre 1 y 8."
                    FinSi
                Hasta Que posModificar >= 1 Y posModificar <= 8
                Escribir "Ingrese el nuevo valor para el producto ", posModificar, ": "
                Leer nuevoValor
                productos[posModificar] = nuevoValor
                Escribir "¡Stock modificado correctamente!"
            6:
                Escribir "FIN"
            De Otro Modo:
                Escribir "Opción inválida. Por favor, intente de nuevo."
        FinSegun
        Escribir ""
    Hasta Que opcion = 6
FinAlgoritmo