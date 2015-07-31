{% from 'php/ng/map.jinja' import php with context %}
{% from "php/ng/ini.jinja" import php_ini %}

{% set settings = php.ini.defaults %}
{% do settings.update(php.cgi.ini.settings) %}

php_cgi_ini:
  {{ php_ini(php.lookup.cgi.ini, php.cgi.ini.opts, settings) }}
