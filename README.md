# curl-resolve

Make a HTTP request to your web server before setting up DNS.

This is a wrapper for [curl][].

```sh
# Scenario: A web server is running at the address 12.34.56.78, and has been
# configured to serve the example.com domain. However, the DNS settings for
# this domain have not yet propagated.
#
# Make a request to this domain using the server's IP address:
curl-resolve 12.34.56.78 example.com http://example.com/test.html
```

## Install

Copy the `curl-resolve` file to a directory in your `$PATH`, e.g.
`/usr/local/bin`.

## Development

This project uses [ShellCheck][shellcheck] for static analysis
and [Bats][bats] for testing.

- On macOS, you can install these using [Homebrew][brew]:

  ```sh
  brew install bats shellcheck
  ```

Once these are installed, run `make` to analyse and test the code.

[bats]: https://github.com/sstephenson/bats
[brew]: https://brew.sh/
[curl]: https://curl.haxx.se/
[shellcheck]: https://www.shellcheck.net/
