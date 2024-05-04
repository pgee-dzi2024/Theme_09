from django import forms
from .models import *

CHOICES = (
    ('0', '0'),
    ('1', '1'),
    ('2', '2'),
    ('3', '3'),
    ('4', '4+'),
    )


class BookNowForm(forms.Form):
    name = forms.CharField(max_length=100, label='Вашето име', widget=forms.TextInput(attrs={'class': 'form-control'}))

    phone = forms.CharField(max_length=14, label='Телефон', required=False,
                            widget=forms.TextInput(attrs={'class': 'form-control'}))

    email = forms.CharField(max_length=50, label='E-mail адрес', required=False,
                            widget=forms.TextInput(attrs={'class': 'form-control', 'type': 'email'}))

    checkin = forms.DateField(label='Дата на пристигане', widget=forms.DateInput(attrs={'type': 'date',
                                                                                        'class': 'form-control'}))

    checkout = forms.DateField(label='Дата на заминаване', widget=forms.DateInput(attrs={'type': 'date',
                                                                                         'class': 'form-control'}))

    adults = forms.ChoiceField(label='Брой възрасрни', widget=forms.Select(attrs={'class': 'form-control',
                                                                                  'placeholder': "Брой възрастни"}),
                               choices=CHOICES)

    children = forms.ChoiceField(label='Брой деца', widget=forms.Select(attrs={'class': 'form-control',
                                                                               'placeholder': "Брой деца"}),
                                 choices=CHOICES)

    note = forms.CharField(label='Допълнителни изисквания', required=False,
                           widget=forms.Textarea(attrs={'class': 'form-control', 'cols': "30", 'rows': "5"}))

