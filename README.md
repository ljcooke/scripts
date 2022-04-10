# Scripts
An assortment of standalone scripts,
written in Ruby and Bash.
Available on [Codeberg](https://codeberg.org/ljc/scripts)
and [GitHub](https://github.com/ljcooke/scripts).

## Install
- **Pick & Choose**:
  Download each script you're interested in,
  and save them to a directory in your `$PATH`.
  Run `chmod +x script1 [script2...]` to make each script executable.

- **I Want It All**:
  Clone this repo with `git`,
  and add the full path to the `bin` directory to `$PATH`.

Read the comment block at the top of each script
for additional instructions and examples.
Some scripts have *optional* dependencies,
which are also documented in the comment block.

## General purpose scripts
### [`binary-decode`](bin/binary-decode)
Basic binary decoder. Reads and decodes
a string of 0s and 1s from standard input.

### [`binary-encode`](bin/binary-encode)
Basic binary encoder. Reads from standard input
and converts it to a string of 0s and 1s.

### [`isodate`](bin/isodate)
ISO date formatter. Reads dates from command line arguments,
and prints the weekdays and dates in ISO 8601 format.

## Specialised scripts
### [`cue2tracklist`](bin/cue2tracklist)
Naive cue file parser. Reads a cue file from standard input, and prints
a plain text tracklist. Made for a specific use case: extracting tracklists
from Rekordbox DJ recordings.

### [`dither-wallpaper`](bin/dither-wallpaper)
Low-res wallpaper creator. Reads images from a directory
and applies a 16-color dither effect.

## License
[MIT License](LICENSE)<br>
Copyright (c) 2022 Liam Cooke
