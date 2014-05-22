my $target = 100;
my @n = (1..99);
my @ways = (1);
 
for $i (@n) {
  $ways[$_] += $ways[$_-$i] for $i..$target;
}
print "Answer to PE76 = $ways[$target]";