from django.shortcuts import render
from .forms import *
from .models import *


menu = [{'title': 'Начало', 'url_name': 'home'},
        {'title': 'Стаи', 'url_name': 'rooms'},
        {'title': 'Резервации', 'url_name': 'book_now'},
        {'title': 'За нас', 'url_name': 'about'},
        ]


# Create your views here.
def index(request):
    reviews = Review.objects.all()
    context = {'menu': menu,
               'selected': 'Начало',
               'reviews': reviews,
               }
    return render(request, 'main/index.html', context)


# Create your views here.
def about(request):
    reviews = Review.objects.all()
    context = {'menu': menu,
               'selected': 'За нас',
               'reviews': reviews,
               }
    return render(request, 'main/aboutus.html', context)


# Create your views here.
def rooms(request):
    rooms_list = Room.objects.order_by('show_num')
    context = {'menu': menu,
               'selected': 'Стаи',
               'rooms': rooms_list,
               }
    return render(request, 'main/rooms.html', context)


# Create your views here.
def booking(request):
    form = BookNowForm()
    reviews = Review.objects.all()
    context = {'menu': menu,
               'selected': 'Резервации',
               'reviews': reviews,
               'form': form,
               }
    if request.method == 'POST':
        form = BookNowForm(request.POST)
        if form.is_valid():
            checkin = form.cleaned_data['checkin']
            checkout = form.cleaned_data['checkout']
            print('checkin=', checkin)
            print('checkout=', checkout)
            print('checkin<checkout=', checkin < checkout)

    return render(request, 'main/reservation.html', context)

