﻿
# -*- coding: utf-8 -*-
# Author        : Jesse Wei
# LastUpdate    : 2020/11/04
# Impact        : DAG generated by SQLG
# Message       : Humanity towards others, we live by sharing. Fear can hold you prisoner, only hope can set you free.

# from __future__ import print_function
import logging
import re
import airflow
from datetime import datetime, timedelta
from airflow.operators.sensors import ExternalTaskSensor
from airflow.operators.python_operator import PythonOperator
from airflow import models
from airflow.models import Variable
#from acme.operators.dwh_operators import PostgresOperatorWithTemplatedParams

# XSLT:loop: declaration: START{
import sqlg_jobs_FIN


args = {
    "owner": "JESSEWEI",
    'start_date': airflow.utils.dates.days_ago(1),
    'provide_context': True
}	
# XSLT:loop: declaration: END}

ExternalTaskSensor.ui_color = 'white'
ExternalTaskSensor.ui_fgcolor = 'blue'

tmpl_search_path = Variable.get("sql_path")
	

# XSLT:loop: JOB_FLOW_NAME: START{
job_flow_name = "D_ODS_FIN_SRC"
if job_flow_name == 'I_SDM_CMN':
    data_stage = ['ODS']
else:
    data_stage = re.findall(r"_(.*?)_","D_ODS_FIN_SRC")
D_ODS_FIN_SRC = airflow.DAG(
    "D_ODS_FIN_SRC",
    tags=["FIN", data_stage[0]],
    schedule_interval="@daily",
    dagrun_timeout=timedelta(minutes=60),
    template_searchpath=tmpl_search_path,
    default_args=args,
    start_date=airflow.utils.dates.days_ago(1),    
    max_active_runs=1
	)
job_flow_name = "D_SDM_FIN"
if job_flow_name == 'I_SDM_CMN':
    data_stage = ['ODS']
else:
    data_stage = re.findall(r"_(.*?)_","D_SDM_FIN")
D_SDM_FIN = airflow.DAG(
    "D_SDM_FIN",
    tags=["FIN", data_stage[0]],
    schedule_interval="@daily",
    dagrun_timeout=timedelta(minutes=60),
    template_searchpath=tmpl_search_path,
    default_args=args,
    start_date=airflow.utils.dates.days_ago(1),    
    max_active_runs=1
	)
job_flow_name = "M_SDM_FIN"
if job_flow_name == 'I_SDM_CMN':
    data_stage = ['ODS']
else:
    data_stage = re.findall(r"_(.*?)_","M_SDM_FIN")
M_SDM_FIN = airflow.DAG(
    "M_SDM_FIN",
    tags=["FIN", data_stage[0]],
    schedule_interval="@monthly",
    dagrun_timeout=timedelta(minutes=60),
    template_searchpath=tmpl_search_path,
    default_args=args,
    start_date=airflow.utils.dates.days_ago(1),    
    max_active_runs=1
	)
job_flow_name = "D_DM_FIN"
if job_flow_name == 'I_SDM_CMN':
    data_stage = ['ODS']
else:
    data_stage = re.findall(r"_(.*?)_","D_DM_FIN")
D_DM_FIN = airflow.DAG(
    "D_DM_FIN",
    tags=["FIN", data_stage[0]],
    schedule_interval="@daily",
    dagrun_timeout=timedelta(minutes=60),
    template_searchpath=tmpl_search_path,
    default_args=args,
    start_date=airflow.utils.dates.days_ago(1),    
    max_active_runs=1
	)
job_flow_name = "M_DM_FIN"
if job_flow_name == 'I_SDM_CMN':
    data_stage = ['ODS']
else:
    data_stage = re.findall(r"_(.*?)_","M_DM_FIN")
M_DM_FIN = airflow.DAG(
    "M_DM_FIN",
    tags=["FIN", data_stage[0]],
    schedule_interval="@monthly",
    dagrun_timeout=timedelta(minutes=60),
    template_searchpath=tmpl_search_path,
    default_args=args,
    start_date=airflow.utils.dates.days_ago(1),    
    max_active_runs=1
	)

# XSLT:loop: JOB_FLOW_NAME: END}

# 	XSLT:loop: JOB_FLOW_NAME-and-PRE_JOB: External:START{{

my_taskid = "D_ODS_FIN_SRCxD_STG_INIT__SYS_STS_STG"
D_ODS_FIN_SRCxD_STG_INIT__SYS_STS_STG= ExternalTaskSensor(
#    schedule_interval=None,
    pool = "sensor_pool",
    task_id=my_taskid,
    external_dag_id="D_STG_INIT",
    external_task_id="SYS_STS_STG",
    mode="reschedule",
    dag=D_ODS_FIN_SRC,
#    execution_delta=None,  # Same day as today
)

my_taskid = "D_SDM_FINxD_STG_INIT__SYS_STS_STG"
D_SDM_FINxD_STG_INIT__SYS_STS_STG= ExternalTaskSensor(
#    schedule_interval=None,
    pool = "sensor_pool",
    task_id=my_taskid,
    external_dag_id="D_STG_INIT",
    external_task_id="SYS_STS_STG",
    mode="reschedule",
    dag=D_SDM_FIN,
#    execution_delta=None,  # Same day as today
)

my_taskid = "M_SDM_FINxD_STG_INIT__SYS_STS_STG"
M_SDM_FINxD_STG_INIT__SYS_STS_STG= ExternalTaskSensor(
#    schedule_interval=None,
    pool = "sensor_pool",
    task_id=my_taskid,
    external_dag_id="D_STG_INIT",
    external_task_id="SYS_STS_STG",
    mode="reschedule",
    dag=M_SDM_FIN,
#    execution_delta=None,  # Same day as today
)

my_taskid = "D_DM_FINxD_STG_INIT__SYS_STS_STG"
D_DM_FINxD_STG_INIT__SYS_STS_STG= ExternalTaskSensor(
#    schedule_interval=None,
    pool = "sensor_pool",
    task_id=my_taskid,
    external_dag_id="D_STG_INIT",
    external_task_id="SYS_STS_STG",
    mode="reschedule",
    dag=D_DM_FIN,
#    execution_delta=None,  # Same day as today
)

my_taskid = "M_DM_FINxD_STG_INIT__SYS_STS_STG"
M_DM_FINxD_STG_INIT__SYS_STS_STG= ExternalTaskSensor(
#    schedule_interval=None,
    pool = "sensor_pool",
    task_id=my_taskid,
    external_dag_id="D_STG_INIT",
    external_task_id="SYS_STS_STG",
    mode="reschedule",
    dag=M_DM_FIN,
#    execution_delta=None,  # Same day as today
)
	
# 	XSLT:loop: JOB_FLOW_NAME-and-PRE_JOB: External: END}}


# XSLT:loop: JOB_FLOW_NAME: START{


# 	XSLT:loop: Rows-by-JOB_FLOW_NAME: JOB_NAME: START{{
sqlg_jobs_FIN.DIM_CONTINENT_V.dag=D_ODS_FIN_SRC
D_ODS_FIN_SRCxD_STG_INIT__SYS_STS_STG.set_downstream(sqlg_jobs_FIN.DIM_CONTINENT_V)
sqlg_jobs_FIN.DIM_ERPODP_TO_FODP_V.dag=D_ODS_FIN_SRC
D_ODS_FIN_SRCxD_STG_INIT__SYS_STS_STG.set_downstream(sqlg_jobs_FIN.DIM_ERPODP_TO_FODP_V)
sqlg_jobs_FIN.DIM_PLANT.dag=D_ODS_FIN_SRC
D_ODS_FIN_SRCxD_STG_INIT__SYS_STS_STG.set_downstream(sqlg_jobs_FIN.DIM_PLANT)
sqlg_jobs_FIN.DIM_FIG.dag=D_ODS_FIN_SRC
D_ODS_FIN_SRCxD_STG_INIT__SYS_STS_STG.set_downstream(sqlg_jobs_FIN.DIM_FIG)
sqlg_jobs_FIN.HR_OPERATING_UNITS_V.dag=D_ODS_FIN_SRC
D_ODS_FIN_SRCxD_STG_INIT__SYS_STS_STG.set_downstream(sqlg_jobs_FIN.HR_OPERATING_UNITS_V)
sqlg_jobs_FIN.IS_ELEMENT_DEF_T.dag=D_ODS_FIN_SRC
D_ODS_FIN_SRCxD_STG_INIT__SYS_STS_STG.set_downstream(sqlg_jobs_FIN.IS_ELEMENT_DEF_T)
sqlg_jobs_FIN.MFG_REVENUE_V.dag=D_ODS_FIN_SRC
D_ODS_FIN_SRCxD_STG_INIT__SYS_STS_STG.set_downstream(sqlg_jobs_FIN.MFG_REVENUE_V)
sqlg_jobs_FIN.POWERBI_SM_CON_DETAIL_V.dag=D_ODS_FIN_SRC
D_ODS_FIN_SRCxD_STG_INIT__SYS_STS_STG.set_downstream(sqlg_jobs_FIN.POWERBI_SM_CON_DETAIL_V)
sqlg_jobs_FIN.SM_PURE_DETAIL_V.dag=D_ODS_FIN_SRC
D_ODS_FIN_SRCxD_STG_INIT__SYS_STS_STG.set_downstream(sqlg_jobs_FIN.SM_PURE_DETAIL_V)
sqlg_jobs_FIN.SM_REVENUE_V.dag=D_ODS_FIN_SRC
D_ODS_FIN_SRCxD_STG_INIT__SYS_STS_STG.set_downstream(sqlg_jobs_FIN.SM_REVENUE_V)
sqlg_jobs_FIN.GL_DAILY_RATES_V.dag=D_ODS_FIN_SRC
D_ODS_FIN_SRCxD_STG_INIT__SYS_STS_STG.set_downstream(sqlg_jobs_FIN.GL_DAILY_RATES_V)
sqlg_jobs_FIN.SCD_FODP.dag=D_ODS_FIN_SRC
D_ODS_FIN_SRCxD_STG_INIT__SYS_STS_STG.set_downstream(sqlg_jobs_FIN.SCD_FODP)
sqlg_jobs_FIN.IS_ELEMENT_ADJUST.dag=D_ODS_FIN_SRC
D_ODS_FIN_SRCxD_STG_INIT__SYS_STS_STG.set_downstream(sqlg_jobs_FIN.IS_ELEMENT_ADJUST)
sqlg_jobs_FIN.TB_DETAIL.dag=D_ODS_FIN_SRC
D_ODS_FIN_SRCxD_STG_INIT__SYS_STS_STG.set_downstream(sqlg_jobs_FIN.TB_DETAIL)
sqlg_jobs_FIN.IS_OPEX_FINAL_V.dag=D_ODS_FIN_SRC
D_ODS_FIN_SRCxD_STG_INIT__SYS_STS_STG.set_downstream(sqlg_jobs_FIN.IS_OPEX_FINAL_V)
sqlg_jobs_FIN.IS_TB_ELEMENT_V.dag=D_ODS_FIN_SRC
D_ODS_FIN_SRCxD_STG_INIT__SYS_STS_STG.set_downstream(sqlg_jobs_FIN.IS_TB_ELEMENT_V)
sqlg_jobs_FIN.POWERBI_SM_DETAIL_ALL_V.dag=D_ODS_FIN_SRC
D_ODS_FIN_SRCxD_STG_INIT__SYS_STS_STG.set_downstream(sqlg_jobs_FIN.POWERBI_SM_DETAIL_ALL_V)


# 	XSLT:loop: Rows-by-JOB_FLOW_NAME: JOB_NAME: START{{
sqlg_jobs_FIN.SDM_LEGAL_ENTITY.dag=D_SDM_FIN
D_SDM_FINxD_STG_INIT__SYS_STS_STG.set_downstream(sqlg_jobs_FIN.SDM_LEGAL_ENTITY)
sqlg_jobs_FIN.SDM_BASE_BUSINESS_UNIT.dag=D_SDM_FIN
D_SDM_FINxD_STG_INIT__SYS_STS_STG.set_downstream(sqlg_jobs_FIN.SDM_BASE_BUSINESS_UNIT)
sqlg_jobs_FIN.SDM_BUSINESS_UNIT.dag=D_SDM_FIN
D_SDM_FINxD_STG_INIT__SYS_STS_STG.set_downstream(sqlg_jobs_FIN.SDM_BUSINESS_UNIT)
sqlg_jobs_FIN.SDM_BASE_BUSINESS_GROUP.dag=D_SDM_FIN
D_SDM_FINxD_STG_INIT__SYS_STS_STG.set_downstream(sqlg_jobs_FIN.SDM_BASE_BUSINESS_GROUP)
sqlg_jobs_FIN.SDM_BUSINESS_GROUP.dag=D_SDM_FIN
D_SDM_FINxD_STG_INIT__SYS_STS_STG.set_downstream(sqlg_jobs_FIN.SDM_BUSINESS_GROUP)
sqlg_jobs_FIN.SDM_COUNTRY.dag=D_SDM_FIN
D_SDM_FINxD_STG_INIT__SYS_STS_STG.set_downstream(sqlg_jobs_FIN.SDM_COUNTRY)
sqlg_jobs_FIN.SDM_MANUFACTURING_PLANT.dag=D_SDM_FIN
D_SDM_FINxD_STG_INIT__SYS_STS_STG.set_downstream(sqlg_jobs_FIN.SDM_MANUFACTURING_PLANT)
sqlg_jobs_FIN.SDM_REVENUE_CATEGORY.dag=D_SDM_FIN
D_SDM_FINxD_STG_INIT__SYS_STS_STG.set_downstream(sqlg_jobs_FIN.SDM_REVENUE_CATEGORY)
sqlg_jobs_FIN.SDM_CONVERSION_RATE.dag=D_SDM_FIN
D_SDM_FINxD_STG_INIT__SYS_STS_STG.set_downstream(sqlg_jobs_FIN.SDM_CONVERSION_RATE)
sqlg_jobs_FIN.SDM_BUDGET.dag=D_SDM_FIN
D_SDM_FINxD_STG_INIT__SYS_STS_STG.set_downstream(sqlg_jobs_FIN.SDM_BUDGET)
sqlg_jobs_FIN.SDM_REALIZED_REVENUE.dag=D_SDM_FIN
D_SDM_FINxD_STG_INIT__SYS_STS_STG.set_downstream(sqlg_jobs_FIN.SDM_REALIZED_REVENUE)


# 	XSLT:loop: Rows-by-JOB_FLOW_NAME: JOB_NAME: START{{
sqlg_jobs_FIN.SDM_REALIZED_REVENUE_RM.dag=M_SDM_FIN
M_SDM_FINxD_STG_INIT__SYS_STS_STG.set_downstream(sqlg_jobs_FIN.SDM_REALIZED_REVENUE_RM)
sqlg_jobs_FIN.SDM_MANUFACTURING_REVENUE.dag=M_SDM_FIN
M_SDM_FINxD_STG_INIT__SYS_STS_STG.set_downstream(sqlg_jobs_FIN.SDM_MANUFACTURING_REVENUE)
sqlg_jobs_FIN.SDM_ADDED_VALUE_RATE.dag=M_SDM_FIN
M_SDM_FINxD_STG_INIT__SYS_STS_STG.set_downstream(sqlg_jobs_FIN.SDM_ADDED_VALUE_RATE)
sqlg_jobs_FIN.SDM_GROSS_MARGIN.dag=M_SDM_FIN
M_SDM_FINxD_STG_INIT__SYS_STS_STG.set_downstream(sqlg_jobs_FIN.SDM_GROSS_MARGIN)
sqlg_jobs_FIN.SDM_PLANT_MFG_CONVERSION_COST.dag=M_SDM_FIN
M_SDM_FINxD_STG_INIT__SYS_STS_STG.set_downstream(sqlg_jobs_FIN.SDM_PLANT_MFG_CONVERSION_COST)


# 	XSLT:loop: Rows-by-JOB_FLOW_NAME: JOB_NAME: START{{
sqlg_jobs_FIN.DIM_REPORT_CURRENCY.dag=D_DM_FIN
D_DM_FINxD_STG_INIT__SYS_STS_STG.set_downstream(sqlg_jobs_FIN.DIM_REPORT_CURRENCY)
sqlg_jobs_FIN.FCT_C_BUDGET_HIT_RATE.dag=D_DM_FIN
D_DM_FINxD_STG_INIT__SYS_STS_STG.set_downstream(sqlg_jobs_FIN.FCT_C_BUDGET_HIT_RATE)
sqlg_jobs_FIN.FCT_S_BUDGET_HIT_RATE.dag=D_DM_FIN
D_DM_FINxD_STG_INIT__SYS_STS_STG.set_downstream(sqlg_jobs_FIN.FCT_S_BUDGET_HIT_RATE)
sqlg_jobs_FIN.FCT_C_REALIZED_REVENUE.dag=D_DM_FIN
D_DM_FINxD_STG_INIT__SYS_STS_STG.set_downstream(sqlg_jobs_FIN.FCT_C_REALIZED_REVENUE)
sqlg_jobs_FIN.FCT_S_REALIZED_REVENUE.dag=D_DM_FIN
D_DM_FINxD_STG_INIT__SYS_STS_STG.set_downstream(sqlg_jobs_FIN.FCT_S_REALIZED_REVENUE)


# 	XSLT:loop: Rows-by-JOB_FLOW_NAME: JOB_NAME: START{{
sqlg_jobs_FIN.FCT_C_REALIZED_REVENUE_RM.dag=M_DM_FIN
M_DM_FINxD_STG_INIT__SYS_STS_STG.set_downstream(sqlg_jobs_FIN.FCT_C_REALIZED_REVENUE_RM)
sqlg_jobs_FIN.FCT_MANUFACTURING_REVENUE.dag=M_DM_FIN
M_DM_FINxD_STG_INIT__SYS_STS_STG.set_downstream(sqlg_jobs_FIN.FCT_MANUFACTURING_REVENUE)
sqlg_jobs_FIN.FCT_ADDED_VALUE_RATE.dag=M_DM_FIN
M_DM_FINxD_STG_INIT__SYS_STS_STG.set_downstream(sqlg_jobs_FIN.FCT_ADDED_VALUE_RATE)
sqlg_jobs_FIN.FCT_GROSS_MARGIN.dag=M_DM_FIN
M_DM_FINxD_STG_INIT__SYS_STS_STG.set_downstream(sqlg_jobs_FIN.FCT_GROSS_MARGIN)
sqlg_jobs_FIN.FCT_PLANT_MFG_CONVERSION_COST.dag=M_DM_FIN
M_DM_FINxD_STG_INIT__SYS_STS_STG.set_downstream(sqlg_jobs_FIN.FCT_PLANT_MFG_CONVERSION_COST)
