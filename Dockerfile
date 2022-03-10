FROM docker.io/apache/airflow:2.2.3


# airflow
ARG AIRFLOW_USER_HOME=/opt/airflow/airflow

# oracle
ENV LD_LIBRARY_PATH=/usr/lib/oracle/11.2/client64/lib/
ENV ORACLE_HOME=/usr/lib/oracle/11.2/client64
ENV TNS_ADMIN=$ORACLE_HOME/network/admin
ENV PATH="$ORACLE_HOME/bin:${PATH}"


RUN pip install apache-airflow-providers-microsoft-azure==1.2.0rc1 \
    && pip install 'apache-airflow-providers-microsoft-mssql' \
    && pip install 'apache-airflow-providers-oracle' \
    && pip install cx_Oracle \	
	&& pip install pyodbc
USER root
RUN apt-get update -yqq \
    &&  apt-get install -yqq \
    unixodbc \
    unixodbc-dev \
    g++ \
    libaio1
    


# Copy oracle driver
COPY client64 /usr/lib/oracle/11.2/client64
COPY script/.bash_profile ${AIRFLOW_USER_HOME}/.bash_profile
COPY script/query.py ${AIRFLOW_USER_HOME}/query.py

RUN chmod 777 -R ${ORACLE_HOME}
RUN chown -R airflow: ${AIRFLOW_USER_HOME}
RUN  mkdir ${AIRFLOW_USER_HOME}/etl_base

RUN  find ${AIRFLOW_USER_HOME}/etl_base -type d -exec chmod +w {} +
COPY script/entrypoint.sh /entrypoint.sh
COPY config/airflow.cfg ${AIRFLOW_USER_HOME}/airflow.cfg
COPY config/conn.json ${AIRFLOW_USER_HOME}/conn.json
COPY config/var.json ${AIRFLOW_USER_HOME}/var.json

