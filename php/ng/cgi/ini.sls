# Manages the php cgi main ini file
{% from 'php/ng/map.jinja' import php with context %}
{% from "php/ng/ini.jinja" import php_ini %}

{% set settings = php.ini.defaults %}
{% for key, value in php.cgi.ini.settings.iteritems() %}
  {% if settings[key] is defined %}
    {% do settings[key].update(value) %}
  {% else %}
    {% do settings.update({key: value}) %}
  {% endif %}
{% endfor %}

php_cgi_ini:
  {{ php_ini(php.lookup.cgi.ini, php.cgi.ini.opts, settings) }}
