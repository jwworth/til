# Psql Connect

Want to change database connections from inside psql? You can!

Psql, the REPL for Postgres, has a useful meta-command called `\connect`, or `\c`. This lets you establish a new connection to a Postgres server, while closing the current connection.

Here is the required format:

```
\c or \connect [ dbname [ username ] [ host ] [ port ] ] | conninfo
```

Only `\c [my_database]` is required; omitted parameters are taken from the previous connection.

[Documentation](http://www.postgresql.org/docs/current/static/app-psql.html)
