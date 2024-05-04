from django.contrib import admin
from .models import *

admin.site.register(Review)


@admin.register(Room)
class ImportantV(admin.ModelAdmin):
    list_display = ('id', 'show_num', 'name')
    list_display_links = ('name', )


@admin.register(BookedRoom)
class ImportantV(admin.ModelAdmin):
    list_display = ('room_num', 'checkin', 'checkout')
    list_display_links = ('room_num', 'checkin', 'checkout')
    list_filter = ('room_num',)


@admin.register(Appointment)
class ImportantV(admin.ModelAdmin):
    list_display = ('id', 'checkin', 'checkout', 'adults', 'children', 'note', 'name', 'phone', 'new_appointment')
    list_display_links = ('checkin', 'checkout', 'name', )
    list_filter = ('new_appointment', )
