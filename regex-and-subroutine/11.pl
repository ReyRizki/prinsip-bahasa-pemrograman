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

print ("Average: ", calc_avg(@a), "\n");

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