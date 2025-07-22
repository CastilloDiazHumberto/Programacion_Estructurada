'''
List (Array)
son colecciones o conjunto de datos/valores bajos
un mismo nombre, para acceder a los valores bajo un mismo nombre
, para acceder a los valores se hace con un indice numerico

Nota: sus valores si son modificables

La lista es una colección ordenada y modificable permite miebros duplicados

'''

import os
os.system("clear")

#Funciones mas comunes de la lista

paises=["mexico","brasil","españa","canada"]
numero=[23,45,8,24]
varios=["hola",3.1416,33,True]

print(paises)
print(numero)
print(varios)

for i in paises:
    lista=lista+f"[{i}]"
print(lista)

    #2da forma
for i in range(0,4):
     print(paises[i])

#odenar los elementos de la lista
os.system ("slc")
print(paises)
print(numero)
print(varios)

paises.sort()
print(paises)
numero.sort()
print(numero)
varios.sort()
print(varios)

#dar vuelta a las listas
varios.reverse()
print(varios)
paises.reverse()
print(paises)
numero.reverse()
print(numero)

#buscar un elemento dentro de una lista
print("España" in paises)

#insertar, añadir, agrerar un elemento en una lista
os.system("slc")

print(paises)
paises.append("México")

#forma 2

paises.insert()

#borrar, eliminar, suprimir,quitar u elemento

os.system("clear")
print(paises)

#1er forma
paises.pop(0)
print(paises)

#2da forma
paises.remove("Mexico")
print(paises)

paises.sort()

os.system("clear")
print(paises)

posicion=paises.index("canada")
print(posicion)
paises.pop(posicion)
print(paises)

#contar el numero de veces en la que un elemento se encuntra en una lista

os.system("cls")
print(numero)

cuantas=numero.count(45)
print(cuantas)

cuantas=numero.count(23)
print(cuantas)

cuantas=numero.count(233)
print(cuantas)

#unir el contenido de una lista de otra

os.system("clear")
print(numero)
numero2=[100,200]
print(numero2)

#crear un programa que una las listas numero 1 y 2 e imprima el contenido de la lista resultante
numero.extend(numero2)
print(numero)


numero.sort()
numero.reverse()
print(numero)