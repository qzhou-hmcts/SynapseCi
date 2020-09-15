CREATE PROC [mi_truncate_table] @p_schema_name [varchar],@p_table_name [varchar] AS
BEGIN
  TRUNCATE TABLE [@p_schema_name.@p_table_name];
END;