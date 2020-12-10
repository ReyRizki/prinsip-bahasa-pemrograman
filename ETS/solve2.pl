#!/usr/local/bin/perl  

use strict;

# input number of strings
my $n = <>;
$n = $n * 1;

my $found = 0;
my $result = 0;

#iterate to get strings and update result
for (my $i = 0; $i < $n; $i++)
{
    my $s = <>;
    my @input = split(' ', $s);

    # check if the string fullfill the requirement
    if (isQualified(@input))
    {
        # for the first qualified string, update the result
        if (not $found)
        {
            $result = length(@input[4]);
            $found = 1;
        }
        else
        {
            # get minimum len of string
            my $len = length(@input[4]);

            if ($len < $result)
            {
                $result = $len;
            }
        }
    }
}

print $result, "\n";

# subroutine to check if a string is qualified
# by qualified means that the date is > 30 May 2004 and access is read only, or r-- in the string
sub isQualified
{
    my @dateArray = @_[0..2];
    my $access = @_[3];

    return (isMore(@dateArray[0] * 1, convertMonth(@dateArray[1]), @dateArray[2]) and ($access eq "r--" ? 1 : 0));
}

# subroutine to convert month to number, implemented using hash
sub convertMonth
{
    my $month = @_[0];

    my %monthsToNum = (
        'Jan' => 1,
        'Feb' => 2,
        'Mar' => 3,
        'Apr' => 4,
        'May' => 5,
        'Jun' => 6,
        'Jul' => 7,
        'Aug' => 8,
        'Sep' => 9,
        'Oct' => 10,
        'Nov' => 11,
        'Dec' => 12
    );

    return $monthsToNum{$month};
}

# subroutine to check if a date is > 30 May 2004
sub isMore
{
    my @date = @_;

    if (@date[2] >= 2004)
    {
        if (@date[2] > 2004)
        {
            return 1;
        }
        else
        {
            if (@date[1] >= 5)
            {
                if (@date[1] > 5)
                {
                    return 1;
                }
                else
                {
                    if (@date[0] >= 30)
                    {
                        return 1;
                    }
                    return 0;
                }
            }

            return 0;
        }
    }

    return 0;
}