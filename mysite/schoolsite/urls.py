from django.conf.urls import url
from . import views

app_name = 'schoolsite'

urlpatterns = [
    # /
    url(r'^$', views.home , name='home'),
    # /aanbod/
    url(r'^aanbod/$', views.aanbod, name='aanbod'),
    # /leraren/
    url(r'^leraren/$', views.leraren, name='leraren'),
    # /contact/
    url(r'^contact/', views.contact, name='contact'),
    # /intranet/
    url(r'^intranet/$', views.intranet, name='intranet'),
    # /intranet/new-course
    url(r'^intranet/new-course/$', views.new_course, name='new_course'),
    # /intranet/new-teacher
    url(r'^intranet/new-teacher/$', views.new_teacher, name='new_teacher'),
    # /intranet/edit-course
    url(r'^intranet/edit-course/$', views.edit_course, name='edit_course'),
    # /intranet/edit-teacher
    url(r'^intranet/edit-teacher/$', views.edit_teacher, name='edit_teacher'),
    # # /intranet/delete-course
    url(r'^intranet/delete-course-(?P<id>[0-9]+)/$', views.delete_course, name='delete_course'),
    # # /intranet/delete-teacher
    url(r'^intranet/delete-teacher-(?P<id>[0-9]+)/$', views.delete_teacher, name='delete_teacher'),
    # /login/
    url(r'^login/', views.login, name='login'),
    # /logout/
    url(r'^logout/$', views.logout, name='logout'),
]