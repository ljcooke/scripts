# curl-resolve

Make a HTTP request without DNS.

## Description

**curl-resolve** is a tool to make HTTP requests without going through DNS.
It is a wrapper for [curl][].

curl-resolve is designed for one specific use case: testing that a web server
is configured correctly before setting up DNS.

## Example

Suppose you are setting up a web server with the IP address 12.34.56.78, and
you have configured it to serve HTTP requests for your new domain, example.com.
Make a HTTP request with the command:

```
curl-resolve 12.34.56.78 example.com
```

You can specify a full URL after the domain:

```
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
