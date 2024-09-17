DROP TABLE IF EXISTS lakehouse_dev.administration.organizations;
CREATE EXTERNAL TABLE  lakehouse_dev.administration.organizations(
     Id VARCHAR(50) NOT NULL,
    NAME VARCHAR(255) NOT NULL,
    ADDRESS VARCHAR(255) NOT NULL,
    CITY VARCHAR(255) NOT NULL,
    STATE VARCHAR(2) NOT NULL,
    ZIP VARCHAR(5) NOT NULL,
    LAT DECIMAL(10, 6),
    LON DECIMAL(10, 6),
    PHONE VARCHAR(50),
    REVENUE DECIMAL(10, 2),
    UTILIZATION INT,
    audit_source_record_id VARCHAR(255) NOT NULL,
    audit_ingestion_timestamp timestamp
)
USING DELTA
LOCATION 's3://lakehouse-administration/bronze/organizations'