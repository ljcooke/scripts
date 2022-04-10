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
$ tree
.
└── input
    └── hello.jpg
```

Run *ljc-dither-wallpaper* from the parent directory,
then observe the results in the *output* directory.
Example:

```
$ ljc-dither-wallpaper
$ tree
.
├── input
│   └── hello.jpg
└── output
    └── hello.jpg~16c@4x.png
```

Each image is resized and cropped to fill a small canvas,
then scaled up 400% with nearest-neighbour resizing.
By default, images are resized to 720x450,
then scaled up to 2880x1800.

# ENVIRONMENT

The following environment variables
affect the execution of *ljc-dither-wallpaper*:

*DITHER_COLORS*
	Override the number of colors (default *16*, maximum *256*).
	This may be set to a space-separated list,
	to generate multiple images with different palettes.

*DITHER_SIZE*
	Change the image size. Set this to a value of the form *WxH*,
	where *W* and *H* are one quarter
	of the final width and height respectively.

# EXAMPLES

Generate one 4-color image and one 16-color image
for each source image:

```
$ DITHER_COLORS='4 16' ljc-dither-wallpaper
```

Generate images for a screen resolution of 1920x1080
(i.e 4x480 width and 4x270 height):

```
$ DITHER_SIZE=480x270 ljc-dither-wallpaper
```

# SEE ALSO

*convert*(1)

# AUTHORS

Written and maintained by Liam Cooke.
The latest source can be found
at https://codeberg.org/ljc/scripts
and at https://github.com/ljcooke/scripts
