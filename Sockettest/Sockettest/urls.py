from django.conf.urls import patterns, include, url

from django.contrib import admin
admin.autodiscover()

urlpatterns = patterns('',
    # Examples:
    # url(r'^$', 'Sockettest.views.home', name='home'),
    # url(r'^blog/', include('blog.urls')),

    url(r'^admin/', include(admin.site.urls)),
    # The url which get the screen information
    url(r'^Net/search/x(?P<screen_x>\d+)/y(?P<screen_y>\d+)/range(?P<side_length>\d+)/$','Net.views.search'),
)
