﻿



# -*- coding: utf-8 -*-
# Author        : Jesse Wei
# LastUpdate    : 2020/11/04
# Impact        : DAG generated by SQLG
# Message       : Humanity towards others, we live by sharing. Fear can hold you prisoner, only hope can set you free.

# from __future__ import print_function
import logging
import airflow
from datetime import datetime, timedelta
from airflow.operators.sensors import ExternalTaskSensor
from airflow.operators.python_operator import PythonOperator
from airflow import models
from airflow.models import Variable
# import sqlg_jobs 
import sqlg_jobs_SCM


#from acme.operators.dwh_operators import PostgresOperatorWithTemplatedParams

def f_SYS_STS_STG():
    logging.info('Control flow: STAGE status ')

args = {
    'owner': 'airflow',
    'start_date': airflow.utils.dates.days_ago(1),
    'provide_context': True
}

tmpl_search_path = Variable.get("sql_path")

my_taskid = 'SYS_STS_STG'
D_STG_INIT = airflow.DAG(
    'D_STG_INIT',
    schedule_interval=timedelta(1),
    default_args=args,
    template_searchpath=tmpl_search_path,    
    max_active_runs=1)

SYS_STS_STG = PythonOperator(task_id=my_taskid,
                    python_callable=f_SYS_STS_STG,
                    provide_context=False,
                    dag=D_STG_INIT)

my_taskid = 'D_STG_INITxSYS_STS_STG'                    
D_STG_INITxSYS_STS_STG = ExternalTaskSensor(
    task_id=my_taskid,
    external_dag_id='D_STG_INIT',
    external_task_id='SYS_STS_STG',
    execution_delta=None,  # Same day as today
    )

# Flow dag    
# DB_NAME = 'DWH'    
D_ODS_SCM = airflow.DAG(    "D_ODS_SCM",
    schedule_interval="@daily",
    dagrun_timeout=timedelta(minutes=60),
    template_searchpath=tmpl_search_path,
    default_args=args,
    start_date=airflow.utils.dates.days_ago(1),    
    max_active_runs=1)

### D_STG_INITxSYS_STS_STGxD_ODS_SCM

my_taskid = "D_STG_INITxSYS_STS_STGxD_ODS_SCM"
D_STG_INITxSYS_STS_STGxD_ODS_SCM= ExternalTaskSensor(
    task_id=my_taskid,
    external_dag_id="D_STG_INIT",
    external_task_id="SYS_STS_STG",
    execution_delta=None,  # Same day as today
)
### D_STG_INITxSYS_STS_STGxD_SDM_SCM

my_taskid = "D_STG_INITxSYS_STS_STGxD_SDM_SCM"
D_STG_INITxSYS_STS_STGxD_SDM_SCM= ExternalTaskSensor(
    task_id=my_taskid,
    external_dag_id="D_STG_INIT",
    external_task_id="SYS_STS_STG",
    execution_delta=None,  # Same day as today
)
sqlg_jobs_SCM.BRAND_CATEGORY.dag=D_ODS_SCM
D_STG_INITxSYS_STS_STGxD_ODS_SCM.set_downstream(sqlg_jobs_SCM.BRAND_CATEGORY)

sqlg_jobs_SCM.BRAND_DETAIL_SCORE_V.dag=D_ODS_SCM
D_STG_INITxSYS_STS_STGxD_ODS_SCM.set_downstream(sqlg_jobs_SCM.BRAND_DETAIL_SCORE_V)

sqlg_jobs_SCM.PLM_BRAND_V.dag=D_ODS_SCM
D_STG_INITxSYS_STS_STGxD_ODS_SCM.set_downstream(sqlg_jobs_SCM.PLM_BRAND_V)

sqlg_jobs_SCM.VPE_RANKING_VALUE.dag=D_ODS_SCM
D_STG_INITxSYS_STS_STGxD_ODS_SCM.set_downstream(sqlg_jobs_SCM.VPE_RANKING_VALUE)

sqlg_jobs_SCM.MTL_CATEGORY_B.dag=D_ODS_SCM
D_STG_INITxSYS_STS_STGxD_ODS_SCM.set_downstream(sqlg_jobs_SCM.MTL_CATEGORY_B)

sqlg_jobs_SCM.MTL_CROSS_REFERENCES_VL.dag=D_ODS_SCM
D_STG_INITxSYS_STS_STGxD_ODS_SCM.set_downstream(sqlg_jobs_SCM.MTL_CROSS_REFERENCES_VL)

sqlg_jobs_SCM.MV_ORG_ORG_DEF.dag=D_ODS_SCM
D_STG_INITxSYS_STS_STGxD_ODS_SCM.set_downstream(sqlg_jobs_SCM.MV_ORG_ORG_DEF)

sqlg_jobs_SCM.PO_HEADERS_ALL.dag=D_ODS_SCM
D_STG_INITxSYS_STS_STGxD_ODS_SCM.set_downstream(sqlg_jobs_SCM.PO_HEADERS_ALL)

sqlg_jobs_SCM.PO_LINES_ALL.dag=D_ODS_SCM
D_STG_INITxSYS_STS_STGxD_ODS_SCM.set_downstream(sqlg_jobs_SCM.PO_LINES_ALL)

sqlg_jobs_SCM.AP_SUPPLIERS.dag=D_ODS_SCM
D_STG_INITxSYS_STS_STGxD_ODS_SCM.set_downstream(sqlg_jobs_SCM.AP_SUPPLIERS)

sqlg_jobs_SCM.AP_SUPPLIER_SITES_ALL.dag=D_ODS_SCM
D_STG_INITxSYS_STS_STGxD_ODS_SCM.set_downstream(sqlg_jobs_SCM.AP_SUPPLIER_SITES_ALL)

sqlg_jobs_SCM.CST_COST_TYPES.dag=D_ODS_SCM
D_STG_INITxSYS_STS_STGxD_ODS_SCM.set_downstream(sqlg_jobs_SCM.CST_COST_TYPES)

sqlg_jobs_SCM.CST_ITEM_COSTS.dag=D_ODS_SCM
D_STG_INITxSYS_STS_STGxD_ODS_SCM.set_downstream(sqlg_jobs_SCM.CST_ITEM_COSTS)

sqlg_jobs_SCM.MTL_SECONDARY_INVENTORIES.dag=D_ODS_SCM
D_STG_INITxSYS_STS_STGxD_ODS_SCM.set_downstream(sqlg_jobs_SCM.MTL_SECONDARY_INVENTORIES)

sqlg_jobs_SCM.RCV_TRANSACTIONS.dag=D_ODS_SCM
D_STG_INITxSYS_STS_STGxD_ODS_SCM.set_downstream(sqlg_jobs_SCM.RCV_TRANSACTIONS)

sqlg_jobs_SCM.BOM_COMPONENTS_B.dag=D_ODS_SCM
D_STG_INITxSYS_STS_STGxD_ODS_SCM.set_downstream(sqlg_jobs_SCM.BOM_COMPONENTS_B)

sqlg_jobs_SCM.BOM_STRUCTURES_B.dag=D_ODS_SCM
D_STG_INITxSYS_STS_STGxD_ODS_SCM.set_downstream(sqlg_jobs_SCM.BOM_STRUCTURES_B)

sqlg_jobs_SCM.MTL_ONHAND_QUANTITIES_DETAIL.dag=D_ODS_SCM
D_STG_INITxSYS_STS_STGxD_ODS_SCM.set_downstream(sqlg_jobs_SCM.MTL_ONHAND_QUANTITIES_DETAIL)

sqlg_jobs_SCM.MTL_PARAMETERS.dag=D_ODS_SCM
D_STG_INITxSYS_STS_STGxD_ODS_SCM.set_downstream(sqlg_jobs_SCM.MTL_PARAMETERS)

sqlg_jobs_SCM.MTL_TRANSACTION_REASONS.dag=D_ODS_SCM
D_STG_INITxSYS_STS_STGxD_ODS_SCM.set_downstream(sqlg_jobs_SCM.MTL_TRANSACTION_REASONS)

sqlg_jobs_SCM.MTL_TRANSACTION_TYPES.dag=D_ODS_SCM
D_STG_INITxSYS_STS_STGxD_ODS_SCM.set_downstream(sqlg_jobs_SCM.MTL_TRANSACTION_TYPES)

sqlg_jobs_SCM.MV_MTL_CATEGORIES_B_KFV.dag=D_ODS_SCM
D_STG_INITxSYS_STS_STGxD_ODS_SCM.set_downstream(sqlg_jobs_SCM.MV_MTL_CATEGORIES_B_KFV)

sqlg_jobs_SCM.MV_MTL_ITEM_LOCATIONS_KFV.dag=D_ODS_SCM
D_STG_INITxSYS_STS_STGxD_ODS_SCM.set_downstream(sqlg_jobs_SCM.MV_MTL_ITEM_LOCATIONS_KFV)

sqlg_jobs_SCM.UI_INV_ADS_SUMMARY_V.dag=D_ODS_SCM
D_STG_INITxSYS_STS_STGxD_ODS_SCM.set_downstream(sqlg_jobs_SCM.UI_INV_ADS_SUMMARY_V)

sqlg_jobs_SCM.ERFQ_ITEMVENDOR.dag=D_ODS_SCM
D_STG_INITxSYS_STS_STGxD_ODS_SCM.set_downstream(sqlg_jobs_SCM.ERFQ_ITEMVENDOR)

sqlg_jobs_SCM.ERFQ_PRICEDATA_OBC.dag=D_ODS_SCM
D_STG_INITxSYS_STS_STGxD_ODS_SCM.set_downstream(sqlg_jobs_SCM.ERFQ_PRICEDATA_OBC)

sqlg_jobs_SCM.SCM_RISK_SHIPMENT_UPLOAD.dag=D_ODS_SCM
D_STG_INITxSYS_STS_STGxD_ODS_SCM.set_downstream(sqlg_jobs_SCM.SCM_RISK_SHIPMENT_UPLOAD)

sqlg_jobs_SCM.XXPO_HUB_INVENTORY_TEMP.dag=D_ODS_SCM
D_STG_INITxSYS_STS_STGxD_ODS_SCM.set_downstream(sqlg_jobs_SCM.XXPO_HUB_INVENTORY_TEMP)

sqlg_jobs_SCM.VPE_BRAND_SCORE_FINAL_ADJ.dag=D_ODS_SCM
D_STG_INITxSYS_STS_STGxD_ODS_SCM.set_downstream(sqlg_jobs_SCM.VPE_BRAND_SCORE_FINAL_ADJ)

sqlg_jobs_SCM.NSP_PO_LINES.dag=D_ODS_SCM
D_STG_INITxSYS_STS_STGxD_ODS_SCM.set_downstream(sqlg_jobs_SCM.NSP_PO_LINES)

sqlg_jobs_SCM.NSP_PO_HEADERS.dag=D_ODS_SCM
D_STG_INITxSYS_STS_STGxD_ODS_SCM.set_downstream(sqlg_jobs_SCM.NSP_PO_HEADERS)

sqlg_jobs_SCM.RVL.dag=D_ODS_SCM
D_STG_INITxSYS_STS_STGxD_ODS_SCM.set_downstream(sqlg_jobs_SCM.RVL)

sqlg_jobs_SCM.PO_LINE_LOCATIONS_ALL.dag=D_ODS_SCM
D_STG_INITxSYS_STS_STGxD_ODS_SCM.set_downstream(sqlg_jobs_SCM.PO_LINE_LOCATIONS_ALL)

sqlg_jobs_SCM.PO_REQUISITION_LINES_ALL.dag=D_ODS_SCM
D_STG_INITxSYS_STS_STGxD_ODS_SCM.set_downstream(sqlg_jobs_SCM.PO_REQUISITION_LINES_ALL)

sqlg_jobs_SCM.PO_REQ_DISTRIBUTIONS_ALL.dag=D_ODS_SCM
D_STG_INITxSYS_STS_STGxD_ODS_SCM.set_downstream(sqlg_jobs_SCM.PO_REQ_DISTRIBUTIONS_ALL)

sqlg_jobs_SCM.XXPO_STR_ALL.dag=D_ODS_SCM
D_STG_INITxSYS_STS_STGxD_ODS_SCM.set_downstream(sqlg_jobs_SCM.XXPO_STR_ALL)

D_SDM_SCM = airflow.DAG(    "D_SDM_SCM",
    schedule_interval="@daily",
    dagrun_timeout=timedelta(minutes=60),
    template_searchpath=tmpl_search_path,
    default_args=args,
    start_date=airflow.utils.dates.days_ago(1),    
    max_active_runs=1)

### D_STG_INITxSYS_STS_STGxD_ODS_SCM

my_taskid = "D_STG_INITxSYS_STS_STGxD_ODS_SCM"
D_STG_INITxSYS_STS_STGxD_ODS_SCM= ExternalTaskSensor(
    task_id=my_taskid,
    external_dag_id="D_STG_INIT",
    external_task_id="SYS_STS_STG",
    execution_delta=None,  # Same day as today
)
### D_STG_INITxSYS_STS_STGxD_SDM_SCM

my_taskid = "D_STG_INITxSYS_STS_STGxD_SDM_SCM"
D_STG_INITxSYS_STS_STGxD_SDM_SCM= ExternalTaskSensor(
    task_id=my_taskid,
    external_dag_id="D_STG_INIT",
    external_task_id="SYS_STS_STG",
    execution_delta=None,  # Same day as today
)
sqlg_jobs_SCM.SDM_NVS_VENDOR_CATEGORY.dag=D_SDM_SCM
D_STG_INITxSYS_STS_STGxD_SDM_SCM.set_downstream(sqlg_jobs_SCM.SDM_NVS_VENDOR_CATEGORY)

sqlg_jobs_SCM.SDM_NVS_STATUS.dag=D_SDM_SCM
D_STG_INITxSYS_STS_STGxD_SDM_SCM.set_downstream(sqlg_jobs_SCM.SDM_NVS_STATUS)

sqlg_jobs_SCM.SDM_SUPPLIER_CODE_APPLICATION_STATUS.dag=D_SDM_SCM
D_STG_INITxSYS_STS_STGxD_SDM_SCM.set_downstream(sqlg_jobs_SCM.SDM_SUPPLIER_CODE_APPLICATION_STATUS)

sqlg_jobs_SCM.SDM_APPLICATION_CATEGORY.dag=D_SDM_SCM
D_STG_INITxSYS_STS_STGxD_SDM_SCM.set_downstream(sqlg_jobs_SCM.SDM_APPLICATION_CATEGORY)

sqlg_jobs_SCM.SDM_CAV_PROPORTION_OF_NVS.dag=D_SDM_SCM
D_STG_INITxSYS_STS_STGxD_SDM_SCM.set_downstream(sqlg_jobs_SCM.SDM_CAV_PROPORTION_OF_NVS)

sqlg_jobs_SCM.SDM_NVS_QUANTITY.dag=D_SDM_SCM
D_STG_INITxSYS_STS_STGxD_SDM_SCM.set_downstream(sqlg_jobs_SCM.SDM_NVS_QUANTITY)

sqlg_jobs_SCM.SDM_CAV_QUANTITY.dag=D_SDM_SCM
D_STG_INITxSYS_STS_STGxD_SDM_SCM.set_downstream(sqlg_jobs_SCM.SDM_CAV_QUANTITY)

sqlg_jobs_SCM.SDM_SUPPLIER_TYPE.dag=D_SDM_SCM
D_STG_INITxSYS_STS_STGxD_SDM_SCM.set_downstream(sqlg_jobs_SCM.SDM_SUPPLIER_TYPE)

sqlg_jobs_SCM.SDM_SUPPLIER_CATEGORY.dag=D_SDM_SCM
D_STG_INITxSYS_STS_STGxD_SDM_SCM.set_downstream(sqlg_jobs_SCM.SDM_SUPPLIER_CATEGORY)

sqlg_jobs_SCM.SDM_SUPPLIER_SUBCATEGORY.dag=D_SDM_SCM
D_STG_INITxSYS_STS_STGxD_SDM_SCM.set_downstream(sqlg_jobs_SCM.SDM_SUPPLIER_SUBCATEGORY)

sqlg_jobs_SCM.SDM_RVL.dag=D_SDM_SCM
D_STG_INITxSYS_STS_STGxD_SDM_SCM.set_downstream(sqlg_jobs_SCM.SDM_RVL)

sqlg_jobs_SCM.SDM_CAVPROPORTION_OF_RT_SUPPLIER_QUANTITY.dag=D_SDM_SCM
D_STG_INITxSYS_STS_STGxD_SDM_SCM.set_downstream(sqlg_jobs_SCM.SDM_CAVPROPORTION_OF_RT_SUPPLIER_QUANTITY)

sqlg_jobs_SCM.SDM_RT_SUPPLIER_QUANTITY.dag=D_SDM_SCM
D_STG_INITxSYS_STS_STGxD_SDM_SCM.set_downstream(sqlg_jobs_SCM.SDM_RT_SUPPLIER_QUANTITY)

sqlg_jobs_SCM.SDM_VPE_RANKING.dag=D_SDM_SCM
D_STG_INITxSYS_STS_STGxD_SDM_SCM.set_downstream(sqlg_jobs_SCM.SDM_VPE_RANKING)

sqlg_jobs_SCM.SDM_CAV_BY_VPE_RANKING_C_AND_D_RATE.dag=D_SDM_SCM
D_STG_INITxSYS_STS_STGxD_SDM_SCM.set_downstream(sqlg_jobs_SCM.SDM_CAV_BY_VPE_RANKING_C_AND_D_RATE)

sqlg_jobs_SCM.SDM_BRAND_NAME.dag=D_SDM_SCM
D_STG_INITxSYS_STS_STGxD_SDM_SCM.set_downstream(sqlg_jobs_SCM.SDM_BRAND_NAME)

sqlg_jobs_SCM.SDM_OPERATION_UNIT.dag=D_SDM_SCM
D_STG_INITxSYS_STS_STGxD_SDM_SCM.set_downstream(sqlg_jobs_SCM.SDM_OPERATION_UNIT)

sqlg_jobs_SCM.SDM_RVL_HIT_RATE.dag=D_SDM_SCM
D_STG_INITxSYS_STS_STGxD_SDM_SCM.set_downstream(sqlg_jobs_SCM.SDM_RVL_HIT_RATE)

sqlg_jobs_SCM.SDM_NEW_BOM_ITEM_QUANTITY.dag=D_SDM_SCM
D_STG_INITxSYS_STS_STGxD_SDM_SCM.set_downstream(sqlg_jobs_SCM.SDM_NEW_BOM_ITEM_QUANTITY)

sqlg_jobs_SCM.SDM_RVL_ITEM_QUANTITY.dag=D_SDM_SCM
D_STG_INITxSYS_STS_STGxD_SDM_SCM.set_downstream(sqlg_jobs_SCM.SDM_RVL_ITEM_QUANTITY)

sqlg_jobs_SCM.SDM_BPA.dag=D_SDM_SCM
D_STG_INITxSYS_STS_STGxD_SDM_SCM.set_downstream(sqlg_jobs_SCM.SDM_BPA)

sqlg_jobs_SCM.SDM_RT_QTY.dag=D_SDM_SCM
D_STG_INITxSYS_STS_STGxD_SDM_SCM.set_downstream(sqlg_jobs_SCM.SDM_RT_QTY)

sqlg_jobs_SCM.SDM_MATERIAL_DEMAND_INFORMATION.dag=D_SDM_SCM
D_STG_INITxSYS_STS_STGxD_SDM_SCM.set_downstream(sqlg_jobs_SCM.SDM_MATERIAL_DEMAND_INFORMATION)

sqlg_jobs_SCM.SDM_PO_AMOUNT.dag=D_SDM_SCM
D_STG_INITxSYS_STS_STGxD_SDM_SCM.set_downstream(sqlg_jobs_SCM.SDM_PO_AMOUNT)

sqlg_jobs_SCM.SDM_RT_AMOUNT.dag=D_SDM_SCM
D_STG_INITxSYS_STS_STGxD_SDM_SCM.set_downstream(sqlg_jobs_SCM.SDM_RT_AMOUNT)

sqlg_jobs_SCM.SDM_RFQ_FOR_NEW_PROJECT.dag=D_SDM_SCM
D_STG_INITxSYS_STS_STGxD_SDM_SCM.set_downstream(sqlg_jobs_SCM.SDM_RFQ_FOR_NEW_PROJECT)

sqlg_jobs_SCM.SDM_SHIPMENT_LOCATION.dag=D_SDM_SCM
D_STG_INITxSYS_STS_STGxD_SDM_SCM.set_downstream(sqlg_jobs_SCM.SDM_SHIPMENT_LOCATION)

sqlg_jobs_SCM.SDM_MFG_LOCATION.dag=D_SDM_SCM
D_STG_INITxSYS_STS_STGxD_SDM_SCM.set_downstream(sqlg_jobs_SCM.SDM_MFG_LOCATION)

sqlg_jobs_SCM.SDM_VENDOR_NAME.dag=D_SDM_SCM
D_STG_INITxSYS_STS_STGxD_SDM_SCM.set_downstream(sqlg_jobs_SCM.SDM_VENDOR_NAME)

sqlg_jobs_SCM.SDM_RISK_ASSESSMENT_SUPPLIER_QUANTITY.dag=D_SDM_SCM
D_STG_INITxSYS_STS_STGxD_SDM_SCM.set_downstream(sqlg_jobs_SCM.SDM_RISK_ASSESSMENT_SUPPLIER_QUANTITY)

sqlg_jobs_SCM.SDM_RISK_ASSESSMENT_ITEM_QUANTITY.dag=D_SDM_SCM
D_STG_INITxSYS_STS_STGxD_SDM_SCM.set_downstream(sqlg_jobs_SCM.SDM_RISK_ASSESSMENT_ITEM_QUANTITY)

sqlg_jobs_SCM.SDM_SOURCER.dag=D_SDM_SCM
D_STG_INITxSYS_STS_STGxD_SDM_SCM.set_downstream(sqlg_jobs_SCM.SDM_SOURCER)

sqlg_jobs_SCM.SDM_MRO_COST_DOWN_RATE_MANAGEMENT.dag=D_SDM_SCM
D_STG_INITxSYS_STS_STGxD_SDM_SCM.set_downstream(sqlg_jobs_SCM.SDM_MRO_COST_DOWN_RATE_MANAGEMENT)

sqlg_jobs_SCM.SDM_PR_PRICE.dag=D_SDM_SCM
D_STG_INITxSYS_STS_STGxD_SDM_SCM.set_downstream(sqlg_jobs_SCM.SDM_PR_PRICE)

sqlg_jobs_SCM.SDM_FORMER_PURCHASE_PRICE.dag=D_SDM_SCM
D_STG_INITxSYS_STS_STGxD_SDM_SCM.set_downstream(sqlg_jobs_SCM.SDM_FORMER_PURCHASE_PRICE)

sqlg_jobs_SCM.SDM_CONTRACT_PRICE.dag=D_SDM_SCM
D_STG_INITxSYS_STS_STGxD_SDM_SCM.set_downstream(sqlg_jobs_SCM.SDM_CONTRACT_PRICE)

sqlg_jobs_SCM.SDM_PO_PRICE.dag=D_SDM_SCM
D_STG_INITxSYS_STS_STGxD_SDM_SCM.set_downstream(sqlg_jobs_SCM.SDM_PO_PRICE)

sqlg_jobs_SCM.SDM_FORECAST_CHANGE_ANALYSIS.dag=D_SDM_SCM
D_STG_INITxSYS_STS_STGxD_SDM_SCM.set_downstream(sqlg_jobs_SCM.SDM_FORECAST_CHANGE_ANALYSIS)

sqlg_jobs_SCM.SDM_FORECAST_CHANGE_QUANTITY.dag=D_SDM_SCM
D_STG_INITxSYS_STS_STGxD_SDM_SCM.set_downstream(sqlg_jobs_SCM.SDM_FORECAST_CHANGE_QUANTITY)

sqlg_jobs_SCM.SDM_BOM.dag=D_SDM_SCM
D_STG_INITxSYS_STS_STGxD_SDM_SCM.set_downstream(sqlg_jobs_SCM.SDM_BOM)

sqlg_jobs_SCM.SDM_CTB_GENERAL_DEMAND.dag=D_SDM_SCM
D_STG_INITxSYS_STS_STGxD_SDM_SCM.set_downstream(sqlg_jobs_SCM.SDM_CTB_GENERAL_DEMAND)

sqlg_jobs_SCM.SDM_CTB_GENERAL_SUPPLY.dag=D_SDM_SCM
D_STG_INITxSYS_STS_STGxD_SDM_SCM.set_downstream(sqlg_jobs_SCM.SDM_CTB_GENERAL_SUPPLY)

sqlg_jobs_SCM.SDM_RISK_SHIPMENT_REASON_CODE.dag=D_SDM_SCM
D_STG_INITxSYS_STS_STGxD_SDM_SCM.set_downstream(sqlg_jobs_SCM.SDM_RISK_SHIPMENT_REASON_CODE)

sqlg_jobs_SCM.SDM_RISK_SHIPMENT_AMOUNT.dag=D_SDM_SCM
D_STG_INITxSYS_STS_STGxD_SDM_SCM.set_downstream(sqlg_jobs_SCM.SDM_RISK_SHIPMENT_AMOUNT)

sqlg_jobs_SCM.SDM_MODEL_RISK_QUANTITY.dag=D_SDM_SCM
D_STG_INITxSYS_STS_STGxD_SDM_SCM.set_downstream(sqlg_jobs_SCM.SDM_MODEL_RISK_QUANTITY)

sqlg_jobs_SCM.SDM_ITEM_COST.dag=D_SDM_SCM
D_STG_INITxSYS_STS_STGxD_SDM_SCM.set_downstream(sqlg_jobs_SCM.SDM_ITEM_COST)

sqlg_jobs_SCM.SDM_CRITICAL_PART_SHORTAGE_QUANTITY.dag=D_SDM_SCM
D_STG_INITxSYS_STS_STGxD_SDM_SCM.set_downstream(sqlg_jobs_SCM.SDM_CRITICAL_PART_SHORTAGE_QUANTITY)

sqlg_jobs_SCM.SDM_GLOBAL_AVERAGE_DAYS_SUPPLY.dag=D_SDM_SCM
D_STG_INITxSYS_STS_STGxD_SDM_SCM.set_downstream(sqlg_jobs_SCM.SDM_GLOBAL_AVERAGE_DAYS_SUPPLY)

sqlg_jobs_SCM.SDM_RAW_MATERIAL_INVENTORY_AMOUNT.dag=D_SDM_SCM
D_STG_INITxSYS_STS_STGxD_SDM_SCM.set_downstream(sqlg_jobs_SCM.SDM_RAW_MATERIAL_INVENTORY_AMOUNT)

sqlg_jobs_SCM.SDM_RAW_MATERIAL_INVENTORY.dag=D_SDM_SCM
D_STG_INITxSYS_STS_STGxD_SDM_SCM.set_downstream(sqlg_jobs_SCM.SDM_RAW_MATERIAL_INVENTORY)

sqlg_jobs_SCM.SDM_FORCAST_CHANGE_IMPACT_OF_ADS.dag=D_SDM_SCM
D_STG_INITxSYS_STS_STGxD_SDM_SCM.set_downstream(sqlg_jobs_SCM.SDM_FORCAST_CHANGE_IMPACT_OF_ADS)

sqlg_jobs_SCM.SDM_FORCAST_CANCEL_OR_POSTPONE_QUANTITY.dag=D_SDM_SCM
D_STG_INITxSYS_STS_STGxD_SDM_SCM.set_downstream(sqlg_jobs_SCM.SDM_FORCAST_CANCEL_OR_POSTPONE_QUANTITY)

sqlg_jobs_SCM.SDM_LOCATOR.dag=D_SDM_SCM
D_STG_INITxSYS_STS_STGxD_SDM_SCM.set_downstream(sqlg_jobs_SCM.SDM_LOCATOR)

sqlg_jobs_SCM.SDM_AGE.dag=D_SDM_SCM
D_STG_INITxSYS_STS_STGxD_SDM_SCM.set_downstream(sqlg_jobs_SCM.SDM_AGE)

sqlg_jobs_SCM.SDM_HUB_INVENTORY_AVERAGE_DAYS_SUPPLY.dag=D_SDM_SCM
D_STG_INITxSYS_STS_STGxD_SDM_SCM.set_downstream(sqlg_jobs_SCM.SDM_HUB_INVENTORY_AVERAGE_DAYS_SUPPLY)

sqlg_jobs_SCM.SDM_HUB_INVENTORY_STORAGE_AGE.dag=D_SDM_SCM
D_STG_INITxSYS_STS_STGxD_SDM_SCM.set_downstream(sqlg_jobs_SCM.SDM_HUB_INVENTORY_STORAGE_AGE)

sqlg_jobs_SCM.SDM_HUB_INVENTORY_AMOUNT.dag=D_SDM_SCM
D_STG_INITxSYS_STS_STGxD_SDM_SCM.set_downstream(sqlg_jobs_SCM.SDM_HUB_INVENTORY_AMOUNT)

sqlg_jobs_SCM.SDM_BATCH_STOCK_IN.dag=D_SDM_SCM
D_STG_INITxSYS_STS_STGxD_SDM_SCM.set_downstream(sqlg_jobs_SCM.SDM_BATCH_STOCK_IN)

sqlg_jobs_SCM.SDM_INVENTORY_AT_CACULATE_TIME.dag=D_SDM_SCM
D_STG_INITxSYS_STS_STGxD_SDM_SCM.set_downstream(sqlg_jobs_SCM.SDM_INVENTORY_AT_CACULATE_TIME)

sqlg_jobs_SCM.SDM_STOCK_IN_DAYS.dag=D_SDM_SCM
D_STG_INITxSYS_STS_STGxD_SDM_SCM.set_downstream(sqlg_jobs_SCM.SDM_STOCK_IN_DAYS)

sqlg_jobs_SCM.SDM_WNEWEB_STOCK_ADS.dag=D_SDM_SCM
D_STG_INITxSYS_STS_STGxD_SDM_SCM.set_downstream(sqlg_jobs_SCM.SDM_WNEWEB_STOCK_ADS)

sqlg_jobs_SCM.SDM_WNEWEB_STOCK_AMOUNT.dag=D_SDM_SCM
D_STG_INITxSYS_STS_STGxD_SDM_SCM.set_downstream(sqlg_jobs_SCM.SDM_WNEWEB_STOCK_AMOUNT)

sqlg_jobs_SCM.SDM_WNEWEB_MONTHLY_END_STOCK_AMOUNT.dag=D_SDM_SCM
D_STG_INITxSYS_STS_STGxD_SDM_SCM.set_downstream(sqlg_jobs_SCM.SDM_WNEWEB_MONTHLY_END_STOCK_AMOUNT)

sqlg_jobs_SCM.SDM_IN_TRANSIT_INVENTORY_AMOUNT.dag=D_SDM_SCM
D_STG_INITxSYS_STS_STGxD_SDM_SCM.set_downstream(sqlg_jobs_SCM.SDM_IN_TRANSIT_INVENTORY_AMOUNT)

sqlg_jobs_SCM.SDM_SHIPMENT_AMOUNT.dag=D_SDM_SCM
D_STG_INITxSYS_STS_STGxD_SDM_SCM.set_downstream(sqlg_jobs_SCM.SDM_SHIPMENT_AMOUNT)

sqlg_jobs_SCM.SDM_ORGANIZATION.dag=D_SDM_SCM
D_STG_INITxSYS_STS_STGxD_SDM_SCM.set_downstream(sqlg_jobs_SCM.SDM_ORGANIZATION)

sqlg_jobs_SCM.SDM_DDP_INVENTORY_ADS.dag=D_SDM_SCM
D_STG_INITxSYS_STS_STGxD_SDM_SCM.set_downstream(sqlg_jobs_SCM.SDM_DDP_INVENTORY_ADS)

sqlg_jobs_SCM.SDM_DDP_INVENTORY_AMOUNT.dag=D_SDM_SCM
D_STG_INITxSYS_STS_STGxD_SDM_SCM.set_downstream(sqlg_jobs_SCM.SDM_DDP_INVENTORY_AMOUNT)

sqlg_jobs_SCM.SDM_DEFERRED_COST_OF_GOODS_SOLD_ADS.dag=D_SDM_SCM
D_STG_INITxSYS_STS_STGxD_SDM_SCM.set_downstream(sqlg_jobs_SCM.SDM_DEFERRED_COST_OF_GOODS_SOLD_ADS)

sqlg_jobs_SCM.SDM_INTRANSIT_AVERAGE_DAYS_SUPPLY.dag=D_SDM_SCM
D_STG_INITxSYS_STS_STGxD_SDM_SCM.set_downstream(sqlg_jobs_SCM.SDM_INTRANSIT_AVERAGE_DAYS_SUPPLY)

sqlg_jobs_SCM.SDM_INTRANSIT_STOCK_AMOUNT.dag=D_SDM_SCM
D_STG_INITxSYS_STS_STGxD_SDM_SCM.set_downstream(sqlg_jobs_SCM.SDM_INTRANSIT_STOCK_AMOUNT)

sqlg_jobs_SCM.SDM_LOGISTIC_IMPORT_INTRANSIT_ADS.dag=D_SDM_SCM
D_STG_INITxSYS_STS_STGxD_SDM_SCM.set_downstream(sqlg_jobs_SCM.SDM_LOGISTIC_IMPORT_INTRANSIT_ADS)

sqlg_jobs_SCM.SDM_LOGISTIC_IMPORT_INTRANSIT_STOCK_AMOUNT.dag=D_SDM_SCM
D_STG_INITxSYS_STS_STGxD_SDM_SCM.set_downstream(sqlg_jobs_SCM.SDM_LOGISTIC_IMPORT_INTRANSIT_STOCK_AMOUNT)

sqlg_jobs_SCM.SDM_CAPACITY_BALANCE_AVERAGE_DAYS_SUPPLY.dag=D_SDM_SCM
D_STG_INITxSYS_STS_STGxD_SDM_SCM.set_downstream(sqlg_jobs_SCM.SDM_CAPACITY_BALANCE_AVERAGE_DAYS_SUPPLY)

sqlg_jobs_SCM.SDM_CAPACITY_BALANCE_AMOUNT.dag=D_SDM_SCM
D_STG_INITxSYS_STS_STGxD_SDM_SCM.set_downstream(sqlg_jobs_SCM.SDM_CAPACITY_BALANCE_AMOUNT)

sqlg_jobs_SCM.SDM_DOWNSIZNG_ITEMS.dag=D_SDM_SCM
D_STG_INITxSYS_STS_STGxD_SDM_SCM.set_downstream(sqlg_jobs_SCM.SDM_DOWNSIZNG_ITEMS)

sqlg_jobs_SCM.SDM_CUSTOMER_DEMAND_DOWNSIDE_STOCK_ADS.dag=D_SDM_SCM
D_STG_INITxSYS_STS_STGxD_SDM_SCM.set_downstream(sqlg_jobs_SCM.SDM_CUSTOMER_DEMAND_DOWNSIDE_STOCK_ADS)

sqlg_jobs_SCM.SDM_CUSTOMER_DEMAND_DOWNSIDE_STOCK_AMOUNT.dag=D_SDM_SCM
D_STG_INITxSYS_STS_STGxD_SDM_SCM.set_downstream(sqlg_jobs_SCM.SDM_CUSTOMER_DEMAND_DOWNSIDE_STOCK_AMOUNT)

sqlg_jobs_SCM.SDM_CUSTOMER_DEMAND_DOWNSIDE_STOCK_AGE.dag=D_SDM_SCM
D_STG_INITxSYS_STS_STGxD_SDM_SCM.set_downstream(sqlg_jobs_SCM.SDM_CUSTOMER_DEMAND_DOWNSIDE_STOCK_AGE)

sqlg_jobs_SCM.SDM_CUSTOMER_LIABILITY.dag=D_SDM_SCM
D_STG_INITxSYS_STS_STGxD_SDM_SCM.set_downstream(sqlg_jobs_SCM.SDM_CUSTOMER_LIABILITY)

sqlg_jobs_SCM.SDM_LIABILITY_STOCK_AVERAGE_DAYS_SUPPLY.dag=D_SDM_SCM
D_STG_INITxSYS_STS_STGxD_SDM_SCM.set_downstream(sqlg_jobs_SCM.SDM_LIABILITY_STOCK_AVERAGE_DAYS_SUPPLY)

sqlg_jobs_SCM.SDM_LIABILITY_STOCK_AMOUNT.dag=D_SDM_SCM
D_STG_INITxSYS_STS_STGxD_SDM_SCM.set_downstream(sqlg_jobs_SCM.SDM_LIABILITY_STOCK_AMOUNT)

sqlg_jobs_SCM.SDM_LIABILITY_STOCK_AGE.dag=D_SDM_SCM
D_STG_INITxSYS_STS_STGxD_SDM_SCM.set_downstream(sqlg_jobs_SCM.SDM_LIABILITY_STOCK_AGE)

sqlg_jobs_SCM.SDM_STRATEGIC_PREPARATI_ON_STOCK_ADS.dag=D_SDM_SCM
D_STG_INITxSYS_STS_STGxD_SDM_SCM.set_downstream(sqlg_jobs_SCM.SDM_STRATEGIC_PREPARATI_ON_STOCK_ADS)

sqlg_jobs_SCM.SDM_STRATEGIC_PREPARATI_ON_STOCK_AMOUNT.dag=D_SDM_SCM
D_STG_INITxSYS_STS_STGxD_SDM_SCM.set_downstream(sqlg_jobs_SCM.SDM_STRATEGIC_PREPARATI_ON_STOCK_AMOUNT)

sqlg_jobs_SCM.SDM_SCRAP_REASON_CODE.dag=D_SDM_SCM
D_STG_INITxSYS_STS_STGxD_SDM_SCM.set_downstream(sqlg_jobs_SCM.SDM_SCRAP_REASON_CODE)

sqlg_jobs_SCM.SDM_SCRAP_AVERAGE_DAYS_SUPPLY.dag=D_SDM_SCM
D_STG_INITxSYS_STS_STGxD_SDM_SCM.set_downstream(sqlg_jobs_SCM.SDM_SCRAP_AVERAGE_DAYS_SUPPLY)

sqlg_jobs_SCM.SDM_SCRAP_AMOUNT.dag=D_SDM_SCM
D_STG_INITxSYS_STS_STGxD_SDM_SCM.set_downstream(sqlg_jobs_SCM.SDM_SCRAP_AMOUNT)

sqlg_jobs_SCM.SDM_BUY_AND_SELL_PARTS_AMOUNT.dag=D_SDM_SCM
D_STG_INITxSYS_STS_STGxD_SDM_SCM.set_downstream(sqlg_jobs_SCM.SDM_BUY_AND_SELL_PARTS_AMOUNT)

sqlg_jobs_SCM.SDM_MANUFACTURING_INVENTORY_ADS.dag=D_SDM_SCM
D_STG_INITxSYS_STS_STGxD_SDM_SCM.set_downstream(sqlg_jobs_SCM.SDM_MANUFACTURING_INVENTORY_ADS)

sqlg_jobs_SCM.SDM_SITE_NORMAL_ORGANIZATION_RM_INVENTORY.dag=D_SDM_SCM
D_STG_INITxSYS_STS_STGxD_SDM_SCM.set_downstream(sqlg_jobs_SCM.SDM_SITE_NORMAL_ORGANIZATION_RM_INVENTORY)

sqlg_jobs_SCM.SDM_SITE_BU_BUFFER.dag=D_SDM_SCM
D_STG_INITxSYS_STS_STGxD_SDM_SCM.set_downstream(sqlg_jobs_SCM.SDM_SITE_BU_BUFFER)

sqlg_jobs_SCM.SDM_SITE_CUSTOMER_LIABILITY_WH.dag=D_SDM_SCM
D_STG_INITxSYS_STS_STGxD_SDM_SCM.set_downstream(sqlg_jobs_SCM.SDM_SITE_CUSTOMER_LIABILITY_WH)

sqlg_jobs_SCM.SDM_SITE_ERP_WH.dag=D_SDM_SCM
D_STG_INITxSYS_STS_STGxD_SDM_SCM.set_downstream(sqlg_jobs_SCM.SDM_SITE_ERP_WH)

sqlg_jobs_SCM.SDM_FORECAST_CHANGE_REASON.dag=D_SDM_SCM
D_STG_INITxSYS_STS_STGxD_SDM_SCM.set_downstream(sqlg_jobs_SCM.SDM_FORECAST_CHANGE_REASON)

sqlg_jobs_SCM.SDM_SITE_INVENTORY_ANALYSIS.dag=D_SDM_SCM
D_STG_INITxSYS_STS_STGxD_SDM_SCM.set_downstream(sqlg_jobs_SCM.SDM_SITE_INVENTORY_ANALYSIS)

