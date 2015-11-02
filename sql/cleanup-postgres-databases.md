# Cleanup Postgres Databases

Today I learned that I have thirty-nine Postgres databases on my computer, after running this command inside psql:

```
\l ;
```

Each one is small, but I don't like to carrying around old data. I ended up dropping nine of them, with:

```
drop database foo_development;
```

For a lighter storage and cognitive load.
