# Prepare / Execute

You can store a SQL query with `prepare`.

```
db=# prepare posts_search as select title from posts limit 5;
PREPARE
```

Call the method with `execute`.

```
db=# execute posts_search;
               title
-----------------------------------
 Hello World!
 My First Pull Request: HAML
 My First Pull Request: Sinatra
 My First Pull Request: Capistrano
 My First Pull Request: SASS
(5 rows)
```

Deallocate the query with `deallocate`, and you can set it again.

```
db=# deallocate posts_search;
DEALLOCATE
db=# prepare posts_search as select title from posts limit 10;
PREPARE
```
