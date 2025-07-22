#proyecto 3
import calificaciones

# crear un proyecto que permita gestionar(administtar) calificaciones, colocar un menu de opciones para agregar
# ,mostrar y calcular el promedio de calificaciones 

#Notas
# 1.- utilizar funciones y mandar llamar desde otro archivo 
# 2.- utilizar listas para almacenar el nombre y 3 calificaciones de los alumnos

def main():
    opcion=True
    datos=[]
    while opcion:
        calificaciones.borrarPantalla()
        print("\n\t..::: Sistema De Calificación :::... \n..::: Sistema de Gestión de Peliculas :::...\n 1.- Agregar  \n 2.- mostrar \n 3.- Calcular Promedios \n 4.- Salir")
        opcion=input("\t Elige una opción: ").upper()

        match opcion:
            case "1":
                calificaciones.agregarCalificacion
                calificaciones.esperarTecla(datos)
            case "2":
                calificaciones.mostrarCalificaciones(datos)
                calificaciones.esperarTecla()
            case "3":
                calificaciones.Calcular_Promedios(datos)
                calificaciones.esperarTecla()
            case "4":
                opcion=False    
                print("Terminaste la ejecucion del SW")
            case _:  
                opcion = True
                input("Opción invalida vuelva a intentarlo ... por favor")

if __name__ == "__main__":
    main()