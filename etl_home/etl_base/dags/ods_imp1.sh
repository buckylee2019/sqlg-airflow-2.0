#!/bin/bash
# --------------------------------------------------------------------
# load script, generated by Macro                                  
# Date Time       : {{FMT_PROG_NOW}}
# Target Table    : {SRC_NAME}
# Script File     : {PGM_FILE_NAME}.sh
# Programmer      : {PGM_FILE_NAME}
# Function        : Load flat file into {SRC_NAME}
# Remarks         :                                                
# ------------------     Revision History      -------------------------
# --   Seq. No.    DATE         By         REASON 
# ----- -------- ----------- ----------- -------------------------------
# ---                                                                   
# ----------------------------------------------------------------------

# source /opt/IBM/TWA/twa_env.sh

# cp DATA/{SRC_SYSNAME}/{SRC_NAME}.D DATA/{SRC_SYSNAME}/{SRC_NAME}.D.utf8

# $ORACLE_HOME/bin/sqlldr userid=$1/$2@$3 control=SRC/{SRC_SYSNAME}/{SRC_NAME}/{SRC_NAME}.ctl bad=MSG/{SRC_NAME}_$4.bad log=MSG/{SRC_NAME}_$4.log data=DATA/{SRC_SYSNAME}/{SRC_NAME}.D.utf8  
echo $1 $2 $3

