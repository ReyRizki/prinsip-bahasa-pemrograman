use strict;

my @a = (1, 2, 3);
my @b = (4, 5, 6);

print (join(" ", addArray(@a, @b)), "\n");

sub addArray
{
    my $len = @_;

    my @a = @_[0 .. ($len/2) - 1];
    my @b = @_[$len/2 .. $len - 1];

    my @result;

    for (my $i = 0; $i < $len / 2; $i++)
    {
        push(@result, @a[$i] + @b[$i]);
    }
    
    return @result;
    # print(@a, " ", @b, "\n");
}