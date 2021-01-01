


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
job_flow_name = "D_ODS_CUS_SRC"
if job_flow_name == 'I_SDM_CMN':
    data_stage = ['ODS']
else:
    data_stage = re.findall(r"_(.*?)_","D_ODS_CUS_SRC")
D_ODS_CUS_SRC = airflow.DAG(
    "D_ODS_CUS_SRC",
    tags=["CUS", data_stage[0]],
    schedule_interval="RCG-D-NAT",
    dagrun_timeout=timedelta(minutes=60),
    template_searchpath=tmpl_search_path,
    default_args=args,
    start_date=airflow.utils.dates.days_ago(1),    
    max_active_runs=1
	)
job_flow_name = "D_SDM_CUS"
if job_flow_name == 'I_SDM_CMN':
    data_stage = ['ODS']
else:
    data_stage = re.findall(r"_(.*?)_","D_SDM_CUS")
D_SDM_CUS = airflow.DAG(
    "D_SDM_CUS",
    tags=["CUS", data_stage[0]],
    schedule_interval="@daily",
    dagrun_timeout=timedelta(minutes=60),
    template_searchpath=tmpl_search_path,
    default_args=args,
    start_date=airflow.utils.dates.days_ago(1),    
    max_active_runs=1
	)
job_flow_name = "M_SDM_CUS"
if job_flow_name == 'I_SDM_CMN':
    data_stage = ['ODS']
else:
    data_stage = re.findall(r"_(.*?)_","M_SDM_CUS")
M_SDM_CUS = airflow.DAG(
    "M_SDM_CUS",
    tags=["CUS", data_stage[0]],
    schedule_interval="@monthly",
    dagrun_timeout=timedelta(minutes=60),
    template_searchpath=tmpl_search_path,
    default_args=args,
    start_date=airflow.utils.dates.days_ago(1),    
    max_active_runs=1
	)
job_flow_name = "D_DM_CUS"
if job_flow_name == 'I_SDM_CMN':
    data_stage = ['ODS']
else:
    data_stage = re.findall(r"_(.*?)_","D_DM_CUS")
D_DM_CUS = airflow.DAG(
    "D_DM_CUS",
    tags=["CUS", data_stage[0]],
    schedule_interval="@daily",
    dagrun_timeout=timedelta(minutes=60),
    template_searchpath=tmpl_search_path,
    default_args=args,
    start_date=airflow.utils.dates.days_ago(1),    
    max_active_runs=1
	)
job_flow_name = "M_DM_CUS"
if job_flow_name == 'I_SDM_CMN':
    data_stage = ['ODS']
else:
    data_stage = re.findall(r"_(.*?)_","M_DM_CUS")
M_DM_CUS = airflow.DAG(
    "M_DM_CUS",
    tags=["CUS", data_stage[0]],
    schedule_interval="@monthly",
    dagrun_timeout=timedelta(minutes=60),
    template_searchpath=tmpl_search_path,
    default_args=args,
    start_date=airflow.utils.dates.days_ago(1),    
    max_active_runs=1
	)

# XSLT:loop: JOB_FLOW_NAME: END}

# 	XSLT:loop: JOB_FLOW_NAME-and-PRE_JOB: External:START{{

my_taskid = "D_ODS_CUS_SRCxD_STG_INIT__SYS_STS_STG"
D_ODS_CUS_SRCxD_STG_INIT__SYS_STS_STG= ExternalTaskSensor(
#    schedule_interval=None,
    pool = "sensor_pool",
    task_id=my_taskid,
    external_dag_id="D_STG_INIT",
    external_task_id="SYS_STS_STG",
    mode="reschedule",
    dag=D_ODS_CUS_SRC,
    check_existence=True,
#    execution_delta=None,  # Same day as today
)

my_taskid = "D_SDM_CUSxD_STG_INIT__SYS_STS_STG"
D_SDM_CUSxD_STG_INIT__SYS_STS_STG= ExternalTaskSensor(
#    schedule_interval=None,
    pool = "sensor_pool",
    task_id=my_taskid,
    external_dag_id="D_STG_INIT",
    external_task_id="SYS_STS_STG",
    mode="reschedule",
    dag=D_SDM_CUS,
    check_existence=True,
#    execution_delta=None,  # Same day as today
)

my_taskid = "M_SDM_CUSxD_STG_INIT__SYS_STS_STG"
M_SDM_CUSxD_STG_INIT__SYS_STS_STG= ExternalTaskSensor(
#    schedule_interval=None,
    pool = "sensor_pool",
    task_id=my_taskid,
    external_dag_id="D_STG_INIT",
    external_task_id="SYS_STS_STG",
    mode="reschedule",
    dag=M_SDM_CUS,
    check_existence=True,
#    execution_delta=None,  # Same day as today
)

my_taskid = "D_DM_CUSxD_STG_INIT__SYS_STS_STG"
D_DM_CUSxD_STG_INIT__SYS_STS_STG= ExternalTaskSensor(
#    schedule_interval=None,
    pool = "sensor_pool",
    task_id=my_taskid,
    external_dag_id="D_STG_INIT",
    external_task_id="SYS_STS_STG",
    mode="reschedule",
    dag=D_DM_CUS,
    check_existence=True,
#    execution_delta=None,  # Same day as today
)

my_taskid = "M_DM_CUSxD_STG_INIT__SYS_STS_STG"
M_DM_CUSxD_STG_INIT__SYS_STS_STG= ExternalTaskSensor(
#    schedule_interval=None,
    pool = "sensor_pool",
    task_id=my_taskid,
    external_dag_id="D_STG_INIT",
    external_task_id="SYS_STS_STG",
    mode="reschedule",
    dag=M_DM_CUS,
    check_existence=True,
#    execution_delta=None,  # Same day as today
)
	
# 	XSLT:loop: JOB_FLOW_NAME-and-PRE_JOB: External: END}}


# XSLT:loop: JOB_FLOW_NAME: START{


# 	XSLT:loop: Rows-by-JOB_FLOW_NAME: JOB_NAME: START{{
HZ_CUST_ACCOUNTS.dag=D_ODS_CUS_SRC
D_ODS_CUS_SRCxD_STG_INIT__SYS_STS_STG.set_downstream(HZ_CUST_ACCOUNTS)
HZ_PARTIES.dag=D_ODS_CUS_SRC
D_ODS_CUS_SRCxD_STG_INIT__SYS_STS_STG.set_downstream(HZ_PARTIES)


# 	XSLT:loop: Rows-by-JOB_FLOW_NAME: JOB_NAME: START{{
SDM_MEETING_MINUTES.dag=D_SDM_CUS
D_SDM_CUSxD_STG_INIT__SYS_STS_STG.set_downstream(SDM_MEETING_MINUTES)
SDM_CUSTOMER_COMPANY_CHECK.dag=D_SDM_CUS
D_SDM_CUSxD_STG_INIT__SYS_STS_STG.set_downstream(SDM_CUSTOMER_COMPANY_CHECK)
SDM_MODEL.dag=D_SDM_CUS
D_SDM_CUSxD_STG_INIT__SYS_STS_STG.set_downstream(SDM_MODEL)
SDM_PREMIUM_FREIGHT.dag=D_SDM_CUS
D_SDM_CUSxD_STG_INIT__SYS_STS_STG.set_downstream(SDM_PREMIUM_FREIGHT)
REF_PRODUCT_TECHNOLOGY.dag=D_SDM_CUS
D_SDM_CUSxD_STG_INIT__SYS_STS_STG.set_downstream(REF_PRODUCT_TECHNOLOGY)
REF_SUB_GROUP_CUSTOMER.dag=D_SDM_CUS
D_SDM_CUSxD_STG_INIT__SYS_STS_STG.set_downstream(REF_SUB_GROUP_CUSTOMER)
REF_MARKET_SHARE_PRODUCT.dag=D_SDM_CUS
D_SDM_CUSxD_STG_INIT__SYS_STS_STG.set_downstream(REF_MARKET_SHARE_PRODUCT)
REF_PRODUCT_SEGMENT.dag=D_SDM_CUS
D_SDM_CUSxD_STG_INIT__SYS_STS_STG.set_downstream(REF_PRODUCT_SEGMENT)
REF_END_CUSTOMER.dag=D_SDM_CUS
D_SDM_CUSxD_STG_INIT__SYS_STS_STG.set_downstream(REF_END_CUSTOMER)


# 	XSLT:loop: Rows-by-JOB_FLOW_NAME: JOB_NAME: START{{
SDM_MARKET_SHARE.dag=M_SDM_CUS
M_SDM_CUSxD_STG_INIT__SYS_STS_STG.set_downstream(SDM_MARKET_SHARE)
SDM_MARKET_TAM_CAGR.dag=M_SDM_CUS
M_SDM_CUSxD_STG_INIT__SYS_STS_STG.set_downstream(SDM_MARKET_TAM_CAGR)


# 	XSLT:loop: Rows-by-JOB_FLOW_NAME: JOB_NAME: START{{
DIM_PRODUCT_TECHNOLOGY.dag=D_DM_CUS
D_DM_CUSxD_STG_INIT__SYS_STS_STG.set_downstream(DIM_PRODUCT_TECHNOLOGY)
DIM_SUB_GROUP_CUSTOMER.dag=D_DM_CUS
D_DM_CUSxD_STG_INIT__SYS_STS_STG.set_downstream(DIM_SUB_GROUP_CUSTOMER)
DIM_MARKET_SHARE_PRODUCT.dag=D_DM_CUS
D_DM_CUSxD_STG_INIT__SYS_STS_STG.set_downstream(DIM_MARKET_SHARE_PRODUCT)
DIM_PRODUCT_SEGMENT.dag=D_DM_CUS
D_DM_CUSxD_STG_INIT__SYS_STS_STG.set_downstream(DIM_PRODUCT_SEGMENT)
DIM_END_CUSTOMER.dag=D_DM_CUS
D_DM_CUSxD_STG_INIT__SYS_STS_STG.set_downstream(DIM_END_CUSTOMER)
DIM_MODEL.dag=D_DM_CUS
D_DM_CUSxD_STG_INIT__SYS_STS_STG.set_downstream(DIM_MODEL)
DIM_CUSTOMER.dag=D_DM_CUS
D_DM_CUSxD_STG_INIT__SYS_STS_STG.set_downstream(DIM_CUSTOMER)
DIM_GROUP_CUSTOMER.dag=D_DM_CUS
D_DM_CUSxD_STG_INIT__SYS_STS_STG.set_downstream(DIM_GROUP_CUSTOMER)


# 	XSLT:loop: Rows-by-JOB_FLOW_NAME: JOB_NAME: START{{
FCT_MARKET_SHARE.dag=M_DM_CUS
M_DM_CUSxD_STG_INIT__SYS_STS_STG.set_downstream(FCT_MARKET_SHARE)
FCT_MARKET_TAM_CAGR.dag=M_DM_CUS
M_DM_CUSxD_STG_INIT__SYS_STS_STG.set_downstream(FCT_MARKET_TAM_CAGR)
FCT_PREMIUM_FREIGHT.dag=M_DM_CUS
M_DM_CUSxD_STG_INIT__SYS_STS_STG.set_downstream(FCT_PREMIUM_FREIGHT)
FCT_CCM_RANK.dag=M_DM_CUS
M_DM_CUSxD_STG_INIT__SYS_STS_STG.set_downstream(FCT_CCM_RANK)
FCT_CCM_REPORT.dag=M_DM_CUS
M_DM_CUSxD_STG_INIT__SYS_STS_STG.set_downstream(FCT_CCM_REPORT)
FCT_CCM_BU_REPORT.dag=M_DM_CUS
M_DM_CUSxD_STG_INIT__SYS_STS_STG.set_downstream(FCT_CCM_BU_REPORT)
FCT_MEETING_MINUTES.dag=M_DM_CUS
M_DM_CUSxD_STG_INIT__SYS_STS_STG.set_downstream(FCT_MEETING_MINUTES)
FCT_CUSTOMER_COMPANY_CHECK.dag=M_DM_CUS
M_DM_CUSxD_STG_INIT__SYS_STS_STG.set_downstream(FCT_CUSTOMER_COMPANY_CHECK)

