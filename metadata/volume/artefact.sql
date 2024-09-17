CREATE EXTERNAL VOLUME IF NOT EXISTS  lakehouse_dev.administration.artefact
    LOCATION 's3://lakehouse-administration/arefacts/'
    COMMENT 'This is my example external volume on S3'