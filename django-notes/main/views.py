from django.shortcuts import render, redirect, get_object_or_404
from main.forms import UsuarioForm, PacienteForm, ComentarioForm
from django.contrib.auth.decorators import login_required
from main.models import Familiar, Paciente, Comentario
from django.utils.decorators import method_decorator
from django.contrib.auth.models import User
from django.http import HttpResponse, JsonResponse
from django.views import View 
from ast import Delete
from main.serializers import ComentarioSerializer 
from rest_framework.response import Response 
from rest_framework import status 
from rest_framework.decorators import api_view

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

# Busqueda Paciente - Vista de un Familiar
@login_required
def busqueda_pac_familiar(request):
    return render(request, "paciente/busq_paciente.html") 

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
    else:
        message="No has introducido nada!"
    return HttpResponse(message)

#2 Busqueda Paciente (Listado) - Vista de un Familiar
@login_required
def listado_paciente_familiar(request):
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

#3 Ingreso Ficha del Paciente
@login_required
def paciente_detalle(request, paciente_id):
    if request.method == 'GET':
        paciente = get_object_or_404(Paciente, pk=paciente_id)
        comm = Comentario.objects.all()
        formComent = ComentarioForm(instance=paciente)
        return render(request, 'funcionario/paciente_detalle.html', {'Usuario': paciente, 'Comment':comm, 'form': formComent})
    else:
        try:
            paciente = get_object_or_404(Paciente, pk=paciente_id)
            formComent = ComentarioForm(request.POST)
            new_comment = formComent.save()
            new_comment.user = request.user
            new_comment.save()
            return redirect('main_funcionario')
        except ValueError:
            return render(request, 'funcionario/paciente_detalle.html', {'Usuario': paciente, 'form': formComent, 'error': 'Error updating Comment!.'})
    
#3 Ingreso Ficha del Paciente - Vista de un Familiar
@login_required
def paciente_detalle_familiar(request, paciente_id):
    if request.method == 'GET':
        paciente = get_object_or_404(Paciente, pk=paciente_id)
        comm = Comentario.objects.all()
        formComent = ComentarioForm(instance=paciente)
        return render(request, 'paciente/paciente_detalle.html', {'Usuario': paciente, 'Comment':comm, 'form': formComent})
    else:
        try:
            paciente = get_object_or_404(Paciente, pk=paciente_id)
            return redirect('home')
        except ValueError:
            return render(request, 'paciente/paciente_detalle.html', {'Usuario': paciente})
    


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
            jd=json.loads(request.form)
            Comentario.objects.create(estado=jd['estado'], comentario=jd['comentario'],id_funcionario=jd['id_funcionario'],id_fecha_ingreso=jd['id_fecha_ingreso'])
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

# Pagina principal
@login_required
def main_funcionario(request):
    pac = Paciente.objects.all()
    return render(request, 'funcionario/funcionario.html', {'Paciente':pac})

#Registro de PACIENTES
@login_required
def create_paciente(request):
    if request.method == "GET":
        return render(request, 'funcionario/create_paciente.html', {"form": PacienteForm})
    else:
        try:
            form = PacienteForm(request.POST)
            new_paciente = form.save()
            new_paciente.user = request.user
            new_paciente.save()
            return redirect('main_funcionario')
            #return render(request, 'paciente/familiarUsuario.html')
        except ValueError:
            return render(request, 'paciente/create_paciente.html', {"form": form, "error": "Error creando al Paciente!"})

#Comentarios
# Create your views here.
@api_view (['GET', 'POST' ]) 
def comment_list(request) :
    if request.method == 'GET':
        comment = Comentario.objects.all()
        serializer = ComentarioSerializer(comment, many=True)
        return Response(serializer.data)
    if request.method == 'POST':
        serializer = ComentarioSerializer(data = request. data)
        if serializer.is_valid() :
            serializer.save()
            return Response (serializer.data, status=status.HTTP_201_CREATED) 
        return Response (serializer.errors, status=status.HTTP_400_BAD_REQUEST)


@api_view (['GET', 'PUT','DELETE' ])
def comment_detail (request, pk):
    try:
        comment = Comentario.objects.get(pk=pk)
    except Comentario.DoesNotExist:
        return Response(status=status.HTTP_404_NOT_FOUND)
    
    if request.method == 'GET':
        serializer = ComentarioSerializer(comment)
        return Response(serializer.data)
    
    if request.method == 'PUT':
        serializer = ComentarioSerializer (comment, data-request .data) 
        if serializer.is_valid():
            serializer.save()
            return Response(serializer.data)
        return Response(serializer.errors, status=status.HTTP_400_BAD_REQUEST)
    
    if request.method == 'DELETE':
        comment.delete()
        return Response(status=status.HTTP_204_NO_CONTENT)