from django.shortcuts import render, redirect, get_object_or_404
from main.forms import UsuarioForm, PacienteForm
from main.models import Familiar, Paciente
from django.contrib.auth.decorators import login_required
from django.contrib.auth.models import User
from django.http import HttpResponse
# Create your views here.

#Registro de usuarios
@login_required
def create_usuario(request):
    if request.method == "GET":
        return render(request, 'paciente/create_paciente.html', {"form": UsuarioForm})
    else:
        try:
            form = UsuarioForm(request.POST)
            new_paciente = form.save()
            new_paciente.user = request.user
            new_paciente.save()
            return render(request, 'paciente/familiarUsuario.html')
        except ValueError:
            return render(request, 'paciente/create_paciente.html', {"form": UsuarioForm, "error": "Error creando su Usuario!"})


@login_required
def usuario(request):
    usuario = Familiar.objects.filter(user=request.user, datecompleted__isnull=True)
    usuarioValidation = User
    return render(request, 'paciente/familiarUsuario.html', {"usuario": usuario})



# Ver Familiares
@login_required
def familiaresListado(request):
    fam = Familiar.objects.all()
    return render(request, 'funcionario/listadoFamiliares.html', {"fam": fam})

# Ver Pacientes
@login_required
def pacientesListado(request):
    Pac = Paciente.objects.all()
    return render(request, 'paciente/listadoPacientes.html', {"Pac": Pac})

@login_required
def complete_usuario(request, usuario_id):
    usuario = get_object_or_404(Usuario, pk=usuario_id, user=request.user)
    if request.method == 'POST':
        usuario.datecompleted = timezone.now()
        usuario.save()
        return redirect('main_funcionario')

# Busqueda Paciente
@login_required
def busqueda_pac(request):
    return render(request, "funcionario/busq_paciente.html") 

#2 Busqueda Paciente (Listado)
@login_required
def listado_paciente(request):
    if request.GET["list_pac"]:
        ficha=request.GET["list_pac"]
        
        if len(ficha) > 20:
            message="Texto demasiado largo"
        else:
            pac=Paciente.objects.filter(nombre__icontains=ficha)
            return render(request, "funcionario/result_bus_paciente.html",{"query": ficha, "pac": pac})
            #return render(request, "funcionario/result_bus_paciente.html", {"paciente": paciente, "query":ficha})
    else:
        message="No has introducido nada!"
    return HttpResponse(message)

""" #3 Ingreso Ficha del Paciente
@login_required
def paciente_detalle(request):
    if request.method == 'GET':
        paciente = get_object_or_404(Paciente)
        form = PacienteForm(instance=Paciente)
        return render(request, 'funcionario/paciente_detalle.html', {'Usuario': paciente, 'form': form})
    else:
        try:
            paciente = get_object_or_404(Paciente)
            form = PacienteForm(request.POST, instance=Paciente)
            form.save()
            return redirect('main_funcionario')
        except ValueError:
            return render(request, 'funcionario/paciente_detalle.html', {'Usuario': paciente, 'form': form, 'error': 'Error updating user!.'})
 """
#3 Ingreso Ficha del Paciente
@login_required
def paciente_detalle(request, paciente_id):
    if request.method == 'GET':
        paciente = get_object_or_404(Paciente, pk=paciente_id)
        form = PacienteForm(instance=Paciente)
        return render(request, 'funcionario/paciente_detalle.html', {'Usuario': paciente, 'form': form})
    else:
        try:
            paciente = get_object_or_404(Paciente, pk=paciente_id)
            form = PacienteForm(request.POST, instance=Paciente)
            form.save()
            return redirect('main_funcionario')
        except ValueError:
            return render(request, 'funcionario/paciente_detalle.html', {'Usuario': paciente, 'form': form, 'error': 'Error updating user!.'})
 
@login_required
def usuario_detail(request, usuario_id):
    if request.method == 'GET':
        familiar = get_object_or_404(Familiar, pk=Familiar_id, user=request.user)
        form = UsuarioForm(instance=Familiar)
        return render(request, 'task_detail.html', {'Usuario': Familiar, 'form': form})
    else:
        try:
            familiar = get_object_or_404(Familiar, pk=Familiar_id, user=request.user)
            form = UsuarioForm(request.POST, instance=Familiar)
            form.save()
            return redirect('main_funcionario')
        except ValueError:
            return render(request, 'task_detail.html', {'Usuario': familiar, 'form': form, 'error': 'Error updating user!.'})


@login_required
def delete_usuario(request, usuario_id):
    familiar = get_object_or_404(Usuario, pk=usuario_id, user=request.user)
    if request.method == 'POST':
        familiar.delete()
        return redirect('main_funcionario')


@login_required
def main_funcionario(request):
    return render(request, 'funcionario/funcionario.html')

#Registro de PACIENTES
@login_required
def create_paciente(request):
    if request.method == "GET":
        return render(request, 'funcionario/create_paciente.html', {"form": PacienteForm})
    else:
        try:
            form = PacienteForm(request.POST)
            new_paciente = form.save(commit=False)
            new_paciente.user = request.user
            new_paciente.save()
            return redirect('main_funcionario')
            #return render(request, 'paciente/familiarUsuario.html')
        except ValueError:
            return render(request, 'paciente/create_paciente.html', {"form": PacienteForm, "error": "Error creando al Paciente!"})
