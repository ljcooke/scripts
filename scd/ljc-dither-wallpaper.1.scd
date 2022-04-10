ljc-dither-wallpaper(1)

# NAME

ljc-dither-wallpaper - low-res wallpaper creator

# SYNOPSIS

*ljc-dither-wallpaper*

# DESCRIPTION

*ljc-dither-wallpaper* is a low-res wallpaper creator.
It reads images from a directory
and applies a 16-color dither effect.

# USAGE

Create a directory named *input* and drop some images into it.
Example:

```
input/
	hello.jpg
```

Run this script from the parent directory.
Observe the results in the *output* directory.

Example directory structure after running:

```
input/
	hello.jpg
output/
	hello.jpg~16c@4x.png
```

Each image is resized and cropped to 720x450,
then scaled up 400% to match a screen resolution of 2880x1800.
You can change the size
by setting the environment variable _DITHER_SIZE_
to a value of the form *WxH*, where *W* and *H*
are 1/4 of the desired width and height respectively.

Override the number of colors
by setting the _DITHER_COLORS_ environment variable
(default 16, max 256).
This can be a space-separated list,
to generate multiple images with different palettes.

# EXAMPLES

Generate images for a screen resolution of 1920x1080
(i.e. 4x480 by 4x270):

```
DITHER_SIZE=480x270 ljc-dither-wallpaper
```

Generate one 4-color image and one 16-color image
for each source image:

```
DITHER_COLORS='4 16' ljc-dither-wallpaper
```

# SEE ALSO

*convert*(1)

# AUTHORS

Written and maintained by Liam Cooke.
The latest source can be found
at https://codeberg.org/ljc/scripts
and at https://github.com/ljcooke/scripts
