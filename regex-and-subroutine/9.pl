use strict;

my @arr = ("Alamat", "aku", "Alamat04", "Handphone", "03", "02", "z9");
my @result = bubbleSort(join(" ", @arr));
print (join(" ", @result), "\n");

# bubbleSort(join(" ", @arr));

sub category
{
    my $c = @_[0];

    if ($c =~ m/^[A-Z]$/)
    {
        return 1;
    }
    elsif ($c =~ m/^[a-z]$/)
    {
        return 2;
    }
    elsif ($c =~ m/^[0-9]$/)
    {
        return 3;
    }
}

sub min
{
    return @_[0] <= @_[1] ? @_[0] : @_[1];
}

sub numCompare
{
    my $num1 = @_[0];
    my $num2 = @_[1];

    if ($num1 < $num2)
    {
        return -1;
    }
    elsif ($num1 == $num2)
    {
        return 0;
    }
    elsif ($num1 > $num2)
    {
        return 1;
    }
}

sub charCompare
{
    my $c1 = @_[0];
    my $c2 = @_[1];

    my $cat1 = category($c1);
    my $cat2 = category($c2);

    my $catCompare = numCompare($cat1, $cat2);

    if ($catCompare != 0)
    {
        return $catCompare;
    }

    return numCompare(ord($c1), ord($c2));
}

sub stringCompare
{
    my $s1 = @_[0];
    my $s2 = @_[1];

    my $len = min(length($s1), length($s2));

    for (my $i = 0; $i < $len; $i++)
    {
        my $compResult = charCompare(substr($s1, $i, 1), substr($s2, $i, 1));

        if ($compResult != 0)
        {
            return $compResult;
        }
    }

    return numCompare(length($s1), length($s2));
}

sub bubbleSort
{
    my @arr = split(' ', @_[0]);

    my $len = @arr;

    for (my $i = 0; $i < $len - 1; $i++)
    {
        for (my $j = $len - 1; $j > $i; $j--)
        {
            if (stringCompare(@arr[$j], @arr[$j - 1]) == -1)
            {
                my $temp = @arr[$j];
                @arr[$j] = @arr[$j - 1];
                @arr[$j - 1] = $temp;
            }
        }
    }

    return @arr;
}