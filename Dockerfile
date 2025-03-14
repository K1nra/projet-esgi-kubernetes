FROM mysql:8

# Configuration de l'encodage par défaut
RUN mkdir -p /etc/mysql/conf.d && echo "[mysqld]\ndefault-authentication-plugin=mysql_native_password" > /etc/mysql/conf.d/mysqld.cnf

# Copier les scripts SQL initiaux
COPY initdb/ /docker-entrypoint-initdb.d/

EXPOSE 3306

