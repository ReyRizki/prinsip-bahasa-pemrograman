#!/usr/bin/perl
use strict;
my @array = ( 1 .. 10 ); # create an array of numbers 1-10 print "The array contains: @array\n";
my $first_element = shift(@array); # remove the first element and store in first_element
my $last_element = pop(@array); # remove the last element and store in last_element
print "The first and last elements of the array are $first_element and $last_element\n";
push(@array, ( -5 .. +5 ) ); # add the numbers -5 to +5 to thearray
print "The array currently contains: @array\n";
my @sortedarray = sort{$a <=> $b}(@array); # sort the arraynumerically
print "The sorted array contains: @sortedarray\n";
my @new_array = qw(cat dog rabbit turtle fox badger); # createa new array using qw
print "@new_array\n";