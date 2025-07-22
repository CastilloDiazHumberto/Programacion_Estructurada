def esperarTecla():
    input("Pulsa para continuar")

# lista = [
#     ["Ruben",10.0,8.9,9.2],
#     ["Andres",10.0,10.0,10.0],
#     ["Maria",10.0,10.0,10.0]
# ]



def borrarPantalla():
    import os
    os.system("cls")

def esperarTecla():
  input("Oprima cualquier tecla para continuar")

def menu_principal():
  print("sistema de gestion de calificaciones :::... \n1.- Agregar \n2.- Mostrar \3.- Calcular promedios \n4.- SALIR")
  opcion=input("Elige una opción (1-4): ")
  return opcion

def agregar_calificaciones(lista):
   borrarPantalla()
   print("Agregar calificaciones")
   nombre=input("Nombre del alumno:").upper().strip()
   calificaciones=[]
   for i in range(1,4):
    continua=True
    while continua:
       try:
          cal=float(input(f"calificaciones {i}:"))
          if cal>=0 and cal<=10:
           calificaciones.append(cal)
           bandera=False
          else:
           print("ingrese un valor comprendido entre el 0 y 10")
       except ValueError:
        print("ingrese un valor numerico")
    lista.append([nombre]+calificaciones)
    print("Accion realizada con éxito")


def mostrar_calificaciones(lista):
  borrarPantalla()
  print("Mostrar Calificaciones")
  if len(lista)>0:
    print(f"{'Nombre':<15} {'Calif.1':<10} {'Calif.2':<10} {'Calif.3':<10} ")
    print("-"*60)
    for fila in lista:
      print(f"{fila[0]}   {fila[1]}   {fila[2]}   {fila[3]}")
    print("-"*60)
    print(f"son {len(lista)}alumnos")
    
  else:
    print("no hay calificaciones en el sistema")


def calcular_promedio(lista):
  borrarPantalla()
  print("promedio alumnos")
  if len(lista)>0:
    print(f"{'Nombre':<15} {'Calif.1':<10} ")
    print("-"*30)
    for fila in lista:
      promedio=(f"{fila[1]} + {fila[2]} + {fila[3]}")/3
    print(f"{fila[0]:<15}{promedio:.2f}")
    promedio_general+=promedio
    print("-"*30)
    print("el promedio general es: , promedio/3:{.2}")
    
  else:
    print("no hay calificaciones en el sistema")

def promedio_total(lista):
  borrarPantalla()
  print("promedio de todos los alumnos")