# NAME

ljc-curl-resolve - make a HTTP request without DNS

# SYNOPSIS

**ljc-curl-resolve** \[**-h**\] *ip_address* *domain* \[*url*\]

**-h** Print a help message and exit.

# DESCRIPTION

**ljc-curl-resolve** is a tool to make HTTP requests without going
through DNS.

It\'s a wrapper for **curl**(1), designed for one use case: testing that
a web server is configured correctly before setting up DNS.

Provide an *ip_address* and a *domain*, and it will make a HTTP request
as though the domain were configured to resolve to that IP address. This
is similar to adding an entry to /etc/hosts.

You can also provide a full *url* to request from that domain.

# EXAMPLES

Suppose you are setting up a web server with the IP address 12.34.56.78,
and you have configured it to serve HTTP requests for your new domain,
example.com. Make a HTTP request with the command:

    ljc-curl-resolve 12.34.56.78 example.com

You can specify a full URL after the domain:

    ljc-curl-resolve 12.34.56.78 example.com http://example.com/test.html

# SEE ALSO

**curl**(1)

# AUTHORS

Written and maintained by Liam Cooke. The latest source can be found at
https://codeberg.org/ljc/scripts and at
https://github.com/ljcooke/scripts
