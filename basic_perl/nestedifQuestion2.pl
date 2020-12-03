use strict;

my $salary = <>;
my $bonus = <>;

if ($salary < 100000)
{
    if ($bonus < 100000)
    {
        print "You are not a banker\n";
    }
    elsif ($bonus > 100000)
    {
        print "You won the lottery\n";
    }
}
elsif ($salary > 100000)
{
    if ($bonus < 100000)
    {
        print "You are a banker with no bonus\n";
    }
    elsif ($bonus > 100000)
    {
        print "You are a banker with a big bonus\n";
    }
}

if (($salary > 100000) or ($bonus > 100000))
{
    print "You are buying dinner tonight\n";
}