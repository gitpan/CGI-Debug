#!/usr/bin/perl -w
BEGIN { unshift @INC, 'blib/lib' }
use CGI::Debug( report => 'errors', to => { file => "/tmp/b$$" } );
use strict;

print "Content-type text/html\n\n";
print "a1\n";

