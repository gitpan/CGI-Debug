#!/usr/bin/perl -w
BEGIN { unshift @INC, 'blib/lib' }
use CGI::Debug( report => 'errors' );
use strict;

compile error!

print "Content-type: text/html\n\n";
print "a1\n";
warn;

