<h1>NAME</h1>
<p>ljc-isodate - ISO date formatter</p>
<h1>SYNOPSIS</h1>
<p><strong>ljc-isodate</strong> <em>date</em> [<em>date</em> ...]</p>
<h1>DESCRIPTION</h1>
<p>ISO date formatter. Reads dates from command line arguments, and
prints the weekdays and dates in ISO 8601 format.</p>
<p>Supports natural language parsing if the <strong>chronic</strong> gem
is installed.</p>
<h1>EXAMPLES</h1>
<pre><code>$ ljc-isodate &#39;1 Feb 2022&#39; &#39;27/07/1987&#39;
Tue 2022-02-01
Mon 1987-07-27</code></pre>
<p>Natural language parsing, with the <strong>chronic</strong> gem
installed:</p>
<pre><code>$ gem install chronic
$ ljc-isodate yesterday tomorrow &#39;30 days ago&#39; &#39;this friday&#39;
Tue 2022-02-08
Thu 2022-02-10
Mon 2022-01-10
Fri 2022-02-11</code></pre>
<h1>SEE ALSO</h1>
<p><strong>date</strong>(1)</p>
<h1>AUTHORS</h1>
<p>Written and maintained by Liam Cooke. The latest source can be found
at https://codeberg.org/ljc/scripts and at
https://github.com/ljcooke/scripts</p>
