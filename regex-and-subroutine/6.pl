use strict;

my $pass = <>;

if ($pass =~ m/^(?!.*[ ])(?=.*\d)(?=.*\W)(?=.*[a-z])(?=.*[A-Z]).{10,}$/) {
    print "valid\n";
} else {
    print "invalid\n";
}