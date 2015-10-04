# gulp-line-ending-corrector

Gulp Plugin for Line Ending Corrector (A utility that makes sure your files have consistent line endings) 

# about line-editing-corrector

It converts all those pesky `\r\n` (a.k.a `CRLF`) line endings in Microsoft Windows operating systems into the more commonly used and recognized `\n` (a.k.a `LF`). Though it lets you do the opposite as well ( converting `LF` to `CRLF` ). It supports `\r` (a.k.a `CR`) as well for the sake of completion.

You should definitely have this in your build process especially if someone in your team works from a non UNIX system.

[View the repo here](https://github.com/iShafayet/line-ending-corrector)

# Installation

For using programmatically

```bash
[sudo] npm install gulp-line-ending-corrector
```

# Usage

```bash
.pipe(lec({verbose:true, eolc: 'LF', encoding:'utf8'}))
```

## Options

`eolc`
Desired End of Line character. can be `CR` (`\r`), `LF`(`\n`) (Default), `CRLF`(`\r\n`)

`encoding`
Any meaningful encoding that nodejs supports. Default `utf8`. It is advisable to use `utf8` since others are not tested by the devs.