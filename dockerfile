FROM mysql:5.7.17

ENV MYSQL_ROOT_PASSWORD=MYSQL_PASSWORD
ENV MYSQL_DATABASE=crud
ENV MYSQL_USER=root

COPY ./db/alumno.sql /docker-entrypoint-initdb.d/

ENTRYPOINT ["docker-entrypoint.sh"]
CMD ["mysqld"]