#!/usr/bin/perl
use strict;

my $x = 5.1;
my $y = 5.1;

if ( $x > 5.0 )
{
    if ( $y > 5.0 )
    {
        print "x and y are greater than 5\n";
    }
}

if (( $x > 5.0 ) and ($y > 5.0 ))
{
    print "x and y are greater than 5\n";
}
