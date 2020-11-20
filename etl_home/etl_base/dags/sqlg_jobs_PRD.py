﻿
# -*- coding: utf-8 -*-
# Author        : Jesse Wei
# LastUpdate    : 2020/10/04
# Impact        : Jobs generated by SQLG
# Message       : Humanity towards others, we live by sharing. Fear can hold you prisoner, only hope can set you free.

# from __future__ import print_function
import logging
import airflow
from datetime import datetime, timedelta
from airflow.operators.sensors import ExternalTaskSensor
from airflow.operators.python_operator import PythonOperator
from airflow.operators.bash_operator import BashOperator
from airflow.contrib.sensors.file_sensor import FileSensor


from airflow import models
from airflow.models import Variable


from acme.operators.sqlg_oracle import OracleOperatorWithTemplatedParams
from airflow.operators.oracle_operator import OracleOperator
# DB_NAME = 'DWH'

my_taskid = "FND_COLUMNS"
FND_COLUMNS = OracleOperatorWithTemplatedParams(
    task_id=my_taskid,
    parameters=({":END_DT_CHAR":"{{ ds_nodash }}"}),
    sql= "Begin SQLEXT." + my_taskid + "_SP("+  
        ":END_DT_CHAR"+
        "); End;"
    )

my_taskid = "Z_CDOCUMENT_CHECKING_RULE"
Z_CDOCUMENT_CHECKING_RULE = OracleOperatorWithTemplatedParams(
    task_id=my_taskid,
    parameters=({":END_DT_CHAR":"{{ ds_nodash }}"}),
    sql= "Begin SQLEXT." + my_taskid + "_SP("+  
        ":END_DT_CHAR"+
        "); End;"
    )

my_taskid = "BTMS_EXPENSEPROJECT"
BTMS_EXPENSEPROJECT = OracleOperatorWithTemplatedParams(
    task_id=my_taskid,
    parameters=({":END_DT_CHAR":"{{ ds_nodash }}"}),
    sql= "Begin SQLEXT." + my_taskid + "_SP("+  
        ":END_DT_CHAR"+
        "); End;"
    )

my_taskid = "ODS_UP_consign_vendor_product_map_WH"
ODS_UP_consign_vendor_product_map_WH = FileSensor(
    task_id=my_taskid,
    filepath= "{{ var.value.DIR_SOURCE }}UPD/UP_consign_vendor_product_map.D"
    )

my_taskid = "ODS_UP_consign_vendor_product_map"
ODS_UP_consign_vendor_product_map = BashOperator(
    task_id=my_taskid,
    bash_command="./ods_imp.sh UPDUP_consign_vendor_product_map\| "
    )

my_taskid = "ODS_UP_Expense_Budget_product_map_WH"
ODS_UP_Expense_Budget_product_map_WH = FileSensor(
    task_id=my_taskid,
    filepath= "{{ var.value.DIR_SOURCE }}UPD/UP_Expense_Budget_product_map.D"
    )

my_taskid = "ODS_UP_Expense_Budget_product_map"
ODS_UP_Expense_Budget_product_map = BashOperator(
    task_id=my_taskid,
    bash_command="./ods_imp.sh UPDUP_Expense_Budget_product_map\| "
    )
