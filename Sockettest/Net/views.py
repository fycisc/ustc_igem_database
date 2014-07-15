from django.shortcuts import render,render_to_response
from django.http import HttpResponse,Http404
from django import forms
from Net.models import Node

# Create your views here.

def search(request,screen_x,screen_y,side_length):
    #Get the screen location in form of (x,y,side_length),search node and link
    try:
        screen_x = int(screen_x)  # location just need be int for searching
        screen_y = int(screen_y)
        side_length = int(side_length)
    except ValueError:
        raise Http404

    x_max = screen_x + side_length/2
    x_min = screen_x - side_length/2
    y_max = screen_y + side_length/2
    y_min = screen_y - side_length/2

    if request.method == 'GET':
        node_list = Node.objects.filter(x__range = (x_min,x_max))
        node_list = node_list.filter(y__range = (y_min,y_max))
        return render_to_response('show.xml',{'node_list':node_list})


