<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Background Context</title>
</head>
<body>
    <h1>Background Context</h1>

    <p>For this project, you have to build your regular expression using Oniguruma, a regular expression library that is used by Ruby by default. Note that other regular expression libraries sometimes have different properties.</p>

    <p>Because the focus of this exercise is to work with regular expressions (regex), here is the Ruby code that you should use. Just replace the regexp part, meaning the code in between the //:</p>

    <pre><code>#!/usr/bin/env ruby
puts ARGV[0].scan(/127.0.0.[0-9]/).join
    </code></pre>

    <p>Example usage:</p>

    <pre><code>$ ./example.rb 127.0.0.2
127.0.0.2
$ ./example.rb 127.0.0.1
127.0.0.1
$ ./example.rb 127.0.0.a
    </code></pre>

    <h2>Resources</h2>

    <ul>
        <li><a href="#">Regular expressions - basics</a></li>
        <li><a href="#">Regular expressions - advanced</a></li>
        <li><a href="#">Rubular is your best friend</a></li>
        <li><a href="#">Use a regular expression against a problem: now you have 2 problems</a></li>
        <li><a href="#">Learn Regular Expressions with simple, interactive exercises</a></li>
    </ul>

    <h2>Requirements</h2>

    <h3>General</h3>

    <ul>
        <li>Allowed editors: vi, vim, emacs</li>
        <li>All your files will be interpreted on Ubuntu 20.04 LTS</li>
        <li>All your files should end with a new line</li>
        <li>A README.md file, at the root of the folder of the project, is mandatory</li>
        <li>All your Bash script files must be executable</li>
        <li>The first line of all your Bash scripts should be exactly <code>#!/usr/bin/env ruby</code></li>
        <li>All your regex must be built for the Oniguruma library</li>
    </ul>
</body>
</html>

