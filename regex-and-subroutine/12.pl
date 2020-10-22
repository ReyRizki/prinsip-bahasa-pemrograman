use strict;

my @a = (1, 2, 3);

print(min(@a), "\n");
print(max(@a), "\n");

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