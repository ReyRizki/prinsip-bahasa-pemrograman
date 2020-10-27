use strict;

print("Input number of element in array: ");
my $n = <>;

my @a;
print("Input array :\n");
for (my $i = 0; $i < $n; $i++)
{
    my $x = <>;

    push(@a, $x);
}

print("Max: ", min(@a));
print("Min: ", max(@a));

sub min
{
    my $result = @_[0];

    foreach my $num (@_)
    {
        if ($num < $result)
        {
            $result = $num;
        }
    }

    return $result;
}

sub max
{
    my $result = @_[0];

    foreach my $num (@_)
    {
        if ($num > $result)
        {
            $result = $num;
        }
    }

    return $result;
}