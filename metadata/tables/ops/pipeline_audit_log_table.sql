DROP TABLE IF EXISTS lakehouse_dev.administration.pipeline_audit_log_table;
CREATE EXTERNAL TABLE  lakehouse_dev.administration.pipeline_audit_log_table(
    audit_id STRING NOT NULL,
    execution_entry_point STRING NOT NULL,
    data_load_type STRING NOT NULL,
    source_or_sink_name STRING NOT NULL,
    data_catalog_name STRING NOT NULL,
    db_schema_name STRING NOT NULL,
    db_table_name STRING NOT NULL,
    data_storage_path STRING NOT NULL,
    created_at timestamp
)
USING DELTA
LOCATION 's3://lakehouse-administration/audit/pipeline_audit_log_table'