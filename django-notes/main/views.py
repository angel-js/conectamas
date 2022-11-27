from django.shortcuts import render
from main.forms import UsuarioForm
from main.models import Familiar
from django.contrib.auth.decorators import login_required

# Create your views here.

#Registro de usuarios
@login_required
def create_usuario(request):
    if request.method == "GET":
        return render(request, 'paciente/create_paciente.html', {"form": UsuarioForm})
    else:
        try:
            form = UsuarioForm(request.POST)
            new_paciente = form.save(commit=False)
            new_paciente.user = request.user
            new_paciente.save()
            #return redirect('home/')
            return render(request, 'paciente/familiarUsuario.html')
        except ValueError:
            return render(request, 'paciente/create_paciente.html', {"form": UsuarioForm, "error": "Error creando al paciente!"})


@login_required
def usuario(request):
    usuario = Familiar.objects.filter(user=request.user, datecompleted__isnull=True)
    return render(request, 'paciente/familiarUsuario.html', {"usuario": usuario})


# Ver pacientes
@login_required
def complete_usuario(request, usuario_id):
    usuario = get_object_or_404(Usuario, pk=usuario_id, user=request.user)
    if request.method == 'POST':
        usuario.datecompleted = timezone.now()
        usuario.save()
        return redirect('tasks')