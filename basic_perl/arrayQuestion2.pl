use strict;

my @people = (["Clark", "Kent"], ["Lois", "Lane"], ["Bruce", "Wayne"]);

push(@{$people[0]}, "Superman");
pop(@people);
push(@people, ["Jimmy", "Olsen", "Photographer"]);
$people[1][2] = "Reporter";

foreach my $name (@people)
{
    print join(" ", @{$name}), "\n";
}

print join(" ", @{$people[$#people]}), "\n"; 