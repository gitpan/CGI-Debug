#!/usr/local/bin/perl -w

# Before `make install' is performed this script should be runnable with
# `make test'. After `make install' it should work as `perl test.pl'

######################### We start with some black magic to print on failure.

BEGIN { $| = 1; print "1..2\n"; }
END {print "not ok 1\n" unless $loaded;}
$loaded = 1;
print "ok 1\n";

######################### End of black magic.

# util
sub test {
    local($^W) = 0;
    my($num, $true,$msg) = @_;
    print($true ? "ok $num\n" : "not ok $num $msg\n");
}

# Set up a CGI environment
%ENV = ();
$ENV{REQUEST_METHOD}='GET';
$ENV{QUERY_STRING}  ='game=chess&game=checkers&weather=dull';
$ENV{PATH_INFO}     ='/somewhere/else';
$ENV{PATH_TRANSLATED} ='/usr/local/somewhere/else';
$ENV{SCRIPT_NAME}   ='/cgi-bin/foo.cgi';
$ENV{SERVER_PROTOCOL} = 'HTTP/1.0';
$ENV{SERVER_PORT} = 8080;
$ENV{SERVER_NAME} = 'the.good.ship.lollypop.com';


# Faulty parameters
test(2, `t/internals/not_found.cgi` eq <<EOT);
Content-Type: text/html

<html><head><title>CGI::Debug response</title></head><body><p>You got an error!
<pre>
\$VAR1 = {
          'reap' => 'errors'
        };
</pre>

<p>'reap' in 'the ref' not one of qw(header to set report on)

</body></html>
EOT
    ;
