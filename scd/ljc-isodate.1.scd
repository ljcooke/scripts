ljc-isodate(1)

# NAME

ljc-isodate - ISO date formatter

# SYNOPSIS

*ljc-isodate* _date_ [_date_ ...]

# DESCRIPTION

ISO date formatter.
Reads dates from command line arguments,
and prints the weekdays and dates in ISO 8601 format.

Supports natural language parsing
if the *chronic* gem is installed.

# EXAMPLES

```
$ ljc-isodate '1 Feb 2022' '27/07/1987'
Tue 2022-02-01
Mon 1987-07-27
```

Natural language parsing,
with the *chronic* gem installed:

```
$ gem install chronic
$ ljc-isodate yesterday tomorrow '30 days ago' 'this friday'
Tue 2022-02-08
Thu 2022-02-10
Mon 2022-01-10
Fri 2022-02-11
```

# SEE ALSO

*date*(1)

# AUTHORS

Written and maintained by Liam Cooke.
The latest source can be found
at https://codeberg.org/ljc/scripts
and at https://github.com/ljcooke/scripts
