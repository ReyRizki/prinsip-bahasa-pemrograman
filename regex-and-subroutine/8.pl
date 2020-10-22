use strict;

my $serial_number = <>;

if ($serial_number =~ m/^([\d]{2})-([\w]{5})-([\w]{6})$/) {
    print "valid\n";
} else {
    print "invalid\n";
}