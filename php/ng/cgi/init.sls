# Installs libapache2-mod-php5 package and manages the associated php.ini on os Debian
include:
  - php.ng.cgi.install
  - php.ng.cgi.ini

extend:
  php_cgi_ini:
    file:
      - require:
        - sls: php.ng.cgi.install
