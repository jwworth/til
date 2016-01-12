# Generate a Rails Secret Key

Have you ever wondered about those secret keys found in `config/secrets.yml` of your Rails app? The comments generated in that file describe the keys as 'used for verifying the integrity of signed cookies.'

Great... but what if they become compromised? Or we need to change them? We can generate new ones.

Rails provides `rake secret`  for just this purpose.

The source code is [here](https://github.com/rails/rails/blob/7f18ea14c893cb5c9f04d4fda9661126758332b5/railties/lib/rails/tasks/misc.rake#L2). It's pretty simple; the code simply requires `SecureRandom` and spits out a string. If you want to be really clever, you can pipe the string directly into your Vim buffer for the config file, with `:.! rake secret`.

Check out `rake -T | grep secret` inside a Rails root directory for more information.
