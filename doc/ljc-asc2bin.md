# NAME

ljc-asc2bin - binary text encoder

# SYNOPSIS

**ljc-asc2bin** \< *file*

# DESCRIPTION

**ljc-asc2bin** is a binary text encoder. It reads from standard input
and outputs a string of 0s and 1s.

# EXAMPLES

    $ ljc-asc2bin <<< 'Hello, world.'
    01001000 01100101 01101100 01101100 01101111 00101100 00100000 01110111
    01101111 01110010 01101100 01100100 00101110 00001010

# SEE ALSO

**ljc-bin2asc**(1)

# AUTHORS

Written and maintained by Liam Cooke. The latest source can be found at
https://codeberg.org/ljc/scripts and at
https://github.com/ljcooke/scripts
