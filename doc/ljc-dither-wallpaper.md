<h1>NAME</h1>
<p>ljc-dither-wallpaper - low-res wallpaper creator</p>
<h1>SYNOPSIS</h1>
<p><strong>ljc-dither-wallpaper</strong></p>
<h1>DESCRIPTION</h1>
<p><strong>ljc-dither-wallpaper</strong> is a low-res wallpaper creator.
It reads images from a directory and applies a 16-color dither
effect.</p>
<h1>USAGE</h1>
<p>Create a directory named <strong>input</strong> and drop some images
into it. Example:</p>
<pre><code>input/
	hello.jpg</code></pre>
<p>Run this script from the parent directory. Observe the results in the
<strong>output</strong> directory.</p>
<p>Example directory structure after running:</p>
<pre><code>input/
	hello.jpg
output/
	hello.jpg~16c@4x.png</code></pre>
<p>Each image is resized and cropped to 720x450, then scaled up 400% to
match a screen resolution of 2880x1800. You can change the size by
setting the environment variable <em>DITHER_SIZE</em> to a value of the
form <strong>WxH</strong>, where <strong>W</strong> and
<strong>H</strong> are 1/4 of the desired width and height
respectively.</p>
<p>Override the number of colors by setting the <em>DITHER_COLORS</em>
environment variable (default 16, max 256). This can be a
space-separated list, to generate multiple images with different
palettes.</p>
<h1>EXAMPLES</h1>
<p>Generate images for a screen resolution of 1920x1080 (i.e. 4 times
480x270):</p>
<pre><code>DITHER_SIZE=480x270 ljc-dither-wallpaper</code></pre>
<p>Generate one 4-color image and one 16-color image for each source
image:</p>
<pre><code>DITHER_COLORS=&#39;4 16&#39; ljc-dither-wallpaper</code></pre>
<h1>SEE ALSO</h1>
<p><strong>convert</strong>(1)</p>
<h1>AUTHORS</h1>
<p>Written and maintained by Liam Cooke. The latest source can be found
at https://codeberg.org/ljc/scripts and at
https://github.com/ljcooke/scripts</p>
