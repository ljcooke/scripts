# NAME

ljc-cue2tracklist - extract tracklist from cue file

# SYNOPSIS

**ljc-cue2tracklist** \< *filename.cue*

# DESCRIPTION

**ljc-cue2tracklist** is a naive cue file parser. It reads a cue file
from standard input, and prints a plain text tracklist.

Designed for one use case: extracting tracklists from Rekordbox DJ
recordings.

# EXAMPLES

    $ ljc-cue2tracklist < examples/example.cue
    Silence Groove - Feel
    Silence Groove - Offset
    The Vagrant - This Is...
    Dead Man's Chest - Westworld
    Eusebeia - Vision
    Paradox - Isotoxal

# AUTHORS

Written and maintained by Liam Cooke. The latest source can be found at
https://codeberg.org/ljc/scripts and at
https://github.com/ljcooke/scripts
