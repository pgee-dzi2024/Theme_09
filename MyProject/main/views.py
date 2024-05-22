from math import ceil

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


# Резервации
def booking(request):
    form = BookNowForm()
    reviews = Review.objects.all()
    context = {'menu': menu,
               'selected': 'Резервации',
               'reviews': reviews,
               'form': form,
               'msg': '',
               'status': 0,
               }
    if request.method == 'POST':
        form = BookNowForm(request.POST)
        if form.is_valid():
            checkin = form.cleaned_data['checkin']
            checkout = form.cleaned_data['checkout']
            nummer_of_rooms = ceil(int(form.cleaned_data['adults'])/2)
            booked_rooms = BookedRoom.objects.filter(checkout__lte=checkout).filter(checkin__gte=checkout)
            busy_rooms = set({})
            free_rooms = []
            for room in booked_rooms:
                busy_rooms.add(int(room.room_num))
            for i in range(1, 13):
                if i not in busy_rooms:
                    free_rooms.append(i)
            if len(free_rooms) >= nummer_of_rooms:
                new_app = Appointment.objects.create(
                    name=form.cleaned_data['name'],
                    phone=form.cleaned_data['phone'],
                    email=form.cleaned_data['email'],
                    checkin=form.cleaned_data['checkin'],
                    checkout=form.cleaned_data['checkout'],
                    adults=form.cleaned_data['adults'],
                    children=form.cleaned_data['children'],
                    note=form.cleaned_data['note'],
                )
                i = 0
                for k in range(nummer_of_rooms):
                    BookedRoom.objects.create(
                        room_num=free_rooms[i],
                        checkin=checkin,
                        checkout=checkout,
                        reservation_id=new_app,
                    )
                    i += 1
                context['msg'] = 'Резервацията е приета'
                context['status'] = 1
            else:
                context['msg'] = 'Няма достатъчно свободни стаи'
                context['status'] = 2

    return render(request, 'main/reservation.html', context)

