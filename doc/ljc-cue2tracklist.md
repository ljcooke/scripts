<h1>NAME</h1>
<p>ljc-cue2tracklist - extract tracklist from cue file</p>
<h1>SYNOPSIS</h1>
<p><strong>ljc-cue2tracklist</strong> &lt; <em>filename.cue</em></p>
<h1>DESCRIPTION</h1>
<p><strong>ljc-cue2tracklist</strong> is a naive cue file parser. It
reads a cue file from standard input, and prints a plain text
tracklist.</p>
<p>Designed for one use case: extracting tracklists from Rekordbox DJ
recordings.</p>
<h1>EXAMPLES</h1>
<pre><code>$ ljc-cue2tracklist &lt; examples/example.cue
Silence Groove - Feel
Silence Groove - Offset
The Vagrant - This Is...
Dead Man&#39;s Chest - Westworld
Eusebeia - Vision
Paradox - Isotoxal</code></pre>
<h1>AUTHORS</h1>
<p>Written and maintained by Liam Cooke. The latest source can be found
at https://codeberg.org/ljc/scripts and at
https://github.com/ljcooke/scripts</p>
