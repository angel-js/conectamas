from django.forms import ModelForm
from main.models import Familiar, Paciente, Comentario
from django import forms 

class UsuarioForm(ModelForm):
    ROL = [('familiar', 'FAMILIAR')]
    id_roles = forms.CharField(widget=forms.Select(choices=ROL))

    class Meta:
        model = Familiar
        fields = ['rut', 'nombre', 'apellido', 'edad', 'fecha_nacimiento', 'sexo', 'email', 'relacion_paciente' ]

class PacienteForm(ModelForm):
    class Meta:
        model = Paciente
        #fields = ['rut', 'nombre', 'apellido', 'edad', 'fecha_nacimiento', 'sexo', 'sexo_biologico']
        fields = '__all__'

class Comentario(ModelForm):
    class Meta:
        model = Comentario
        fields = '__all__'