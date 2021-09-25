FROM jupyter/scipy-notebook:33add21fab64

RUN pip install xgboost psycopg2-binary
