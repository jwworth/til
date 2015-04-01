# Terminate Database Connections

To maintain data integrity, certain actions like `rake db:drop` will not execute when there are active sessions on a Postgres database. You'll get an error like this:

```
ERROR:  database "database_name" is being accessed by other users
DETAIL:  There are 2 other session(s) using the database.
```

Sessions can be killed from the command line, but a safer route is to kill them with a database method. First, revoke all public access from the database:

```
revoke connect on database_name from public;
```

Next, kill all processes on the database, other than your own connection:

```
select pg_terminate_backend(pid) from pg_stat_activity
where pid <> pg_backend_pid()
and dbname = 'database_name';
```

Now you are free to execute commands like `rake db:drop`.

This technique is leveraged from several helpful Stack Overflow threads, including [this one](http://stackoverflow.com/questions/5108876/kill-a-postgresql-session-connection).
