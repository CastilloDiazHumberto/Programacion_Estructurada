'''
   crear un programa que calcule e imprima cualquier tabla de multiplicar

   Restricciones:
   1.-sin estructuras de control
   2.-sin funciones

'''
num=int(input("insertar el numero de la tabla de multiplicar:"))
multi=num*1
print(f"{num} x  1 ={multi}")
multi=num*2
print(f"{num} x  2 ={multi}")
multi=num*3
print(f"{num} x  3 ={multi}")
multi=num*4
print(f"{num} x  4 ={multi}")
multi=num*5
print(f"{num} x  5 ={multi}")
multi=num*6
print(f"{num} x  6 ={multi}")
multi=num*7
print(f"{num} x  7 ={multi}")
multi=num*8
print(f"{num} x  8 ={multi}")
multi=num*9
print(f"{num} x  9 ={multi}")
multi=num*10
print(f"{num} x  10 ={multi}")

#version2
'''
crear un programa que calcule e imprima cualquier tabla de multiplicar

restricciones
1.-con estructura de control
2.-sin funciones

'''

numero=int(input("inserte numero de la tabla de multiplicar:"))
for i in range(1,11):
    multi=num*i
    print(f"{num} x {i} = {multi}")


#version3
'''
crea un programa que calcule e imprima cualquier tabla de multiplicar

resticciones:
1.-con estructuras de control
2.-con fuciones

'''
def tabla(numero):
   num=numero
   respuesta=""
   for i in range(1,11):
       multi=num*i
       repuesta+=f"\t{num} x {i} = {multi}\n"
   return respuesta

num=int(input("inserte numero de la tabla de multiplicar:"))
resultado=tabla(num)
print(f"{resultado}")