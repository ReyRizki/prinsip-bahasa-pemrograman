use strict;

my @a = (1, 2, 3);

print (calc_avg(@a), "\n");

sub calc_avg
{
    my $len = @_;

    my $sum = 0;

    foreach my $num (@_)
    {
        $sum += $num;
    }

    return $sum / $len;
}