# Postgres Unlogged

Using a Postgres table for caching? You might want to try making it `unlogged`.

`unlogged` tables are not written to the write-ahead log, which makes them much faster. This also means they are not crash-safe, and are truncated when a crash or unclean shutdown occurs. For caching purposes, that's likely to be an acceptable tradeoff.

[Documentation](http://www.postgresql.org/docs/current/static/sql-createtable.html)
