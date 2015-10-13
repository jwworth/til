# Rails restore_attributes

Today I found a useful method in ActiveRecord, `restore_attributes`. 

This method restores attributes on a dirty model. Use it when you are hacking in the Rails console and want to quickly return to a clean slate.

Dirty the record:

```
[1] pry(main)> p = Post.first
  Post Load (0.4ms)  SELECT  "posts".* FROM "posts"  ORDER BY "posts"."id" ASC LIMIT 1
=> #<Post:0x007f8462b09eb8
 id: 106,
 title: "Hello World!",
 created_at: Sun, 09 Feb 2014 17:15:01 CST -06:00,
 url_slug: "hello-world">
[2] pry(main)> p.url_slug = 'foobar'
=> "foobar"
[3] pry(main)> p.created_at = Time.now
=> 2015-10-13 11:41:37 -0500
[4] pry(main)> p
=> #<Post:0x007f8462b09eb8
 id: 106,
 title: "Hello World!",
 created_at: Tue, 13 Oct 2015 11:41:37 CDT -05:00,
 url_slug: "foobar">
```

And restore:

```
[5] pry(main)> p.restore_attributes
=> ["url_slug", "created_at"]
[6] pry(main)> p
=> #<Post:0x007f8462b09eb8
 id: 106,
 title: "Hello World!",
 created_at: Sun, 09 Feb 2014 17:15:01 CST -06:00,
 *url_slug: "hello-world">*
```

https://github.com/rails/rails/blob/master/activemodel/lib/active_model/dirty.rb#L191
