<h1>NAME</h1>
<p>ljc-asc2bin - binary text encoder</p>
<h1>SYNOPSIS</h1>
<p><strong>ljc-asc2bin</strong> &lt; <em>file</em></p>
<h1>DESCRIPTION</h1>
<p><strong>ljc-asc2bin</strong> is a binary text encoder. It reads from
standard input and outputs a string of 0s and 1s.</p>
<h1>EXAMPLES</h1>
<pre><code>$ ljc-asc2bin &lt;&lt;&lt; &#39;Hello, world.&#39;
01001000 01100101 01101100 01101100 01101111 00101100 00100000 01110111
01101111 01110010 01101100 01100100 00101110 00001010</code></pre>
<h1>SEE ALSO</h1>
<p><strong>ljc-bin2asc</strong>(1)</p>
<h1>AUTHORS</h1>
<p>Written and maintained by Liam Cooke. The latest source can be found
at https://codeberg.org/ljc/scripts and at
https://github.com/ljcooke/scripts</p>
