# Chrome SameSite Updates

Yesterday I wrote about [Chrome Flags](browsers/chrome-flags.md); today I'll
explain why.

Chrome is currently rolling out sweeping changes to how it handles cookies. I
learned a _lot_ about it this week. To summarize, cookies that don't specify a
`SameSite` attribute will be treated as `SameSite=Lax` by Chrome starting with
version 91. Ask for those cookies from a different URL, and Chrome won't share
them. This means that cookies intended for third-party or cross-site sharing
must specify `SameSite=None` and `Secure`. You can opt into this behavior today
with the aforementioned flags.

So what? A lot of (sometimes bad) internet behavior relied on open cookie
sharing. The web dev community has a lot of work to do to respond to this change.
