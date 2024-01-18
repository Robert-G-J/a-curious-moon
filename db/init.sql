CREATE schema if not exists import;
DROP table if exists import.master_plan;
CREATE table import.master_plan
(
    id                 serial primary key,
    start_time_utc     text,
    duration           text,
    date               text,
    team               text,
    spass_type         text,
    target             text,
    request_name       text,
    library_definition text,
    title              text,
    description        text
);
COPY import.master_plan
    FROM '/curious-data/data/master_plan.csv'
    with DELIMITER ',' HEADER CSV;
