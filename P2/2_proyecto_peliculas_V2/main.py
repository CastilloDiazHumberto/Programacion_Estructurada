'''
crear un proyecto que permita administrar peliculas;
calcular el numero de opciones para pagar, eliminar, modificar, consultar, buscar y vaciar peliculas

notas
1-utilizar funciones y mandar a llamar desde otro archivo
2-utilizar lista para almacenar los nombres de las peliculas

'''
import os


import peliculas
opcion=True
while opcion:
    peliculas.borrarPantalla()
    print("\n\t..::: CINEPOLIS CLON :::... \n..::: Sistema de Gestión de Peliculas :::...\n 1.- Agregar  \n 2.- Eliminar \n 3.- Actualizar \n 4.- Consultar \n 5.- Buscar \n 6.- Vaciar \n 7.- SALIR ")
    opcion=input("\t Elige una opción: ").upper()

    match opcion:
        case "1":
            peliculas.agregarPeliculas()
            peliculas.esperarTecla()
        case "2":
            peliculas.eliminarPeliculas()
            peliculas.esperarTecla() 
        case "3":
            peliculas.modificarPeliculas()
            peliculas.esperarTecla()    
        case "4":
            peliculas.consultarPeliculas() 
            peliculas.esperarTecla()
        case "5": 
            peliculas.buscarPeliculas()
            peliculas.esperarTecla()
        case "6": 
            peliculas.vaciarPeliculas()
            peliculas.esperarTecla()
        case "7":
            opcion=False    
            print("Terminaste la ejecucion del SW")
        case _: 
            input("Opción invalida vuelva a intentarlo ... por favor")

