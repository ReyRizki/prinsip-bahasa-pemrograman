use strict;

my $str = "JTK Polban adalah sekolah vokasi";

countProps($str);

sub countProps
{
    my @arr = split(' ', @_[0]);

    my $words = @arr;

    my $char = 0;
    foreach my $word (@arr)
    {
        $char += length($word);
    }

    print ($words, " ", $char);
}