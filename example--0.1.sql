-- complain if script is sourced in psql, rather than via CREATE EXTENSION
\echo Use "CREATE EXTENSION example" to load this file. \quit
CREATE OR REPLACE FUNCTION Meh()
RETURNS VOID AS
'$libdir/example', 'Meh'
LANGUAGE c VOLATILE STRICT;
COMMENT ON FUNCTION Meh() IS 'Meh prints out message to error elog
';

CREATE OR REPLACE FUNCTION ConcatAll(tableName text,colName text)
RETURNS text AS
'$libdir/example', 'ConcatAll'
LANGUAGE c VOLATILE STRICT;
COMMENT ON FUNCTION ConcatAll(text,text) IS 'ConcatAll concatenates all values of an column in a given table
';

CREATE OR REPLACE FUNCTION CreatedTimeTrigger()
RETURNS TRIGGER AS
'$libdir/example', 'CreatedTimeTrigger'
LANGUAGE c VOLATILE STRICT;
COMMENT ON FUNCTION CreatedTimeTrigger() IS 'CreatedTimeTrigger example trigger
';

CREATE OR REPLACE FUNCTION ConcatArray(strs text[])
RETURNS text AS
'$libdir/example', 'ConcatArray'
LANGUAGE c VOLATILE STRICT;
COMMENT ON FUNCTION ConcatArray(text[]) IS 'ConcatArray concatenates an array of strings
';

