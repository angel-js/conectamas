"""djangocrud URL Configuration

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/4.1/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  path('', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  path('', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.urls import include, path
    2. Add a URL to urlpatterns:  path('blog/', include('blog.urls'))
"""
from django.contrib import admin
from django.urls import path
from tasks.views import home, signup, signout, signin
from main.views import  create_usuario, soporteView, busqueda_pac_familiar, listado_paciente_familiar, paciente_detalle_familiar, comment_detail, comment_list, complete_usuario, main_funcionario, create_paciente, familiaresListado, busqueda_pac,  listado_paciente, paciente_detalle

urlpatterns = [
    #Sesion
    path('home/', home, name='home'),
    path('admin/', admin.site.urls),
    path('signup/', signup, name='signup'),
    path('logout/', signout, name='logout'),
    path('signin/', signin, name='signin'),
    #Paciente
    #Create
    path('create_usuario/', create_usuario, name='create_usuario'),
    path('create_paciente/', create_paciente, name='create_paciente'),
    #Read
    path('buscar_paciente/', busqueda_pac, name='busqueda_pac'),
    path('buscar_pacientef/', busqueda_pac_familiar, name='busqueda_pacf'),
    path('listado_paciente/', listado_paciente, name='listado_paciente'),
    path('listado_pacientef/', listado_paciente_familiar, name='listado_paciente'),
    path('paciente_detalle/<int:paciente_id>/', paciente_detalle, name='paciente_detalle'),
    path('paciente_detallef/<int:paciente_id>/', paciente_detalle_familiar, name='paciente_detalle'),
    #Funcionario
    path('main_funcionario/', main_funcionario, name='main_funcionario'),
    path('usuario/<int:usuario_id>/complete', complete_usuario, name='complete_usuario'),
    path('lista_familiares/', familiaresListado, name='lista_familiares'),
    #Comentario
    path('comentario/', comment_list, name='comentario'),
    path('comentario/<int:pk>', comment_detail, name='comentario'),

    #Soporte
    path('soporte/', soporteView, name='soporte'),
    

]
