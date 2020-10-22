@array = qw( 99players b_squad a-team 1_Boy A-team B_squad 2_Boy);
print "@array \n";

@array = sort {$a <=> $b} @array;
print "@array \n";

@array = sort {$b <=> $a} @array;
print "@array \n";

@array = sort {lc $a cmp lc $b} @array;
print "@array \n";
