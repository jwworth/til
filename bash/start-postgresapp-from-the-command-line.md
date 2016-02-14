# Start Postgres.app from the Command Line

Today I was trying to restore a production Postgres dump on a remote machine, to test some migrations. I haven't granted myself Heroku production database access, hence the SSH into a machine with a Heroku user that has access.

I quickly hit a problem— this remote machine runs Postgres using [Postgres.app](http://postgresapp.com/). Without that program, I'm out of luck. No local Postgres server, no production database restore, no testing.

It turns out you can start Postgres.app from the command line. Find the executable and call it.

```
jake@remote-machine:$ /Applications/Postgres.app/Contents/MacOS/Postgres
```

Postgres.app online. I enjoy the image of a remote machine waking up somewhere on a Sunday with a big blue elephant, and 'Welcome to Postgres'.
