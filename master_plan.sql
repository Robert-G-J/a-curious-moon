create schema if not exists import;
drop table if exists import.master_plan;
create table import.master_plan(
  start_time_utc text,
  duration text,
  date text,
  team text,
  spass_type text, 
  target text, 
  request_name text, 
);
COPY import.master_plan
FROM '/Users/robjones/code/learn/a-curious-moon' with DELIMITER ',' HEADER CSV;

