FROM mariadb:11.1
MAINTAINER Tiamiyu Saheed Oluwatosin <tiamiyusaheedoluwatosin@gmail.com>

RUN touch /tmp/.wsrep-new-cluster && chown -R mysql:mysql /tmp/.wsrep-new-cluster
COPY galera.cnf /etc/mysql/conf.d/01-galera.cnf
COPY startup.sh /startup.sh

USER mysql:mysql
CMD /startup.sh

