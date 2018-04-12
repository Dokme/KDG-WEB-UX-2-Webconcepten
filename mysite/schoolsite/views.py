# -*- coding: utf-8 -*-
from __future__ import unicode_literals
from django.http import HttpResponse
from django.shortcuts import render, redirect, get_object_or_404
from django.contrib.auth import authenticate
from django.contrib.auth import login as auth_login
from django.contrib.auth import logout as auth_logout
from .models import Teacher
from .models import Course
from .models import Contact
from .models import Login
from .forms import SubmitForm
from .forms import SubmitLogin
from .forms import newCourseForm
from .forms import newTeacherForm

import datetime



# Create your views here.
def home(request):
    currentTime = datetime.datetime.now()
    currentTime.hour
 
    if currentTime.hour < 12:
        time = "Goedemorgen"

    elif 12 <= currentTime.hour < 18:
        time="Goedemiddag"
    else:
        time="Goedenavond"

        #if request.user.is_authenticated():
        #time = "hello " + request.user.username
    if not request.COOKIES.get('visit'):
        context = {'time': time}
        response = render(request, 'schoolsite/index.html', context)
        response.set_cookie('visit', 'true')
        return response
    else:
        welcome = "Welkom terug"
        context = ({'time': time, 'welcome':welcome}) 
        response = render(request, 'schoolsite/index.html', context)
        response.set_cookie('visit', 'true')
        return response

def aanbod(request):
    all_courses = Course.objects.all()
    context = {'all_courses': all_courses}
    return render(request, 'schoolsite/courses.html', context)

def leraren(request):
    all_teachers = Teacher.objects.all()
    context = {'all_teachers': all_teachers}
    return render(request, 'schoolsite/teachers.html', context)

def contact(request):
    if request.method == "POST":
       form = SubmitForm(request.POST or None)
       if form.is_valid():
          instance = form.save(commit=False)
          instance.save()
          return redirect('/')
    else:
        form = SubmitForm()
    return render(request, 'schoolsite/contact.html', {'form': form})

def intranet(request):
    all_teachers = Teacher.objects.all()
    all_courses = Course.objects.all()
    return render(request, 'schoolsite/intranet.html', {'all_teachers': all_teachers, 'all_courses': all_courses})

def login(request):
    if request.method == "POST":
       form = SubmitLogin(request.POST or None)
       if form.is_valid():
          username = form.cleaned_data.get("login_name")
          password = form.cleaned_data.get("login_pw")
          user = authenticate(username=username, password=password)
          if user is not None:
              if user.is_active:
                  auth_login(request, user)
          return redirect('/')
    else:
        form = SubmitLogin()
    return render(request, 'schoolsite/login.html', {'form': form})

def logout(request):
    auth_logout(request)
    return render(request, 'schoolsite/index.html')

def new_course(request):
    if request.method == "POST":
       form = newCourseForm(request.POST or None)
       if form.is_valid():
          instance = form.save(commit=False)
          instance.save()
          return redirect('schoolsite/intranet.html')
    else:
        form = newCourseForm()
    return render(request, 'schoolsite/new-course.html', {'form': form})

def new_teacher(request):
    if request.method == "POST":
       form = newTeacherForm(request.POST or None)
       if form.is_valid():
          instance = form.save(commit=False)
          instance.save()
          return redirect('/intranet') 
    else:
        form = newTeacherForm()
    return render(request, 'schoolsite/new-teacher.html', {'form': form})

def edit_course(request):
    if request.method == "POST":
       form = newCourseForm(request.POST or None)
       if form.is_valid():
          instance = form.save(commit=False)
          instance.save()
          return redirect('schoolsite/intranet.html')
    else:
        form = newCourseForm()
    return render(request, 'schoolsite/edit-course.html', {'form': form})

def edit_teacher(request):
    if request.method == "POST":
       form = newTeacherForm(request.POST or None)
       if form.is_valid():
          instance = form.save(commit=False)
          instance.save()
          return redirect('schoolsite/intranet.html')
    else:
        form = newTeacherForm()
    return render(request, 'schoolsite/edit-teacher.html', {'form': form})

def delete_course(request):
    instance = get_object_or_404(Course, id=id)
    instance.delete()
    return redirect('schoolsite/intranet.html')

def delete_teacher(request):
    instance = get_object_or_404(Teacher, id=id)
    instance.delete()
    return redirect('schoolsite/intranet.html')