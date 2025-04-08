from django.urls import path
from . import views

urlpatterns = [
    path('todos/', views.create_todo, name='create_todo'),
    path('todos/all/', views.get_todos, name='get_todos'),
    path('todos/<int:pk>/', views.get_todo, name='get_todo'),
    path('todos/<int:pk>/update/', views.update_todo, name='update_todo'),
    path('todos/<int:pk>/delete/', views.delete_todo, name='delete_todo'),
]