use strict;

print("Input number of element in array: ");
my $n = <>;

my @a;

print("Input array 1:\n");
for (my $i = 0; $i < $n; $i++)
{
    my $x = <>;

    push(@a, $x);
}

my @b;
print("Input array 2:\n");
for (my $i = 0; $i < $n; $i++)
{
    my $x = <>;

    push(@b, $x);
}

print ("Result: ", join(" ", addArray(@a, @b)), "\n");

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
}