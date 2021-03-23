#!/usr/bin/env perl

=begin comment
Conditionals and Loops
=cut

# Conditionals
$age = 18;

if ($age < 18) {
    print "Sorry, cannot enter";
}
elsif ($age >= 18 & $age < 21) {
    print "Get parent consent";
}
else{
    print "Can enter";
}
print "\n";

print "I am ", ($age >= 65) ? "" : "not", " a senior citizen\n";

# Loops
$num = 10;

print "While\n";
$n = 0;
while($n < $num) {
    print "n = ", $n, "\n";
    $n += 1;
}
print "\n";

print "Until\n";
$n = 0;
until($n >= $num) {
    print "n = ", $n, "\n";
    $n += 2;
}
print "\n";

print "For\n";
for($n = 10; $n < 20; $n += 1){
    print "n = ", $n, "\n";
}
print "\n";

print "Foreach\n";
@li = (2..10);
foreach $l (@li) {
    print "l = ", $l, "\n";
}
print "\n";

print "Do While\n";
$n = 0;
do {
    print "n = ", $n, "\n";
    $n += 1;
} while($n <= $num);
print "\n";
