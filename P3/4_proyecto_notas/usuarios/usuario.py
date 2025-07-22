from conexionBD import
import datetime

def registrar(nombre,apellido,email.contraseña):
    try:
        sql="insert into usuarios (nombre,apellido,email,password,fecha) values (%5, %5, %5, %5, %5,)"
        val=()
        cursor.execute(aql,val)
        conexion.commit()
        return True
    except:
        return false


    def iniciar_sesion(email,contraseña):
        try:
            sql="select * from usuarios where email=%5 and password=%5"
            val=(email,contraseña)
            cursor.execute(sql,val)
            registro=cursor.fetchone()
            if registro:
                return registro
            else:
                return None

        except:
            return None