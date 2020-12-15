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
import sqlg_jobs_MFG


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
job_flow_name = "D_ODS_MFG_SRC"
if job_flow_name == 'I_SDM_CMN':
    data_stage = ['ODS']
else:
    data_stage = re.findall(r"_(.*?)_","D_ODS_MFG_SRC")
D_ODS_MFG_SRC = airflow.DAG(
    "D_ODS_MFG_SRC",
    tags=["MFG", data_stage[0]],
    schedule_interval="@daily",
    dagrun_timeout=timedelta(minutes=60),
    template_searchpath=tmpl_search_path,
    default_args=args,
    start_date=airflow.utils.dates.days_ago(1),    
    max_active_runs=1
	)
job_flow_name = "D_SDM_MFG"
if job_flow_name == 'I_SDM_CMN':
    data_stage = ['ODS']
else:
    data_stage = re.findall(r"_(.*?)_","D_SDM_MFG")
D_SDM_MFG = airflow.DAG(
    "D_SDM_MFG",
    tags=["MFG", data_stage[0]],
    schedule_interval="@daily",
    dagrun_timeout=timedelta(minutes=60),
    template_searchpath=tmpl_search_path,
    default_args=args,
    start_date=airflow.utils.dates.days_ago(1),    
    max_active_runs=1
	)
job_flow_name = "D_DM_MFG"
if job_flow_name == 'I_SDM_CMN':
    data_stage = ['ODS']
else:
    data_stage = re.findall(r"_(.*?)_","D_DM_MFG")
D_DM_MFG = airflow.DAG(
    "D_DM_MFG",
    tags=["MFG", data_stage[0]],
    schedule_interval="@daily",
    dagrun_timeout=timedelta(minutes=60),
    template_searchpath=tmpl_search_path,
    default_args=args,
    start_date=airflow.utils.dates.days_ago(1),    
    max_active_runs=1
	)

# XSLT:loop: JOB_FLOW_NAME: END}

# 	XSLT:loop: JOB_FLOW_NAME-and-PRE_JOB: External:START{{

my_taskid = "D_ODS_MFG_SRCxD_STG_INIT__SYS_STS_STG"
D_ODS_MFG_SRCxD_STG_INIT__SYS_STS_STG= ExternalTaskSensor(
#    schedule_interval=None,
    pool = "sensor_pool",
    task_id=my_taskid,
    external_dag_id="D_STG_INIT",
    external_task_id="SYS_STS_STG",
    mode="reschedule",
    dag=D_ODS_MFG_SRC,
#    execution_delta=None,  # Same day as today
)

my_taskid = "D_SDM_MFGxD_STG_INIT__SYS_STS_STG"
D_SDM_MFGxD_STG_INIT__SYS_STS_STG= ExternalTaskSensor(
#    schedule_interval=None,
    pool = "sensor_pool",
    task_id=my_taskid,
    external_dag_id="D_STG_INIT",
    external_task_id="SYS_STS_STG",
    mode="reschedule",
    dag=D_SDM_MFG,
#    execution_delta=None,  # Same day as today
)

my_taskid = "D_SDM_MFGxD_ODS_MFG_SRC__WO_NQJ"
D_SDM_MFGxD_ODS_MFG_SRC__WO_NQJ= ExternalTaskSensor(
#    schedule_interval=None,
    pool = "sensor_pool",
    task_id=my_taskid,
    external_dag_id="D_ODS_MFG_SRC",
    external_task_id="WO_NQJ",
    mode="reschedule",
    dag=D_SDM_MFG,
#    execution_delta=None,  # Same day as today
)

my_taskid = "D_SDM_MFGxD_ODS_MFG_SRC__WO_NQX"
D_SDM_MFGxD_ODS_MFG_SRC__WO_NQX= ExternalTaskSensor(
#    schedule_interval=None,
    pool = "sensor_pool",
    task_id=my_taskid,
    external_dag_id="D_ODS_MFG_SRC",
    external_task_id="WO_NQX",
    mode="reschedule",
    dag=D_SDM_MFG,
#    execution_delta=None,  # Same day as today
)

my_taskid = "D_SDM_MFGxD_ODS_MFG_SRC__MO_STATUS_NQJ"
D_SDM_MFGxD_ODS_MFG_SRC__MO_STATUS_NQJ= ExternalTaskSensor(
#    schedule_interval=None,
    pool = "sensor_pool",
    task_id=my_taskid,
    external_dag_id="D_ODS_MFG_SRC",
    external_task_id="MO_STATUS_NQJ",
    mode="reschedule",
    dag=D_SDM_MFG,
#    execution_delta=None,  # Same day as today
)

my_taskid = "D_SDM_MFGxD_ODS_MFG_SRC__YIELDRATEWO_YR_NQJ"
D_SDM_MFGxD_ODS_MFG_SRC__YIELDRATEWO_YR_NQJ= ExternalTaskSensor(
#    schedule_interval=None,
    pool = "sensor_pool",
    task_id=my_taskid,
    external_dag_id="D_ODS_MFG_SRC",
    external_task_id="YIELDRATEWO_YR_NQJ",
    mode="reschedule",
    dag=D_SDM_MFG,
#    execution_delta=None,  # Same day as today
)

my_taskid = "D_SDM_MFGxD_ODS_MFG_SRC__YIELDRATEWO_YR_NQX"
D_SDM_MFGxD_ODS_MFG_SRC__YIELDRATEWO_YR_NQX= ExternalTaskSensor(
#    schedule_interval=None,
    pool = "sensor_pool",
    task_id=my_taskid,
    external_dag_id="D_ODS_MFG_SRC",
    external_task_id="YIELDRATEWO_YR_NQX",
    mode="reschedule",
    dag=D_SDM_MFG,
#    execution_delta=None,  # Same day as today
)

my_taskid = "D_SDM_MFGxD_ODS_MFG_SRC__ABNORMAL_DETAIL_NQJ"
D_SDM_MFGxD_ODS_MFG_SRC__ABNORMAL_DETAIL_NQJ= ExternalTaskSensor(
#    schedule_interval=None,
    pool = "sensor_pool",
    task_id=my_taskid,
    external_dag_id="D_ODS_MFG_SRC",
    external_task_id="ABNORMAL_DETAIL_NQJ",
    mode="reschedule",
    dag=D_SDM_MFG,
#    execution_delta=None,  # Same day as today
)

my_taskid = "D_SDM_MFGxD_ODS_MFG_SRC__TRIAL_FORMULA_NQJ"
D_SDM_MFGxD_ODS_MFG_SRC__TRIAL_FORMULA_NQJ= ExternalTaskSensor(
#    schedule_interval=None,
    pool = "sensor_pool",
    task_id=my_taskid,
    external_dag_id="D_ODS_MFG_SRC",
    external_task_id="TRIAL_FORMULA_NQJ",
    mode="reschedule",
    dag=D_SDM_MFG,
#    execution_delta=None,  # Same day as today
)

my_taskid = "D_SDM_MFGxD_ODS_MFG_SRC__CHANGE_LINE_NQJ"
D_SDM_MFGxD_ODS_MFG_SRC__CHANGE_LINE_NQJ= ExternalTaskSensor(
#    schedule_interval=None,
    pool = "sensor_pool",
    task_id=my_taskid,
    external_dag_id="D_ODS_MFG_SRC",
    external_task_id="CHANGE_LINE_NQJ",
    mode="reschedule",
    dag=D_SDM_MFG,
#    execution_delta=None,  # Same day as today
)

my_taskid = "D_SDM_MFGxD_ODS_MFG_SRC__MO_OUTPUT_QTY_NQJ"
D_SDM_MFGxD_ODS_MFG_SRC__MO_OUTPUT_QTY_NQJ= ExternalTaskSensor(
#    schedule_interval=None,
    pool = "sensor_pool",
    task_id=my_taskid,
    external_dag_id="D_ODS_MFG_SRC",
    external_task_id="MO_OUTPUT_QTY_NQJ",
    mode="reschedule",
    dag=D_SDM_MFG,
#    execution_delta=None,  # Same day as today
)

my_taskid = "D_SDM_MFGxD_ODS_MFG_SRC__WIP_ENTITIES"
D_SDM_MFGxD_ODS_MFG_SRC__WIP_ENTITIES= ExternalTaskSensor(
#    schedule_interval=None,
    pool = "sensor_pool",
    task_id=my_taskid,
    external_dag_id="D_ODS_MFG_SRC",
    external_task_id="WIP_ENTITIES",
    mode="reschedule",
    dag=D_SDM_MFG,
#    execution_delta=None,  # Same day as today
)

my_taskid = "D_SDM_MFGxD_ODS_MFG_SRC__WIP_DISCRETE_JOBS"
D_SDM_MFGxD_ODS_MFG_SRC__WIP_DISCRETE_JOBS= ExternalTaskSensor(
#    schedule_interval=None,
    pool = "sensor_pool",
    task_id=my_taskid,
    external_dag_id="D_ODS_MFG_SRC",
    external_task_id="WIP_DISCRETE_JOBS",
    mode="reschedule",
    dag=D_SDM_MFG,
#    execution_delta=None,  # Same day as today
)

my_taskid = "D_SDM_MFGxD_ODS_MFG_SRC__WIP_LINES"
D_SDM_MFGxD_ODS_MFG_SRC__WIP_LINES= ExternalTaskSensor(
#    schedule_interval=None,
    pool = "sensor_pool",
    task_id=my_taskid,
    external_dag_id="D_ODS_MFG_SRC",
    external_task_id="WIP_LINES",
    mode="reschedule",
    dag=D_SDM_MFG,
#    execution_delta=None,  # Same day as today
)

my_taskid = "D_SDM_MFGxD_ODS_PRD_SRC__MTL_SYSTEM_ITEMS_B"
D_SDM_MFGxD_ODS_PRD_SRC__MTL_SYSTEM_ITEMS_B= ExternalTaskSensor(
#    schedule_interval=None,
    pool = "sensor_pool",
    task_id=my_taskid,
    external_dag_id="D_ODS_PRD_SRC",
    external_task_id="MTL_SYSTEM_ITEMS_B",
    mode="reschedule",
    dag=D_SDM_MFG,
#    execution_delta=None,  # Same day as today
)

my_taskid = "D_SDM_MFGxD_ODS_MFG_SRC__MV_XX_MTL_ITEM_CATEGORY"
D_SDM_MFGxD_ODS_MFG_SRC__MV_XX_MTL_ITEM_CATEGORY= ExternalTaskSensor(
#    schedule_interval=None,
    pool = "sensor_pool",
    task_id=my_taskid,
    external_dag_id="D_ODS_MFG_SRC",
    external_task_id="MV_XX_MTL_ITEM_CATEGORY",
    mode="reschedule",
    dag=D_SDM_MFG,
#    execution_delta=None,  # Same day as today
)

my_taskid = "D_SDM_MFGxD_ODS_QAM_SRC__MV_ORG_ORGANIZATION_DEF"
D_SDM_MFGxD_ODS_QAM_SRC__MV_ORG_ORGANIZATION_DEF= ExternalTaskSensor(
#    schedule_interval=None,
    pool = "sensor_pool",
    task_id=my_taskid,
    external_dag_id="D_ODS_QAM_SRC",
    external_task_id="MV_ORG_ORGANIZATION_DEF",
    mode="reschedule",
    dag=D_SDM_MFG,
#    execution_delta=None,  # Same day as today
)

my_taskid = "D_SDM_MFGxD_ODS_MFG_SRC__STAGE_NQJ"
D_SDM_MFGxD_ODS_MFG_SRC__STAGE_NQJ= ExternalTaskSensor(
#    schedule_interval=None,
    pool = "sensor_pool",
    task_id=my_taskid,
    external_dag_id="D_ODS_MFG_SRC",
    external_task_id="STAGE_NQJ",
    mode="reschedule",
    dag=D_SDM_MFG,
#    execution_delta=None,  # Same day as today
)

my_taskid = "D_SDM_MFGxD_ODS_MFG_SRC__STAGE_NQX"
D_SDM_MFGxD_ODS_MFG_SRC__STAGE_NQX= ExternalTaskSensor(
#    schedule_interval=None,
    pool = "sensor_pool",
    task_id=my_taskid,
    external_dag_id="D_ODS_MFG_SRC",
    external_task_id="STAGE_NQX",
    mode="reschedule",
    dag=D_SDM_MFG,
#    execution_delta=None,  # Same day as today
)

my_taskid = "D_SDM_MFGxD_ODS_MFG_SRC__LINE_NQJ"
D_SDM_MFGxD_ODS_MFG_SRC__LINE_NQJ= ExternalTaskSensor(
#    schedule_interval=None,
    pool = "sensor_pool",
    task_id=my_taskid,
    external_dag_id="D_ODS_MFG_SRC",
    external_task_id="LINE_NQJ",
    mode="reschedule",
    dag=D_SDM_MFG,
#    execution_delta=None,  # Same day as today
)

my_taskid = "D_SDM_MFGxD_ODS_MFG_SRC__LINE_NQX"
D_SDM_MFGxD_ODS_MFG_SRC__LINE_NQX= ExternalTaskSensor(
#    schedule_interval=None,
    pool = "sensor_pool",
    task_id=my_taskid,
    external_dag_id="D_ODS_MFG_SRC",
    external_task_id="LINE_NQX",
    mode="reschedule",
    dag=D_SDM_MFG,
#    execution_delta=None,  # Same day as today
)

my_taskid = "D_SDM_MFGxD_ODS_MFG_SRC__LINE_LIST_NQJ"
D_SDM_MFGxD_ODS_MFG_SRC__LINE_LIST_NQJ= ExternalTaskSensor(
#    schedule_interval=None,
    pool = "sensor_pool",
    task_id=my_taskid,
    external_dag_id="D_ODS_MFG_SRC",
    external_task_id="LINE_LIST_NQJ",
    mode="reschedule",
    dag=D_SDM_MFG,
#    execution_delta=None,  # Same day as today
)

my_taskid = "D_SDM_MFGxD_ODS_MFG_SRC__XXWIP_STOREIN_USAGE_TEMP"
D_SDM_MFGxD_ODS_MFG_SRC__XXWIP_STOREIN_USAGE_TEMP= ExternalTaskSensor(
#    schedule_interval=None,
    pool = "sensor_pool",
    task_id=my_taskid,
    external_dag_id="D_ODS_MFG_SRC",
    external_task_id="XXWIP_STOREIN_USAGE_TEMP",
    mode="reschedule",
    dag=D_SDM_MFG,
#    execution_delta=None,  # Same day as today
)

my_taskid = "D_SDM_MFGxD_SDM_SCM__SDM_ORG_HIER"
D_SDM_MFGxD_SDM_SCM__SDM_ORG_HIER= ExternalTaskSensor(
#    schedule_interval=None,
    pool = "sensor_pool",
    task_id=my_taskid,
    external_dag_id="D_SDM_SCM",
    external_task_id="SDM_ORG_HIER",
    mode="reschedule",
    dag=D_SDM_MFG,
#    execution_delta=None,  # Same day as today
)

my_taskid = "D_SDM_MFGxD_ODS_QAM_SRC__COPQ_FCTACTUALCOST"
D_SDM_MFGxD_ODS_QAM_SRC__COPQ_FCTACTUALCOST= ExternalTaskSensor(
#    schedule_interval=None,
    pool = "sensor_pool",
    task_id=my_taskid,
    external_dag_id="D_ODS_QAM_SRC",
    external_task_id="COPQ_FCTACTUALCOST",
    mode="reschedule",
    dag=D_SDM_MFG,
#    execution_delta=None,  # Same day as today
)

my_taskid = "D_SDM_MFGxD_ODS_QAM_SRC__COPQ_DIMCATEGORY"
D_SDM_MFGxD_ODS_QAM_SRC__COPQ_DIMCATEGORY= ExternalTaskSensor(
#    schedule_interval=None,
    pool = "sensor_pool",
    task_id=my_taskid,
    external_dag_id="D_ODS_QAM_SRC",
    external_task_id="COPQ_DIMCATEGORY",
    mode="reschedule",
    dag=D_SDM_MFG,
#    execution_delta=None,  # Same day as today
)

my_taskid = "D_SDM_MFGxD_ODS_QAM_SRC__BI_DIMMULTIORG"
D_SDM_MFGxD_ODS_QAM_SRC__BI_DIMMULTIORG= ExternalTaskSensor(
#    schedule_interval=None,
    pool = "sensor_pool",
    task_id=my_taskid,
    external_dag_id="D_ODS_QAM_SRC",
    external_task_id="BI_DIMMULTIORG",
    mode="reschedule",
    dag=D_SDM_MFG,
#    execution_delta=None,  # Same day as today
)

my_taskid = "D_DM_MFGxD_SDM_MFG__SDM_MANUFACTURING_ORDER"
D_DM_MFGxD_SDM_MFG__SDM_MANUFACTURING_ORDER= ExternalTaskSensor(
#    schedule_interval=None,
    pool = "sensor_pool",
    task_id=my_taskid,
    external_dag_id="D_SDM_MFG",
    external_task_id="SDM_MANUFACTURING_ORDER",
    mode="reschedule",
    dag=D_DM_MFG,
#    execution_delta=None,  # Same day as today
)

my_taskid = "D_DM_MFGxD_SDM_MFG__SDM_STAGE"
D_DM_MFGxD_SDM_MFG__SDM_STAGE= ExternalTaskSensor(
#    schedule_interval=None,
    pool = "sensor_pool",
    task_id=my_taskid,
    external_dag_id="D_SDM_MFG",
    external_task_id="SDM_STAGE",
    mode="reschedule",
    dag=D_DM_MFG,
#    execution_delta=None,  # Same day as today
)

my_taskid = "D_DM_MFGxD_SDM_MFG__SDM_SFCS_LINE"
D_DM_MFGxD_SDM_MFG__SDM_SFCS_LINE= ExternalTaskSensor(
#    schedule_interval=None,
    pool = "sensor_pool",
    task_id=my_taskid,
    external_dag_id="D_SDM_MFG",
    external_task_id="SDM_SFCS_LINE",
    mode="reschedule",
    dag=D_DM_MFG,
#    execution_delta=None,  # Same day as today
)

my_taskid = "D_DM_MFGxD_SDM_MFG__SDM_PRODUCTIVITY_LINE"
D_DM_MFGxD_SDM_MFG__SDM_PRODUCTIVITY_LINE= ExternalTaskSensor(
#    schedule_interval=None,
    pool = "sensor_pool",
    task_id=my_taskid,
    external_dag_id="D_SDM_MFG",
    external_task_id="SDM_PRODUCTIVITY_LINE",
    mode="reschedule",
    dag=D_DM_MFG,
#    execution_delta=None,  # Same day as today
)

my_taskid = "D_DM_MFGxD_SDM_MFG__SDM_PROCESS"
D_DM_MFGxD_SDM_MFG__SDM_PROCESS= ExternalTaskSensor(
#    schedule_interval=None,
    pool = "sensor_pool",
    task_id=my_taskid,
    external_dag_id="D_SDM_MFG",
    external_task_id="SDM_PROCESS",
    mode="reschedule",
    dag=D_DM_MFG,
#    execution_delta=None,  # Same day as today
)

my_taskid = "D_DM_MFGxD_SDM_MFG__SDM_SHIFT"
D_DM_MFGxD_SDM_MFG__SDM_SHIFT= ExternalTaskSensor(
#    schedule_interval=None,
    pool = "sensor_pool",
    task_id=my_taskid,
    external_dag_id="D_SDM_MFG",
    external_task_id="SDM_SHIFT",
    mode="reschedule",
    dag=D_DM_MFG,
#    execution_delta=None,  # Same day as today
)

my_taskid = "D_DM_MFGxD_SDM_MFG__SDM_FPYR_IN_SINGLE_STATION"
D_DM_MFGxD_SDM_MFG__SDM_FPYR_IN_SINGLE_STATION= ExternalTaskSensor(
#    schedule_interval=None,
    pool = "sensor_pool",
    task_id=my_taskid,
    external_dag_id="D_SDM_MFG",
    external_task_id="SDM_FPYR_IN_SINGLE_STATION",
    mode="reschedule",
    dag=D_DM_MFG,
#    execution_delta=None,  # Same day as today
)

my_taskid = "D_DM_MFGxD_SDM_SCM__SDM_ORG_HIER"
D_DM_MFGxD_SDM_SCM__SDM_ORG_HIER= ExternalTaskSensor(
#    schedule_interval=None,
    pool = "sensor_pool",
    task_id=my_taskid,
    external_dag_id="D_SDM_SCM",
    external_task_id="SDM_ORG_HIER",
    mode="reschedule",
    dag=D_DM_MFG,
#    execution_delta=None,  # Same day as today
)

my_taskid = "D_DM_MFGxD_SDM_MFG__SDM_FIRST_PASS_YIELD_RATE"
D_DM_MFGxD_SDM_MFG__SDM_FIRST_PASS_YIELD_RATE= ExternalTaskSensor(
#    schedule_interval=None,
    pool = "sensor_pool",
    task_id=my_taskid,
    external_dag_id="D_SDM_MFG",
    external_task_id="SDM_FIRST_PASS_YIELD_RATE",
    mode="reschedule",
    dag=D_DM_MFG,
#    execution_delta=None,  # Same day as today
)

my_taskid = "D_DM_MFGxD_SDM_MFG__SDM_COST_OF_POOR_QUALITY"
D_DM_MFGxD_SDM_MFG__SDM_COST_OF_POOR_QUALITY= ExternalTaskSensor(
#    schedule_interval=None,
    pool = "sensor_pool",
    task_id=my_taskid,
    external_dag_id="D_SDM_MFG",
    external_task_id="SDM_COST_OF_POOR_QUALITY",
    mode="reschedule",
    dag=D_DM_MFG,
#    execution_delta=None,  # Same day as today
)

my_taskid = "D_DM_MFGxM_DM_FIN__FCT_MANUFACTURING_REVENUE"
D_DM_MFGxM_DM_FIN__FCT_MANUFACTURING_REVENUE= ExternalTaskSensor(
#    schedule_interval=None,
    pool = "sensor_pool",
    task_id=my_taskid,
    external_dag_id="M_DM_FIN",
    external_task_id="FCT_MANUFACTURING_REVENUE",
    mode="reschedule",
    dag=D_DM_MFG,
#    execution_delta=None,  # Same day as today
)

my_taskid = "D_DM_MFGxD_STG_INIT__SYS_STS_STG"
D_DM_MFGxD_STG_INIT__SYS_STS_STG= ExternalTaskSensor(
#    schedule_interval=None,
    pool = "sensor_pool",
    task_id=my_taskid,
    external_dag_id="D_STG_INIT",
    external_task_id="SYS_STS_STG",
    mode="reschedule",
    dag=D_DM_MFG,
#    execution_delta=None,  # Same day as today
)

my_taskid = "D_DM_MFGxD_SDM_MFG__SDM_SMT_LINE_DISTRIBUTION_RATIO"
D_DM_MFGxD_SDM_MFG__SDM_SMT_LINE_DISTRIBUTION_RATIO= ExternalTaskSensor(
#    schedule_interval=None,
    pool = "sensor_pool",
    task_id=my_taskid,
    external_dag_id="D_SDM_MFG",
    external_task_id="SDM_SMT_LINE_DISTRIBUTION_RATIO",
    mode="reschedule",
    dag=D_DM_MFG,
#    execution_delta=None,  # Same day as today
)
	
# 	XSLT:loop: JOB_FLOW_NAME-and-PRE_JOB: External: END}}


# XSLT:loop: JOB_FLOW_NAME: START{


# 	XSLT:loop: Rows-by-JOB_FLOW_NAME: JOB_NAME: START{{
sqlg_jobs_MFG.ABNORMAL_DETAIL_NQJ.dag=D_ODS_MFG_SRC
D_ODS_MFG_SRCxD_STG_INIT__SYS_STS_STG.set_downstream(sqlg_jobs_MFG.ABNORMAL_DETAIL_NQJ)
sqlg_jobs_MFG.ABNORMAL_DETAIL_VN1.dag=D_ODS_MFG_SRC
D_ODS_MFG_SRCxD_STG_INIT__SYS_STS_STG.set_downstream(sqlg_jobs_MFG.ABNORMAL_DETAIL_VN1)
sqlg_jobs_MFG.ABNORMAL_DETAIL_WS1.dag=D_ODS_MFG_SRC
D_ODS_MFG_SRCxD_STG_INIT__SYS_STS_STG.set_downstream(sqlg_jobs_MFG.ABNORMAL_DETAIL_WS1)
sqlg_jobs_MFG.ABNORMAL_DETAIL_WS2.dag=D_ODS_MFG_SRC
D_ODS_MFG_SRCxD_STG_INIT__SYS_STS_STG.set_downstream(sqlg_jobs_MFG.ABNORMAL_DETAIL_WS2)
sqlg_jobs_MFG.ASS_RESULT_NQJ.dag=D_ODS_MFG_SRC
D_ODS_MFG_SRCxD_STG_INIT__SYS_STS_STG.set_downstream(sqlg_jobs_MFG.ASS_RESULT_NQJ)
sqlg_jobs_MFG.ASS_RESULT_WS1.dag=D_ODS_MFG_SRC
D_ODS_MFG_SRCxD_STG_INIT__SYS_STS_STG.set_downstream(sqlg_jobs_MFG.ASS_RESULT_WS1)
sqlg_jobs_MFG.ASS_RESULT_WS2.dag=D_ODS_MFG_SRC
D_ODS_MFG_SRCxD_STG_INIT__SYS_STS_STG.set_downstream(sqlg_jobs_MFG.ASS_RESULT_WS2)
sqlg_jobs_MFG.ASS_STAGE_NQJ.dag=D_ODS_MFG_SRC
D_ODS_MFG_SRCxD_STG_INIT__SYS_STS_STG.set_downstream(sqlg_jobs_MFG.ASS_STAGE_NQJ)
sqlg_jobs_MFG.ASS_STAGE_WS1.dag=D_ODS_MFG_SRC
D_ODS_MFG_SRCxD_STG_INIT__SYS_STS_STG.set_downstream(sqlg_jobs_MFG.ASS_STAGE_WS1)
sqlg_jobs_MFG.ASS_STAGE_WS2.dag=D_ODS_MFG_SRC
D_ODS_MFG_SRCxD_STG_INIT__SYS_STS_STG.set_downstream(sqlg_jobs_MFG.ASS_STAGE_WS2)
sqlg_jobs_MFG.BI_DIMBUDESC.dag=D_ODS_MFG_SRC
D_ODS_MFG_SRCxD_STG_INIT__SYS_STS_STG.set_downstream(sqlg_jobs_MFG.BI_DIMBUDESC)
sqlg_jobs_MFG.BU_NQJ.dag=D_ODS_MFG_SRC
D_ODS_MFG_SRCxD_STG_INIT__SYS_STS_STG.set_downstream(sqlg_jobs_MFG.BU_NQJ)
sqlg_jobs_MFG.BU_WS1.dag=D_ODS_MFG_SRC
D_ODS_MFG_SRCxD_STG_INIT__SYS_STS_STG.set_downstream(sqlg_jobs_MFG.BU_WS1)
sqlg_jobs_MFG.BU_WS2.dag=D_ODS_MFG_SRC
D_ODS_MFG_SRCxD_STG_INIT__SYS_STS_STG.set_downstream(sqlg_jobs_MFG.BU_WS2)
sqlg_jobs_MFG.LINE_LIST_NQJ.dag=D_ODS_MFG_SRC
D_ODS_MFG_SRCxD_STG_INIT__SYS_STS_STG.set_downstream(sqlg_jobs_MFG.LINE_LIST_NQJ)
sqlg_jobs_MFG.LINE_LIST_VN1.dag=D_ODS_MFG_SRC
D_ODS_MFG_SRCxD_STG_INIT__SYS_STS_STG.set_downstream(sqlg_jobs_MFG.LINE_LIST_VN1)
sqlg_jobs_MFG.LINE_LIST_WS1.dag=D_ODS_MFG_SRC
D_ODS_MFG_SRCxD_STG_INIT__SYS_STS_STG.set_downstream(sqlg_jobs_MFG.LINE_LIST_WS1)
sqlg_jobs_MFG.LINE_LIST_WS2.dag=D_ODS_MFG_SRC
D_ODS_MFG_SRCxD_STG_INIT__SYS_STS_STG.set_downstream(sqlg_jobs_MFG.LINE_LIST_WS2)
sqlg_jobs_MFG.LINE_NQJ.dag=D_ODS_MFG_SRC
D_ODS_MFG_SRCxD_STG_INIT__SYS_STS_STG.set_downstream(sqlg_jobs_MFG.LINE_NQJ)
sqlg_jobs_MFG.LINE_NQX.dag=D_ODS_MFG_SRC
D_ODS_MFG_SRCxD_STG_INIT__SYS_STS_STG.set_downstream(sqlg_jobs_MFG.LINE_NQX)
sqlg_jobs_MFG.LINE_VN1.dag=D_ODS_MFG_SRC
D_ODS_MFG_SRCxD_STG_INIT__SYS_STS_STG.set_downstream(sqlg_jobs_MFG.LINE_VN1)
sqlg_jobs_MFG.LINE_WS1.dag=D_ODS_MFG_SRC
D_ODS_MFG_SRCxD_STG_INIT__SYS_STS_STG.set_downstream(sqlg_jobs_MFG.LINE_WS1)
sqlg_jobs_MFG.LINE_WS2.dag=D_ODS_MFG_SRC
D_ODS_MFG_SRCxD_STG_INIT__SYS_STS_STG.set_downstream(sqlg_jobs_MFG.LINE_WS2)
sqlg_jobs_MFG.MV_XX_MTL_ITEM_CATEGORY.dag=D_ODS_MFG_SRC
D_ODS_MFG_SRCxD_STG_INIT__SYS_STS_STG.set_downstream(sqlg_jobs_MFG.MV_XX_MTL_ITEM_CATEGORY)
sqlg_jobs_MFG.SMT_LINE_NQJ.dag=D_ODS_MFG_SRC
D_ODS_MFG_SRCxD_STG_INIT__SYS_STS_STG.set_downstream(sqlg_jobs_MFG.SMT_LINE_NQJ)
sqlg_jobs_MFG.SMT_LINE_VN1.dag=D_ODS_MFG_SRC
D_ODS_MFG_SRCxD_STG_INIT__SYS_STS_STG.set_downstream(sqlg_jobs_MFG.SMT_LINE_VN1)
sqlg_jobs_MFG.SMT_LINE_WS1.dag=D_ODS_MFG_SRC
D_ODS_MFG_SRCxD_STG_INIT__SYS_STS_STG.set_downstream(sqlg_jobs_MFG.SMT_LINE_WS1)
sqlg_jobs_MFG.SMT_LINE_WS2.dag=D_ODS_MFG_SRC
D_ODS_MFG_SRCxD_STG_INIT__SYS_STS_STG.set_downstream(sqlg_jobs_MFG.SMT_LINE_WS2)
sqlg_jobs_MFG.SPN_TABL_WS1.dag=D_ODS_MFG_SRC
D_ODS_MFG_SRCxD_STG_INIT__SYS_STS_STG.set_downstream(sqlg_jobs_MFG.SPN_TABL_WS1)
sqlg_jobs_MFG.SPN_TABL_WS2.dag=D_ODS_MFG_SRC
D_ODS_MFG_SRCxD_STG_INIT__SYS_STS_STG.set_downstream(sqlg_jobs_MFG.SPN_TABL_WS2)
sqlg_jobs_MFG.SPN_TABL_NQJ.dag=D_ODS_MFG_SRC
D_ODS_MFG_SRCxD_STG_INIT__SYS_STS_STG.set_downstream(sqlg_jobs_MFG.SPN_TABL_NQJ)
sqlg_jobs_MFG.SPN_TABL_NQX.dag=D_ODS_MFG_SRC
D_ODS_MFG_SRCxD_STG_INIT__SYS_STS_STG.set_downstream(sqlg_jobs_MFG.SPN_TABL_NQX)
sqlg_jobs_MFG.SPN_TABL_VN1.dag=D_ODS_MFG_SRC
D_ODS_MFG_SRCxD_STG_INIT__SYS_STS_STG.set_downstream(sqlg_jobs_MFG.SPN_TABL_VN1)
sqlg_jobs_MFG.STAGE_WS1.dag=D_ODS_MFG_SRC
D_ODS_MFG_SRCxD_STG_INIT__SYS_STS_STG.set_downstream(sqlg_jobs_MFG.STAGE_WS1)
sqlg_jobs_MFG.STAGE_WS2.dag=D_ODS_MFG_SRC
D_ODS_MFG_SRCxD_STG_INIT__SYS_STS_STG.set_downstream(sqlg_jobs_MFG.STAGE_WS2)
sqlg_jobs_MFG.STAGE_NQJ.dag=D_ODS_MFG_SRC
D_ODS_MFG_SRCxD_STG_INIT__SYS_STS_STG.set_downstream(sqlg_jobs_MFG.STAGE_NQJ)
sqlg_jobs_MFG.STAGE_NQX.dag=D_ODS_MFG_SRC
D_ODS_MFG_SRCxD_STG_INIT__SYS_STS_STG.set_downstream(sqlg_jobs_MFG.STAGE_NQX)
sqlg_jobs_MFG.STAGE_VN1.dag=D_ODS_MFG_SRC
D_ODS_MFG_SRCxD_STG_INIT__SYS_STS_STG.set_downstream(sqlg_jobs_MFG.STAGE_VN1)
sqlg_jobs_MFG.WIP_DISCRETE_JOBS.dag=D_ODS_MFG_SRC
D_ODS_MFG_SRCxD_STG_INIT__SYS_STS_STG.set_downstream(sqlg_jobs_MFG.WIP_DISCRETE_JOBS)
sqlg_jobs_MFG.WIP_ENTITIES.dag=D_ODS_MFG_SRC
D_ODS_MFG_SRCxD_STG_INIT__SYS_STS_STG.set_downstream(sqlg_jobs_MFG.WIP_ENTITIES)
sqlg_jobs_MFG.WIP_LINES.dag=D_ODS_MFG_SRC
D_ODS_MFG_SRCxD_STG_INIT__SYS_STS_STG.set_downstream(sqlg_jobs_MFG.WIP_LINES)
sqlg_jobs_MFG.XXWIP_STOREIN_USAGE_TEMP.dag=D_ODS_MFG_SRC
D_ODS_MFG_SRCxD_STG_INIT__SYS_STS_STG.set_downstream(sqlg_jobs_MFG.XXWIP_STOREIN_USAGE_TEMP)
sqlg_jobs_MFG.CHANGE_LINE_NQJ.dag=D_ODS_MFG_SRC
D_ODS_MFG_SRCxD_STG_INIT__SYS_STS_STG.set_downstream(sqlg_jobs_MFG.CHANGE_LINE_NQJ)
sqlg_jobs_MFG.CHANGE_LINE_VN1.dag=D_ODS_MFG_SRC
D_ODS_MFG_SRCxD_STG_INIT__SYS_STS_STG.set_downstream(sqlg_jobs_MFG.CHANGE_LINE_VN1)
sqlg_jobs_MFG.CHANGE_LINE_WS1.dag=D_ODS_MFG_SRC
D_ODS_MFG_SRCxD_STG_INIT__SYS_STS_STG.set_downstream(sqlg_jobs_MFG.CHANGE_LINE_WS1)
sqlg_jobs_MFG.CHANGE_LINE_WS2.dag=D_ODS_MFG_SRC
D_ODS_MFG_SRCxD_STG_INIT__SYS_STS_STG.set_downstream(sqlg_jobs_MFG.CHANGE_LINE_WS2)
sqlg_jobs_MFG.MO_OUTPUT_QTY_NQJ.dag=D_ODS_MFG_SRC
D_ODS_MFG_SRCxD_STG_INIT__SYS_STS_STG.set_downstream(sqlg_jobs_MFG.MO_OUTPUT_QTY_NQJ)
sqlg_jobs_MFG.MO_OUTPUT_QTY_VN1.dag=D_ODS_MFG_SRC
D_ODS_MFG_SRCxD_STG_INIT__SYS_STS_STG.set_downstream(sqlg_jobs_MFG.MO_OUTPUT_QTY_VN1)
sqlg_jobs_MFG.MO_OUTPUT_QTY_WS1.dag=D_ODS_MFG_SRC
D_ODS_MFG_SRCxD_STG_INIT__SYS_STS_STG.set_downstream(sqlg_jobs_MFG.MO_OUTPUT_QTY_WS1)
sqlg_jobs_MFG.MO_OUTPUT_QTY_WS2.dag=D_ODS_MFG_SRC
D_ODS_MFG_SRCxD_STG_INIT__SYS_STS_STG.set_downstream(sqlg_jobs_MFG.MO_OUTPUT_QTY_WS2)
sqlg_jobs_MFG.MO_STATUS_NQJ.dag=D_ODS_MFG_SRC
D_ODS_MFG_SRCxD_STG_INIT__SYS_STS_STG.set_downstream(sqlg_jobs_MFG.MO_STATUS_NQJ)
sqlg_jobs_MFG.MO_STATUS_VN1.dag=D_ODS_MFG_SRC
D_ODS_MFG_SRCxD_STG_INIT__SYS_STS_STG.set_downstream(sqlg_jobs_MFG.MO_STATUS_VN1)
sqlg_jobs_MFG.MO_STATUS_WS1.dag=D_ODS_MFG_SRC
D_ODS_MFG_SRCxD_STG_INIT__SYS_STS_STG.set_downstream(sqlg_jobs_MFG.MO_STATUS_WS1)
sqlg_jobs_MFG.MO_STATUS_WS2.dag=D_ODS_MFG_SRC
D_ODS_MFG_SRCxD_STG_INIT__SYS_STS_STG.set_downstream(sqlg_jobs_MFG.MO_STATUS_WS2)
sqlg_jobs_MFG.PD_ABNORMALCODE_NQJ.dag=D_ODS_MFG_SRC
D_ODS_MFG_SRCxD_STG_INIT__SYS_STS_STG.set_downstream(sqlg_jobs_MFG.PD_ABNORMALCODE_NQJ)
sqlg_jobs_MFG.PD_ABNORMALCODE_VN1.dag=D_ODS_MFG_SRC
D_ODS_MFG_SRCxD_STG_INIT__SYS_STS_STG.set_downstream(sqlg_jobs_MFG.PD_ABNORMALCODE_VN1)
sqlg_jobs_MFG.PD_ABNORMALCODE_WS1.dag=D_ODS_MFG_SRC
D_ODS_MFG_SRCxD_STG_INIT__SYS_STS_STG.set_downstream(sqlg_jobs_MFG.PD_ABNORMALCODE_WS1)
sqlg_jobs_MFG.PD_ABNORMALCODE_WS2.dag=D_ODS_MFG_SRC
D_ODS_MFG_SRCxD_STG_INIT__SYS_STS_STG.set_downstream(sqlg_jobs_MFG.PD_ABNORMALCODE_WS2)
sqlg_jobs_MFG.TRIAL_FORMULA_NQJ.dag=D_ODS_MFG_SRC
D_ODS_MFG_SRCxD_STG_INIT__SYS_STS_STG.set_downstream(sqlg_jobs_MFG.TRIAL_FORMULA_NQJ)
sqlg_jobs_MFG.TRIAL_FORMULA_SMT_NQJ.dag=D_ODS_MFG_SRC
D_ODS_MFG_SRCxD_STG_INIT__SYS_STS_STG.set_downstream(sqlg_jobs_MFG.TRIAL_FORMULA_SMT_NQJ)
sqlg_jobs_MFG.TRIAL_FORMULA_SMT_VN1.dag=D_ODS_MFG_SRC
D_ODS_MFG_SRCxD_STG_INIT__SYS_STS_STG.set_downstream(sqlg_jobs_MFG.TRIAL_FORMULA_SMT_VN1)
sqlg_jobs_MFG.TRIAL_FORMULA_SMT_WS1.dag=D_ODS_MFG_SRC
D_ODS_MFG_SRCxD_STG_INIT__SYS_STS_STG.set_downstream(sqlg_jobs_MFG.TRIAL_FORMULA_SMT_WS1)
sqlg_jobs_MFG.TRIAL_FORMULA_SMT_WS2.dag=D_ODS_MFG_SRC
D_ODS_MFG_SRCxD_STG_INIT__SYS_STS_STG.set_downstream(sqlg_jobs_MFG.TRIAL_FORMULA_SMT_WS2)
sqlg_jobs_MFG.TRIAL_FORMULA_VN1.dag=D_ODS_MFG_SRC
D_ODS_MFG_SRCxD_STG_INIT__SYS_STS_STG.set_downstream(sqlg_jobs_MFG.TRIAL_FORMULA_VN1)
sqlg_jobs_MFG.TRIAL_FORMULA_WS1.dag=D_ODS_MFG_SRC
D_ODS_MFG_SRCxD_STG_INIT__SYS_STS_STG.set_downstream(sqlg_jobs_MFG.TRIAL_FORMULA_WS1)
sqlg_jobs_MFG.TRIAL_FORMULA_WS2.dag=D_ODS_MFG_SRC
D_ODS_MFG_SRCxD_STG_INIT__SYS_STS_STG.set_downstream(sqlg_jobs_MFG.TRIAL_FORMULA_WS2)
sqlg_jobs_MFG.WO_NQJ.dag=D_ODS_MFG_SRC
D_ODS_MFG_SRCxD_STG_INIT__SYS_STS_STG.set_downstream(sqlg_jobs_MFG.WO_NQJ)
sqlg_jobs_MFG.WO_NQX.dag=D_ODS_MFG_SRC
D_ODS_MFG_SRCxD_STG_INIT__SYS_STS_STG.set_downstream(sqlg_jobs_MFG.WO_NQX)
sqlg_jobs_MFG.WO_ROUTING_NQJ.dag=D_ODS_MFG_SRC
D_ODS_MFG_SRCxD_STG_INIT__SYS_STS_STG.set_downstream(sqlg_jobs_MFG.WO_ROUTING_NQJ)
sqlg_jobs_MFG.WO_ROUTING_NQX.dag=D_ODS_MFG_SRC
D_ODS_MFG_SRCxD_STG_INIT__SYS_STS_STG.set_downstream(sqlg_jobs_MFG.WO_ROUTING_NQX)
sqlg_jobs_MFG.WO_ROUTING_VN1.dag=D_ODS_MFG_SRC
D_ODS_MFG_SRCxD_STG_INIT__SYS_STS_STG.set_downstream(sqlg_jobs_MFG.WO_ROUTING_VN1)
sqlg_jobs_MFG.WO_ROUTING_WS1.dag=D_ODS_MFG_SRC
D_ODS_MFG_SRCxD_STG_INIT__SYS_STS_STG.set_downstream(sqlg_jobs_MFG.WO_ROUTING_WS1)
sqlg_jobs_MFG.WO_ROUTING_WS2.dag=D_ODS_MFG_SRC
D_ODS_MFG_SRCxD_STG_INIT__SYS_STS_STG.set_downstream(sqlg_jobs_MFG.WO_ROUTING_WS2)
sqlg_jobs_MFG.WO_VN1.dag=D_ODS_MFG_SRC
D_ODS_MFG_SRCxD_STG_INIT__SYS_STS_STG.set_downstream(sqlg_jobs_MFG.WO_VN1)
sqlg_jobs_MFG.WO_WS1.dag=D_ODS_MFG_SRC
D_ODS_MFG_SRCxD_STG_INIT__SYS_STS_STG.set_downstream(sqlg_jobs_MFG.WO_WS1)
sqlg_jobs_MFG.WO_WS2.dag=D_ODS_MFG_SRC
D_ODS_MFG_SRCxD_STG_INIT__SYS_STS_STG.set_downstream(sqlg_jobs_MFG.WO_WS2)
sqlg_jobs_MFG.YIELDRATEWO_YR_NQJ.dag=D_ODS_MFG_SRC
D_ODS_MFG_SRCxD_STG_INIT__SYS_STS_STG.set_downstream(sqlg_jobs_MFG.YIELDRATEWO_YR_NQJ)
sqlg_jobs_MFG.YIELDRATEWO_YR_NQX.dag=D_ODS_MFG_SRC
D_ODS_MFG_SRCxD_STG_INIT__SYS_STS_STG.set_downstream(sqlg_jobs_MFG.YIELDRATEWO_YR_NQX)
sqlg_jobs_MFG.YIELDRATEWO_YR_VN1.dag=D_ODS_MFG_SRC
D_ODS_MFG_SRCxD_STG_INIT__SYS_STS_STG.set_downstream(sqlg_jobs_MFG.YIELDRATEWO_YR_VN1)
sqlg_jobs_MFG.YIELDRATEWO_YR_WS1.dag=D_ODS_MFG_SRC
D_ODS_MFG_SRCxD_STG_INIT__SYS_STS_STG.set_downstream(sqlg_jobs_MFG.YIELDRATEWO_YR_WS1)
sqlg_jobs_MFG.YIELDRATEWO_YR_WS2.dag=D_ODS_MFG_SRC
D_ODS_MFG_SRCxD_STG_INIT__SYS_STS_STG.set_downstream(sqlg_jobs_MFG.YIELDRATEWO_YR_WS2)


# 	XSLT:loop: Rows-by-JOB_FLOW_NAME: JOB_NAME: START{{
sqlg_jobs_MFG.SDM_SRC_WO.dag=D_SDM_MFG
D_SDM_MFGxD_STG_INIT__SYS_STS_STG.set_downstream(sqlg_jobs_MFG.SDM_SRC_WO)
sqlg_jobs_MFG.SDM_SRC_MO_STATUS.dag=D_SDM_MFG
D_SDM_MFGxD_ODS_MFG_SRC__MO_STATUS_NQJ.set_downstream(sqlg_jobs_MFG.SDM_SRC_MO_STATUS)
sqlg_jobs_MFG.SDM_SRC_YIELDRATEWO_YR.dag=D_SDM_MFG
D_SDM_MFGxD_STG_INIT__SYS_STS_STG.set_downstream(sqlg_jobs_MFG.SDM_SRC_YIELDRATEWO_YR)
sqlg_jobs_MFG.SDM_SRC_ABNORMAL_DETAIL.dag=D_SDM_MFG
D_SDM_MFGxD_STG_INIT__SYS_STS_STG.set_downstream(sqlg_jobs_MFG.SDM_SRC_ABNORMAL_DETAIL)
sqlg_jobs_MFG.SDM_SRC_TRIAL_FORMULA.dag=D_SDM_MFG
D_SDM_MFGxD_STG_INIT__SYS_STS_STG.set_downstream(sqlg_jobs_MFG.SDM_SRC_TRIAL_FORMULA)
sqlg_jobs_MFG.SDM_SRC_CHANGE_LINE.dag=D_SDM_MFG
D_SDM_MFGxD_STG_INIT__SYS_STS_STG.set_downstream(sqlg_jobs_MFG.SDM_SRC_CHANGE_LINE)
sqlg_jobs_MFG.SDM_SRC_MO_OUTPUT_QTY.dag=D_SDM_MFG
D_SDM_MFGxD_STG_INIT__SYS_STS_STG.set_downstream(sqlg_jobs_MFG.SDM_SRC_MO_OUTPUT_QTY)
sqlg_jobs_MFG.SDM_SRC_TRIAL_FORMULA_SMT.dag=D_SDM_MFG
D_SDM_MFGxD_STG_INIT__SYS_STS_STG.set_downstream(sqlg_jobs_MFG.SDM_SRC_TRIAL_FORMULA_SMT)
sqlg_jobs_MFG.SDM_SRC_SPN_TABL.dag=D_SDM_MFG
D_SDM_MFGxD_STG_INIT__SYS_STS_STG.set_downstream(sqlg_jobs_MFG.SDM_SRC_SPN_TABL)
sqlg_jobs_MFG.SDM_MANUFACTURING_ORDER.dag=D_SDM_MFG
D_SDM_MFGxD_ODS_MFG_SRC__WIP_ENTITIES.set_downstream(sqlg_jobs_MFG.SDM_MANUFACTURING_ORDER)
sqlg_jobs_MFG.SDM_STAGE.dag=D_SDM_MFG
D_SDM_MFGxD_STG_INIT__SYS_STS_STG.set_downstream(sqlg_jobs_MFG.SDM_STAGE)
sqlg_jobs_MFG.SDM_SFCS_LINE.dag=D_SDM_MFG
D_SDM_MFGxD_STG_INIT__SYS_STS_STG.set_downstream(sqlg_jobs_MFG.SDM_SFCS_LINE)
sqlg_jobs_MFG.SDM_PRODUCTIVITY_LINE.dag=D_SDM_MFG
D_SDM_MFGxD_STG_INIT__SYS_STS_STG.set_downstream(sqlg_jobs_MFG.SDM_PRODUCTIVITY_LINE)
sqlg_jobs_MFG.SDM_PROCESS.dag=D_SDM_MFG
D_SDM_MFGxD_STG_INIT__SYS_STS_STG.set_downstream(sqlg_jobs_MFG.SDM_PROCESS)
sqlg_jobs_MFG.SDM_SHIFT.dag=D_SDM_MFG
D_SDM_MFGxD_STG_INIT__SYS_STS_STG.set_downstream(sqlg_jobs_MFG.SDM_SHIFT)
sqlg_jobs_MFG.SDM_FPYR_IN_SINGLE_STATION.dag=D_SDM_MFG
D_SDM_MFGxD_STG_INIT__SYS_STS_STG.set_downstream(sqlg_jobs_MFG.SDM_FPYR_IN_SINGLE_STATION)
sqlg_jobs_MFG.SDM_FIRST_PASS_YIELD_RATE.dag=D_SDM_MFG

sqlg_jobs_MFG.SDM_FPYR_IN_SINGLE_STATION.set_downstream(sqlg_jobs_MFG.SDM_FIRST_PASS_YIELD_RATE)
sqlg_jobs_MFG.SDM_AUTO_EQUIPMENT_STDH.dag=D_SDM_MFG
D_SDM_MFGxD_STG_INIT__SYS_STS_STG.set_downstream(sqlg_jobs_MFG.SDM_AUTO_EQUIPMENT_STDH)
sqlg_jobs_MFG.SDM_ACTIVATION.dag=D_SDM_MFG
D_SDM_MFGxD_STG_INIT__SYS_STS_STG.set_downstream(sqlg_jobs_MFG.SDM_ACTIVATION)
sqlg_jobs_MFG.SDM_SFCS_OUTPUT_QTY.dag=D_SDM_MFG

sqlg_jobs_MFG.SDM_SRC_ABNORMAL_DETAIL.set_downstream(sqlg_jobs_MFG.SDM_SFCS_OUTPUT_QTY)
sqlg_jobs_MFG.SDM_STANDARD_HOUR.dag=D_SDM_MFG
D_SDM_MFGxD_ODS_MFG_SRC__XXWIP_STOREIN_USAGE_TEMP.set_downstream(sqlg_jobs_MFG.SDM_STANDARD_HOUR)
sqlg_jobs_MFG.SDM_DIPATP_SFCS_OUTPUT_HOUR.dag=D_SDM_MFG

sqlg_jobs_MFG.SDM_STANDARD_HOUR.set_downstream(sqlg_jobs_MFG.SDM_DIPATP_SFCS_OUTPUT_HOUR)
sqlg_jobs_MFG.SDM_DIPATP_TTL_INPUT_HOURS.dag=D_SDM_MFG

sqlg_jobs_MFG.SDM_SRC_MO_STATUS.set_downstream(sqlg_jobs_MFG.SDM_DIPATP_TTL_INPUT_HOURS)
sqlg_jobs_MFG.SDM_SMT_SFCS_OUTPUT_HOUR.dag=D_SDM_MFG

sqlg_jobs_MFG.SDM_STANDARD_HOUR.set_downstream(sqlg_jobs_MFG.SDM_SMT_SFCS_OUTPUT_HOUR)
sqlg_jobs_MFG.SDM_SMT_WORK_HOUR.dag=D_SDM_MFG
D_SDM_MFGxD_STG_INIT__SYS_STS_STG.set_downstream(sqlg_jobs_MFG.SDM_SMT_WORK_HOUR)
sqlg_jobs_MFG.SDM_ORACLE_OUTPUT_HOUR.dag=D_SDM_MFG
D_SDM_MFGxD_ODS_MFG_SRC__XXWIP_STOREIN_USAGE_TEMP.set_downstream(sqlg_jobs_MFG.SDM_ORACLE_OUTPUT_HOUR)
sqlg_jobs_MFG.SDM_COST_OF_POOR_QUALITY.dag=D_SDM_MFG
D_SDM_MFGxD_SDM_SCM__SDM_ORG_HIER.set_downstream(sqlg_jobs_MFG.SDM_COST_OF_POOR_QUALITY)
sqlg_jobs_MFG.SDM_TOTAL_SCRAP_AMT.dag=D_SDM_MFG
D_SDM_MFGxD_SDM_SCM__SDM_ORG_HIER.set_downstream(sqlg_jobs_MFG.SDM_TOTAL_SCRAP_AMT)
sqlg_jobs_MFG.SDM_SMT_LINE_DISTRIBUTION_RATIO.dag=D_SDM_MFG
D_SDM_MFGxD_STG_INIT__SYS_STS_STG.set_downstream(sqlg_jobs_MFG.SDM_SMT_LINE_DISTRIBUTION_RATIO)


# 	XSLT:loop: Rows-by-JOB_FLOW_NAME: JOB_NAME: START{{
sqlg_jobs_MFG.DIM_MANUFACTURING_ORDER.dag=D_DM_MFG
D_DM_MFGxD_SDM_MFG__SDM_MANUFACTURING_ORDER.set_downstream(sqlg_jobs_MFG.DIM_MANUFACTURING_ORDER)
sqlg_jobs_MFG.DIM_STAGE.dag=D_DM_MFG
D_DM_MFGxD_SDM_MFG__SDM_STAGE.set_downstream(sqlg_jobs_MFG.DIM_STAGE)
sqlg_jobs_MFG.DIM_SFCS_LINE.dag=D_DM_MFG
D_DM_MFGxD_SDM_MFG__SDM_SFCS_LINE.set_downstream(sqlg_jobs_MFG.DIM_SFCS_LINE)
sqlg_jobs_MFG.DIM_PRODUCTIVITY_LINE.dag=D_DM_MFG
D_DM_MFGxD_SDM_MFG__SDM_PRODUCTIVITY_LINE.set_downstream(sqlg_jobs_MFG.DIM_PRODUCTIVITY_LINE)
sqlg_jobs_MFG.DIM_PROCESS.dag=D_DM_MFG
D_DM_MFGxD_SDM_MFG__SDM_PROCESS.set_downstream(sqlg_jobs_MFG.DIM_PROCESS)
sqlg_jobs_MFG.DIM_SHIFT.dag=D_DM_MFG
D_DM_MFGxD_SDM_MFG__SDM_SHIFT.set_downstream(sqlg_jobs_MFG.DIM_SHIFT)
sqlg_jobs_MFG.FCT_FPYR_IN_SINGLE_STATION.dag=D_DM_MFG
D_DM_MFGxD_SDM_MFG__SDM_FPYR_IN_SINGLE_STATION.set_downstream(sqlg_jobs_MFG.FCT_FPYR_IN_SINGLE_STATION)
sqlg_jobs_MFG.FCT_FIRST_PASS_YIELD_RATE.dag=D_DM_MFG
D_DM_MFGxD_SDM_MFG__SDM_FIRST_PASS_YIELD_RATE.set_downstream(sqlg_jobs_MFG.FCT_FIRST_PASS_YIELD_RATE)
sqlg_jobs_MFG.FCT_COST_OF_POOR_QUALITY.dag=D_DM_MFG
D_DM_MFGxD_SDM_SCM__SDM_ORG_HIER.set_downstream(sqlg_jobs_MFG.FCT_COST_OF_POOR_QUALITY)
sqlg_jobs_MFG.FCT_COST_OF_POOR_QUALITY_PC.dag=D_DM_MFG

sqlg_jobs_MFG.FCT_COST_OF_POOR_QUALITY.set_downstream(sqlg_jobs_MFG.FCT_COST_OF_POOR_QUALITY_PC)
sqlg_jobs_MFG.FCT_SCRAP_AMT_RATIO.dag=D_DM_MFG
D_DM_MFGxD_STG_INIT__SYS_STS_STG.set_downstream(sqlg_jobs_MFG.FCT_SCRAP_AMT_RATIO)
sqlg_jobs_MFG.FCT_SMT_LINE_DISTRIBUTION_RATIO.dag=D_DM_MFG
D_DM_MFGxD_SDM_MFG__SDM_SMT_LINE_DISTRIBUTION_RATIO.set_downstream(sqlg_jobs_MFG.FCT_SMT_LINE_DISTRIBUTION_RATIO)
