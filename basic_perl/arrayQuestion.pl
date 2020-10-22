use strict;

my @words = qw( The quick brown fox jumps over the lazy dog and runs away );

my @array = (join(" ", @words[0, 1, 3..6, 8]), 
             join(" ", @words[0, 2, 3, 10, 11]), 
             join(" ", @words[0, 7, 8, 10]),
             join(" ", @words[0, 8, 10, 11, 1]),
             join(" ", @words[0..2, 8, 10, 5..7, 3]));

my $string = join("\n", @array);
print $string, "\n";