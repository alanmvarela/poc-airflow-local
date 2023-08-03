from datetime import datetime, timedelta
from airflow import DAG
from airflow.operators.python_operator import PythonOperator

# Function to extract data from a source
def extract_data():
    print("Extracting test data from somewhere misterious...")

# Function to transform the extracted data
def transform_data():
    print("Transforming test data into something awsome...")

# Function to load the transformed data to a destination
def load_data():
    print("Loading test data to the test...")

# Define default arguments for the DAG
default_args = {
    'owner': 'airflow',
    'depends_on_past': False,
    'start_date': datetime(2023, 7, 31),
    'retries': 1,
    'retry_delay': timedelta(minutes=5),
}

# Create a DAG instance
dag = DAG(
    'TEST_DAG',
    default_args=default_args,
    description='A test data pipeline',
    schedule_interval=timedelta(hours=1),  # Run the DAG every 5 minutes
)

# Define the three tasks and their dependencies
extract_task = PythonOperator(
    task_id='extract_data',
    python_callable=extract_data,
    dag=dag,
)

transform_task = PythonOperator(
    task_id='transform_data',
    python_callable=transform_data,
    dag=dag,
)

load_task = PythonOperator(
    task_id='load_data',
    python_callable=load_data,
    dag=dag,
)

# Define task dependencies
extract_task >> transform_task >> load_task