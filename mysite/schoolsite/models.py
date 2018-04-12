# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models
from django.core.urlresolvers import reverse

# Create your models here.
class Course(models.Model):
    course_name = models.CharField(max_length=50)
    course_desc = models.CharField(max_length=250)

class Teacher(models.Model):
    first_name = models.CharField(max_length=30)
    last_name = models.CharField(max_length=30)
    details = models.CharField(max_length=100)
    email = models.CharField(max_length=50)
    image = models.FileField(blank=True, null=True)

    @property
    def image_url(self):
        if self.image and hasattr(self.image, 'url'):
            return self.image.url

class Contact(models.Model):
    contact_name = models.CharField(max_length=30)
    contact_email = models.CharField(max_length=50)
    contact_message = models.CharField(max_length=500)
    #form

class Login(models.Model):
    login_name = models.CharField(max_length=50)
    login_pw = models.CharField(max_length=200)
    #form