#FROM mcr.microsoft.com/mssql/server:2019-latest
FROM mcr.microsoft.com/mssql/server:2017-latest

COPY ./smartqa.bak /var/opt/
COPY ./entrypoint.sh /var/opt/
COPY ./import-data.sh /var/opt/
COPY ./setup.sql /var/opt/


RUN apt-get update && \
    apt-get install mssql-tools -y && \
    ln -sfn /opt/mssql-tools/bin/sqlcmd /usr/bin/sqlcmd  && \
    chmod 777 var/opt/smartqa.bak
    
EXPOSE 4000
ENTRYPOINT /var/opt/entrypoint.sh 
