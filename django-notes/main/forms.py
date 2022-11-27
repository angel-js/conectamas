from django.forms import ModelForm
from main.models import Usuario

class UsuarioForm(ModelForm):
    class Meta:
        model = Usuario
        fields = ['rut', 'nombre', 'apellido', 'edad', 'fecha_nacimiento', 'sexo', 'email']