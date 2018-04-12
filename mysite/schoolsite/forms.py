from django import forms
from django.forms import ModelForm, Textarea
from .models import Contact
from .models import Login
from .models import Course
from .models import Teacher
from django.utils.translation import ugettext_lazy as _
from django.contrib.auth.models import User
from django.contrib.auth import authenticate, login, logout



class SubmitForm(forms.ModelForm):
    class Meta:
        model = Contact
        fields = (
            "contact_name",
            "contact_email",
            "contact_message",
        )
        labels = {
            'contact_name': "Volledige naam",
            'contact_email' : "E-mail",
            'contact_message' : "Bericht",
        }

class newCourseForm(forms.ModelForm):
    class Meta:
        model = Course
        fields = (
            "course_name",
            "course_desc",
        )
        labels = {
            'course_name': "Richting naam",
            'course_desc' : "Richting beschrijving",
        }

class newTeacherForm(forms.ModelForm):
   
    class Meta:
        model = Teacher
        fields = (
            "first_name",
            "last_name",
            "details",
            "email",
            "image",
        )
        labels = {
            'first_name': "Voornaam",
            'last_name' : "Achternaam",
            'details' : "Details",
            'email' : "Email",
            'image' : "Foto",
        }

class SubmitLogin(forms.ModelForm):
    login_pw = forms.CharField(widget=forms.PasswordInput)
    class Meta:
        model = Login
        fields = (
            "login_name",
            "login_pw",
        )
        labels = {
            'login_name': "Gebruikersnaam",
            'login_pw': "Wachtwoord",
        }
    

    def clean(self, *args, **kwargs):
        username = self.cleaned_data.get("login_name")
        password = self.cleaned_data.get("login_pw")
        
        if username and password:
            user = authenticate(username=username, password=password)
            if not user:
                raise forms.ValidationError("Deze gebruiker bestaat niet")
            if not user.check_password(password):
                raise forms.ValidationError("Incorrect paswoord")
            if not user.is_active:
                raise forms.ValidationError("Deze gebruiker is niet meer actief")
        return super(SubmitLogin, self).clean(*args, **kwargs)
