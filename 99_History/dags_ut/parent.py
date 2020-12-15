from datetime import datetime, timedelta
from airflow import DAG
from airflow.operators.dummy_operator import DummyOperator
from airflow.sensors.external_task_sensor import ExternalTaskSensor, ExternalTaskMarker


start_date=datetime(2020, 11, 20)

default_args = {
    'owner': 'airflow',
    'depends_on_past': False,
    'start_date': start_date,
}

parent_dag = DAG('Parent_dag', 
    default_args=default_args, 
    schedule_interval='@daily',
    )

leave_work = DummyOperator(
    task_id='leave_work',
    dag=parent_dag,
)
cook_dinner = DummyOperator(
    task_id='cook_dinner',
    dag=parent_dag,
)

leave_work >> cook_dinner


child_dag = DAG('Child_dag', default_args=default_args, schedule_interval='@daily')

# Use ExternalTaskSensor to listen to the Parent_dag and cook_dinner task
# when cook_dinner is finished, Child_dag will be triggered
# Parent_dag cook_dinner
wait_for_dinner = ExternalTaskSensor(
    task_id="wait_for_dinner",
    external_dag_id='Parent_dag',
    external_task_id='cook_dinner',
    start_date=start_date,
#    execution_delta=timedelta(hours=1),
    timeout=360,
    mode="poke",
#    dag=child_dag
    )

#print('DEBUG:', parent_dag.dag_id, cook_dinner.task_id)
#wait_for_dinner = ExternalTaskSensor(
#    task_id='wait_for_dinner',
#    external_dag_id='Parent_dag',
#    external_task_id='cook_dinner',
#    #external_task_id=None,
#    start_date=datetime(2020, 11, 20),
#    execution_delta=timedelta(hours=1),
#    timeout=360,
#    mode="poke",
#    #mode="reschedule",
#    dag=child_dag, #why no dag
#)

#
#wait_for_dinner = ExternalTaskMarker(
#    dag=dag,
#    task_id='wait_for_dinner',
#    external_dag_id='Parent_dag',
#    external_task_id='cook_dinner',
#)

have_dinner = DummyOperator(
    task_id='have_dinner',
    dag=child_dag,
)
play_with_food = DummyOperator(
    task_id='play_with_food',
    dag=child_dag,
)

wait_for_dinner >> have_dinner
wait_for_dinner >> play_with_food