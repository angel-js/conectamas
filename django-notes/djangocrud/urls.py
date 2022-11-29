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
from tasks.views import home, signup, tasks, tasks_completed, signout, signin , create_task, task_detail, complete_task, delete_task
from main.views import  create_usuario, complete_usuario, main_funcionario, create_paciente, familiaresListado

urlpatterns = [
    path('home/', home, name='home'),
    path('admin/', admin.site.urls),
    path('signup/', signup, name='signup'),
    path('tasks/', tasks, name='tasks'),
    path('tasks_completed/', tasks_completed, name='tasks_completed'),
    path('logout/', signout, name='logout'),
    path('signin/', signin, name='signin'),
    path('create_task/', create_task, name='create_task'),
    path('tasks/<int:task_id>', task_detail, name='task_detail'),
    path('taks/<int:task_id>/complete', complete_task, name='complete_task'),
    path('tasks/<int:task_id>/delete', delete_task, name='delete_task'),

    #Paciente
    path('create_usuario/', create_usuario, name='create_usuario'),
    path('create_paciente/', create_paciente, name='create_paciente'),
    path('main_funcionario/', main_funcionario, name='main_funcionario'),
    path('lista_familiares/', familiaresListado, name='lista_familiares'),
    path('usuario/<int:usuario_id>', task_detail, name='usuario_detail'),
    path('usuario/<int:usuario_id>/complete', complete_usuario, name='complete_usuario'),
    path('usuario/<int:usuario_id>/delete', delete_task, name='delete_usuario'),

]
