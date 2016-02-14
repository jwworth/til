# Query the Size of Postgres Array

Today I learned how to query the size of a Postgres array. There are (at least) two methods that work.

The first is `array_length`. This requires you to know the array dimension you seek; a useful filter, although most of the time this will probably be `1`:

```sql
hr-til_development=# select title from posts
hr-til_development=# where array_length(slack_notified_at_likes_threshold, 1) = 1;
                   title
-------------------------------------------
 Because Javascript
 Percent Notation
 DIY Grids for Designing UI in Illustrator
(3 rows)
```

When the dimension is `1`, a more terse solution is `cardinality`:

```sql
hr-til_development=# select title from posts
hr-til_development=# where cardinality(slack_notified_at_likes_threshold) = 1;
                   title
-------------------------------------------
 Because Javascript
 Percent Notation
 DIY Grids for Designing UI in Illustrator
(3 rows)
```

[Documentation](http://www.postgresql.org/docs/current/interactive/functions-array.html#ARRAY-FUNCTIONS-TABLE)
