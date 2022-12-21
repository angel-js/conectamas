from django.forms import ModelForm
from main.models import Familiar, Paciente, Comentario, Soporte
from django import forms 

class UsuarioForm(ModelForm):
    rut = forms.CharField()
    nombre = forms.CharField()
    apellido = forms.CharField()
    fecha_nacimiento = forms.DateField()
    email = forms.EmailField()
    SEXO = [('masculino', 'MASCULINO'),('feminino', 'FEMENINO')]
    sexo = forms.CharField(widget=forms.Select(choices=SEXO))
    RELACION = [('padre', 'PADRE'),('madre','MADRE'),('hermano','HERMANO'),('hermana','HERMANA'),('hijo','HIJO'), ('nieto','NIETO'),('abuelo','ABUELO'),('abuela','ABUELA')]
    relacion_paciente = forms.CharField(widget=forms.Select(choices=RELACION))
    ROL = [('familiar', 'FAMILIAR')]
    rol = forms.CharField(widget=forms.Select(choices=ROL))
   


    rut.widget.attrs['class'] = 'form-control'
    nombre.widget.attrs['class'] = 'form-control'
    apellido.widget.attrs['class'] = 'form-control'
    fecha_nacimiento.widget.attrs['class'] = 'form-control'
    sexo.widget.attrs['class'] = 'form-control'
    email.widget.attrs['class'] = 'form-control'
    relacion_paciente.widget.attrs['class'] = 'form-control'

    class Meta:
        model = Familiar
        fields = ['rut', 'nombre', 'apellido', 'fecha_nacimiento', 'sexo', 'email', 'relacion_paciente']

class PacienteForm(ModelForm):
    rut = forms.CharField()
    nombre = forms.CharField()
    apellido = forms.CharField()
    fecha_nacimiento = forms.DateField()

    SEXO = [('masculino', 'MASCULINO'),('feminino', 'FEMENINO')]
    sexo_biologico = forms.CharField(widget=forms.Select(choices=SEXO))
    ROL = [('paciente', 'PACIENTE')]
    rol = forms.CharField(widget=forms.Select(choices=ROL))
    rut.widget.attrs['class'] = 'form-control'
    nombre.widget.attrs['class'] = 'form-control'
    apellido.widget.attrs['class'] = 'form-control'
    fecha_nacimiento.widget.attrs['class'] = 'form-control'
   
    class Meta:
        model = Paciente
        fields = ['rut', 'nombre', 'apellido', 'fecha_nacimiento', 'sexo_biologico']

class ComentarioForm(ModelForm):
    ESTADO = [('estable', 'ESTABLE'),('observacion','OBSERVACION'),('alerta', 'ALERTA')]
    estado = forms.CharField(widget=forms.Select(choices=ESTADO))
    comentario = forms.CharField()

    estado.widget.attrs['class'] = 'form-control'
    comentario.widget.attrs['class'] = 'form-control'

    class Meta:
        model = Comentario
        fields = ['estado','comentario']

class SoporteForm(ModelForm):
    nombre = forms.CharField()
    apellido = forms.CharField()
    email = forms.EmailField()
    comentario = forms.CharField()

    nombre.widget.attrs['class'] = 'form-control'
    apellido.widget.attrs['class'] = 'form-control'
    email.widget.attrs['class'] = 'form-control'
    comentario.widget.attrs['class'] = 'form-control'

    class Meta:
        model = Soporte
        fields = ['nombre', 'apellido', 'email', 'comentario']
        