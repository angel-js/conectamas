from django.db import models

# Create your models here.

class Comentario(models.Model):
    fecha_comentario = models.DateField(auto_now_add=True)
    hora_comentario = models.TimeField(auto_now_add=True)
    estado = models.CharField(max_length=20)  # Field name made lowercase.
    comentario = models.CharField( max_length=300)  # Field name made lowercase.

    class Meta:
        db_table = 'Comentario'
        verbose_name_plural = "Comentarios"
        ordering= ["estado"]

    def __str__(self):
        return self.estado 


class Rol(models.Model):
    nombre_rol = models.CharField(max_length=20)
    lectura = models.BooleanField(default=True) # This field type is a guess.
    actualizar = models.BooleanField(default=False)  # This field type is a guess.
    borrar = models.BooleanField(default=False)  # This field type is a guess.
    crear = models.BooleanField(default=False)  # This field type is a guess. 

    class Meta:
        db_table = 'rol'
        verbose_name_plural = "Roles"
        ordering= ["nombre_rol"]

    def str(self):
        return "%s" %(self.nombre_rol)

class Persona(models.Model):
    rut = models.CharField(unique=True, max_length=15)
    nombre = models.CharField(max_length=20)
    apellido = models.CharField(max_length=30)
    fecha_nacimiento = models.DateField()
    sexo = models.CharField(max_length=10)
    id_rol = models.ForeignKey(Rol, on_delete=models.CASCADE, default=1)


    class Meta:
        db_table = 'persona'
        abstract = True
        verbose_name_plural = "Comunas"
        ordering= ["rut"]
    
    
    def str(self):
        return "%s" %(self.rut)
  
class Usuario(Persona):
    email = models.CharField(max_length=80)
    contrasenia = models.CharField(max_length=80)

    class Meta:
        db_table = 'usuario'
        abstract = True
        verbose_name_plural = "Usuarios"
        ordering= ["email"]

class Familiar(Usuario):
    relacion_paciente = models.CharField(max_length=30)
    
    class Meta:
        db_table = 'familiar'
        verbose_name_plural = "Familiares"
        ordering= ["id"]

class Funcionario(Usuario):
    cargo = models.CharField(max_length=30)

    class Meta:
        db_table = 'funcionario'
        verbose_name_plural = "Funcionarios"
        ordering= ["cargo"]

class Paciente(Persona):
    sexo_biologico = models.CharField(max_length=20)

    class Meta:
        db_table = 'paciente'
        verbose_name_plural = "Pacientes"
        ordering= ["id"]

class Soporte(models.Model):
    nombre = models.CharField(max_length=20)
    apellido = models.CharField(max_length=20)
    email = models.CharField(max_length=80)
    comentario = models.CharField(max_length=200)

    class Meta:
        db_table = 'Soporte'
        verbose_name_plural = "Soportes"
        ordering= ["id"]