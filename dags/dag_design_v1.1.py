from airflow import DAG
from airflow.operators.bash_operator import BashOperator
from datetime import datetime, timedelta
# Define the DAG…
# Create the default arguments
default_args = {
 'owner': 'hashmap-airflow',
 'depends_on_past': False,
 'start_date': datetime(2019, 5, 23),
 'retries': 0,
 'retry_delay': timedelta(minutes=1),
}
# create the DAG instance
dag = DAG('hw_bash', default_args=default_args, schedule_interval=timedelta(1))
# These are passed in as args. Seems that they aren't sent that way is a bug.
dag.start_date = default_args['start_date']

# This path is used in the code below. This should identify where the code is being executed from.
# *****
path = ‘/PATH_TO_DAG/bash_dag_example'

# STDOUT ‘Hello World' with redirect to out.txt
create_file= BashOperator(task_id='save-bash', bash_command='echo “Hello World” > {path}/out.txt'.format(path=path))
# print the contents of out.txt to STDOUT
print_file=BashOperator( task_id='print-file', bash_command='cat {path}/outs.txt'.format(path=path))
# clone/copy the data into another file
bash_cmd='cp {path}/out.txt {path}/out_copy.txt'.format(path=path) copy_file=BashOperator(task_id='copy-file', bash_command=bash_cmd)
# delete the files that were created
bash_cmd='rm -f {path}/out.txt && rm -f {path}/out_copy.txt'.format(path=path)
delete_files = BashOperator(task_id='delete-files', bash_command=bash_cmd)

# Assign the operators to a DAG
create_file.dag = dag
print_file.dag = dag
copy_file.dag = dag
delete_files.dag = dag





