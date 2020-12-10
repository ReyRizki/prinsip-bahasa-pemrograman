use strict;

chomp(my $s = <>);

print length($s), "\n";
print scalar reverse("$s"), "\n";
print uc($s), "\n";
print lc($s), "\n";