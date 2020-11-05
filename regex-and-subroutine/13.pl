use strict;

print("Input string: ");
my $str = <>;

my @result = countProps($str);

print ("Words: ", @result[0], "\nChars: ", @result[1], "\n");

sub countProps
{
    my @arr = split(' ', @_[0]);

    my $words = @arr;

    my $char = 0;
    foreach my $word (@arr)
    {
        $char += length($word);
    }

    return($words, $char);
}