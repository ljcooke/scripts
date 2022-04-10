# Scripts
An assortment of scripts, written in Ruby and Bash.

Scripts are documented in the [doc](doc/) directory.

## Install
- **Pick & Choose**:
  Download each script you're interested in,
  and save them to a directory in your `$PATH`.
  Run `chmod +x script1 [script2...]` to make each script executable.

- **I Want It All**:
  Clone this repo with `git`,
  and add the full path to the `bin` directory to `$PATH`.

## General-purpose scripts
These scripts should work as-is.
They may have *optional* dependencies
to provide extra functionality.

### [`ljc-asc2bin`](doc/ljc-asc2bin.md)
Basic binary encoder. Reads from standard input
and converts it to a string of 0s and 1s.

### [`ljc-bin2asc`](doc/ljc-bin2asc.md)
Basic binary decoder. Reads and decodes
a string of 0s and 1s from standard input.

### [`ljc-isodate`](doc/ljc-isodate.md)
ISO date formatter. Reads dates from command line arguments,
and prints the weekdays and dates in ISO 8601 format.

## Specialised scripts
These are designed for specific use cases.
They may have dependencies, which are documented below.

### [`ljc-cue2tracklist`](doc/ljc-cue2tracklist.md)
Naive cue file parser. Reads a cue file from standard input,
and prints a plain text tracklist.
Made for extracting tracklists from Rekordbox DJ recordings.

### [`ljc-dither-wallpaper`](doc/ljc-dither-wallpaper.md)
Low-res wallpaper creator. Reads images from a directory
and applies a 16-color dither effect.
Requires [ImageMagick](https://imagemagick.org/).

## Other scripts
Similar scripts by the author not included in this repo:

- [curl-resolve](https://git.sr.ht/~ljc/curl-resolve)

## License
[MIT License](LICENSE)

Copyright (c) 2022 Liam Cooke

## Source
The source code is available
on [Codeberg](https://codeberg.org/ljc/scripts)
and [GitHub](https://github.com/ljcooke/scripts).
