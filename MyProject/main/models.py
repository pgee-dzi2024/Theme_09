from django.db import models


# Отзиви от клиенти
class Review(models.Model):
    txt = models.TextField('Текст', default='', blank=True, help_text='Текст на отзива')
    name = models.CharField('Име', max_length=50, default='', blank=True,
                            help_text='Име на автора на отзива')

    def __str__(self):
        return self.name

    class Meta:
        verbose_name = 'Отзив'
        verbose_name_plural = 'Отзиви'


# Стаи
class Room(models.Model):
    name = models.CharField('Заглавие', max_length=50, default='', blank=True,
                            help_text='Заглаввие на снимката')
    show_num = models.IntegerField('Поредност', default=1, help_text='Пореден номер при показване')
    photo = models.ImageField('Снимка', upload_to='rooms')

    def __str__(self):
        return self.name

    class Meta:
        verbose_name = 'Стая'
        verbose_name_plural = 'Стаи'


# Резервации
class Appointment(models.Model):
    name = models.CharField('Име', max_length=60)
    phone = models.CharField('Телефон', max_length=14, default='')
    email = models.CharField('e-mail', max_length=50, default='')
    checkin = models.DateField('Дата на пристигане', auto_now=True)
    checkout = models.DateField('Дата на напускане', auto_now=True)
    adults = models.IntegerField('Брой възрастни', default=0)
    children = models.IntegerField('Брой деца', default=0)
    note = models.TextField('Допълнителни изисквания', default='', blank=True)
    new_appointment = models.BooleanField('Нова резервация', default=True)

    rooms = models.IntegerField('Брой резервирани стаи', default=0)

    def __str__(self):
        return self.name

    class Meta:
        verbose_name = 'Резервация'
        verbose_name_plural = 'Резервации'


class BookedRoom(models.Model):
    room_num = models.IntegerField('Номер на стая', default=1)
    checkin = models.DateField('Дата на пристигане', auto_now=True)
    checkout = models.DateField('Дата на напускане', auto_now=True)
    reservation_id = models.ForeignKey(Appointment, verbose_name='Резервация', on_delete=models.CASCADE)

    def __str__(self):
        return str(self.room_num)

    class Meta:
        verbose_name = 'Резервирана стая'
        verbose_name_plural = 'Резервирани стаи'
