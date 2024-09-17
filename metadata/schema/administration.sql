CREATE SCHEMA IF NOT EXISTS lakehouse_dev.administration
COMMENT "This schema holds tables, views,  volumes ,models, functions related to administration department"
LOCATION 's3://lakehouse-administration/unity_catalog/schema'
WITH DBPROPERTIES (department='administration')