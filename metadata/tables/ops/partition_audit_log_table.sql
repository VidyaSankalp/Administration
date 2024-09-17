DROP TABLE IF EXISTS lakehouse_dev.administration.partition_audit_log_table;
CREATE EXTERNAL TABLE  lakehouse_dev.administration.partition_audit_log_table(
    audit_entry_id  STRING NOT NULL,
    timestamp_or_id_column_name STRING NOT NULL,
    last_processed_timestamp_or_id_column_value STRING,
    partition_column_info STRING ,
    processed_status_info STRING
)
USING DELTA
LOCATION 's3://lakehouse-administration/audit/partition_audit_log_table'