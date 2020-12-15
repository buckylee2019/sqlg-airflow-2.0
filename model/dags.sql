<?xml version="1.0" encoding="big5"?>
<Table>
<Name>ETLIWSSCH</Name>

<Row>
<PRJ_ID>PRD</PRJ_ID>
<JOB_FLOW_ID>10061SRC</JOB_FLOW_ID>
<JOB_ID>10061SRC0102</JOB_ID>
<PRE_JOB_FLOW_ID></PRE_JOB_FLOW_ID>
<PRE_JOB_ID></PRE_JOB_ID>
<JOB_FLOW_NAME>D_ODS_PRD_SRC</JOB_FLOW_NAME>
<JOB_NAME>MTL_SYSTEM_ITEMS_B</JOB_NAME>
<PRE_JOB_FLOW_NAME>D_STG_INIT</PRE_JOB_FLOW_NAME>
<PRE_JOB_NAME>SYS_STS_STG</PRE_JOB_NAME>
<UI_JOB_FLOW_ID>10061SRC</UI_JOB_FLOW_ID>
<PRCS_ID>'FULL_PLAN'</PRCS_ID>
<PRCS_ST>'I'</PRCS_ST>
<PRCS_INFO><item>END_DT_CHAR</item></PRCS_INFO>
<CMD>ODS-MAIN</CMD>
<JOB_CALENDAR>@daily</JOB_CALENDAR>
<TBL_UPD_TIM>GETDATE()</TBL_UPD_TIM>
<TBL_UPDATER>JESSEWEI</TBL_UPDATER>
</Row>

<Row>
<PRJ_ID>PRD</PRJ_ID>
<JOB_FLOW_ID>15011</JOB_FLOW_ID>
<JOB_ID>150110202</JOB_ID>
<PRE_JOB_FLOW_ID>15011</PRE_JOB_FLOW_ID>
<PRE_JOB_ID>150110201</PRE_JOB_ID>
<JOB_FLOW_NAME>D_ODS_CUS</JOB_FLOW_NAME>
<JOB_NAME>UC_Group_Customer_Location_STG</JOB_NAME>
<PRE_JOB_FLOW_NAME>D_ODS_CUS</PRE_JOB_FLOW_NAME>
<PRE_JOB_NAME>ODS_UC_Group_Customer_Location_WH</PRE_JOB_NAME>
<UI_JOB_FLOW_ID>15011</UI_JOB_FLOW_ID>
<PRCS_ID>'FULL_PLAN'</PRCS_ID>
<PRCS_ST>'I'</PRCS_ST>
<PRCS_INFO>TRUNCATE TABLE STAGE.UC_Group_Customer_Location</PRCS_INFO>
<CMD>ISQL</CMD>
<JOB_CALENDAR>@daily</JOB_CALENDAR>
<TBL_UPD_TIM>GETDATE()</TBL_UPD_TIM>
<TBL_UPDATER>JESSEWEI</TBL_UPDATER>
</Row>

<Row>
<PRJ_ID>PRD</PRJ_ID>
<JOB_FLOW_ID>15011</JOB_FLOW_ID>
<JOB_ID>150110203</JOB_ID>
<PRE_JOB_FLOW_ID>15011</PRE_JOB_FLOW_ID>
<PRE_JOB_ID>150110202</PRE_JOB_ID>
<JOB_FLOW_NAME>D_ODS_CUS</JOB_FLOW_NAME>
<JOB_NAME>ODS_UC_Group_Customer_Location_LD</JOB_NAME>
<PRE_JOB_FLOW_NAME>D_ODS_CUS</PRE_JOB_FLOW_NAME>
<PRE_JOB_NAME>UC_Group_Customer_Location_STG</PRE_JOB_NAME>
<UI_JOB_FLOW_ID>15011</UI_JOB_FLOW_ID>
<PRCS_ID>'FULL_PLAN'</PRCS_ID>
<PRCS_ST>'I'</PRCS_ST>
<PRCS_INFO>{{var.value.ETLUSER}} {{var.value.ETLPWD}} {{var.value.DW_HOST}} {{var.value.DIR_ETLBASE}} {{ds_nodash}} UPD CUS UC_Group_Customer_Location</PRCS_INFO>
<CMD>ODS-UIMP</CMD>
<JOB_CALENDAR>@daily</JOB_CALENDAR>
<TBL_UPD_TIM>GETDATE()</TBL_UPD_TIM>
<TBL_UPDATER>JESSEWEI</TBL_UPDATER>
</Row>

<Row>
<PRJ_ID>PRD</PRJ_ID>
<JOB_FLOW_ID>15011</JOB_FLOW_ID>
<JOB_ID>150110301</JOB_ID>
<PRE_JOB_FLOW_ID></PRE_JOB_FLOW_ID>
<PRE_JOB_ID></PRE_JOB_ID>
<JOB_FLOW_NAME>D_ODS_CUS</JOB_FLOW_NAME>
<JOB_NAME>ODS_UC_Project_Decision_Customer_WH</JOB_NAME>
<PRE_JOB_FLOW_NAME>D_STG_INIT</PRE_JOB_FLOW_NAME>
<PRE_JOB_NAME>SYS_STS_STG</PRE_JOB_NAME>
<UI_JOB_FLOW_ID>15011</UI_JOB_FLOW_ID>
<PRCS_ID>'FULL_PLAN'</PRCS_ID>
<PRCS_ST>'I'</PRCS_ST>
<PRCS_INFO>{{ var.value.DIR_SOURCE }}UPD/CUS/UC_Project_Decision_Customer.D</PRCS_INFO>
<CMD>WATCH</CMD>
<JOB_CALENDAR>@daily</JOB_CALENDAR>
<TBL_UPD_TIM>GETDATE()</TBL_UPD_TIM>
<TBL_UPDATER>JESSEWEI</TBL_UPDATER>
</Row>

<Row>
<PRJ_ID>PRD</PRJ_ID>
<JOB_FLOW_ID>15011</JOB_FLOW_ID>
<JOB_ID>150110302</JOB_ID>
<PRE_JOB_FLOW_ID>15011</PRE_JOB_FLOW_ID>
<PRE_JOB_ID>150110301</PRE_JOB_ID>
<JOB_FLOW_NAME>D_ODS_CUS</JOB_FLOW_NAME>
<JOB_NAME>UC_Project_Decision_Customer_STG</JOB_NAME>
<PRE_JOB_FLOW_NAME>D_ODS_CUS</PRE_JOB_FLOW_NAME>
<PRE_JOB_NAME>ODS_UC_Project_Decision_Customer_WH</PRE_JOB_NAME>
<UI_JOB_FLOW_ID>15011</UI_JOB_FLOW_ID>
<PRCS_ID>'FULL_PLAN'</PRCS_ID>
<PRCS_ST>'I'</PRCS_ST>
<PRCS_INFO>TRUNCATE TABLE STAGE.UC_Project_Decision_Customer</PRCS_INFO>
<CMD>ISQL</CMD>
<JOB_CALENDAR>@daily</JOB_CALENDAR>
<TBL_UPD_TIM>GETDATE()</TBL_UPD_TIM>
<TBL_UPDATER>JESSEWEI</TBL_UPDATER>
</Row>

<Row>
<PRJ_ID>PRD</PRJ_ID>
<JOB_FLOW_ID>15013</JOB_FLOW_ID>
<JOB_ID>150130103</JOB_ID>
<PRE_JOB_FLOW_ID>15013</PRE_JOB_FLOW_ID>
<PRE_JOB_ID>150130102</PRE_JOB_ID>
<JOB_FLOW_NAME>M_ODS_CUS</JOB_FLOW_NAME>
<JOB_NAME>ODS_UC_Customer_Grouping_Map_LD</JOB_NAME>
<PRE_JOB_FLOW_NAME>M_ODS_CUS</PRE_JOB_FLOW_NAME>
<PRE_JOB_NAME>UC_Customer_Grouping_Map_STG</PRE_JOB_NAME>
<UI_JOB_FLOW_ID>15013</UI_JOB_FLOW_ID>
<PRCS_ID>'FULL_PLAN'</PRCS_ID>
<PRCS_ST>'I'</PRCS_ST>
<PRCS_INFO>{{var.value.ETLUSER}} {{var.value.ETLPWD}} {{var.value.DW_HOST}} {{var.value.DIR_ETLBASE}} {{ds_nodash}} UPD CUS UC_Customer_Grouping_Map</PRCS_INFO>
<CMD>ODS-UIMP</CMD>
<JOB_CALENDAR>@monthly</JOB_CALENDAR>
<TBL_UPD_TIM>GETDATE()</TBL_UPD_TIM>
<TBL_UPDATER>JESSEWEI</TBL_UPDATER>
</Row>

<Row>
<PRJ_ID>PRD</PRJ_ID>
<JOB_FLOW_ID>15013</JOB_FLOW_ID>
<JOB_ID>150130104</JOB_ID>
<PRE_JOB_FLOW_ID>15013</PRE_JOB_FLOW_ID>
<PRE_JOB_ID>150130103</PRE_JOB_ID>
<JOB_FLOW_NAME>M_ODS_CUS</JOB_FLOW_NAME>
<JOB_NAME>UC_Customer_Grouping_Map</JOB_NAME>
<PRE_JOB_FLOW_NAME>M_ODS_CUS</PRE_JOB_FLOW_NAME>
<PRE_JOB_NAME>ODS_UC_Customer_Grouping_Map_LD</PRE_JOB_NAME>
<UI_JOB_FLOW_ID>15013</UI_JOB_FLOW_ID>
<PRCS_ID>'FULL_PLAN'</PRCS_ID>
<PRCS_ST>'I'</PRCS_ST>
<PRCS_INFO><item>END_DT_CHAR</item></PRCS_INFO>
<CMD>SQL</CMD>
<JOB_CALENDAR>@monthly</JOB_CALENDAR>
<TBL_UPD_TIM>GETDATE()</TBL_UPD_TIM>
<TBL_UPDATER>JESSEWEI</TBL_UPDATER>
</Row>



</Table>
