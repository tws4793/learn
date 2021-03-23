#!/usr/bin/env perl

=begin comment
VARIABLES & DATA TYPES
=cut

# Variables
$a = 10;
print "Value of a = $a\n";

# "Here" Documents
$var = <<"EOF";
This is an example of a multiline document.
It will continue until there's an EOF.
Can include variables, like for example, a = $a
EOF
print "$var\n";

# Scalar Variables
# prefix by `$`
$bob_name = "Bob";
$bob_money = 10.00;
$var = <<"EOF";
$bob_name has \$$bob_money.
EOF
print "$var\n";

# Operations
$bob_salary = 20;
$bob_total = $bob_money + $bob_salary;
print "After adding in salary, $bob_name now has \$$bob_total.\n";

# V-Strings
$smile = v9786;
print "Smile! $smile\n";

# Special Literals
print "File name: " . __FILE__ . "\n";
print "Line number: " . __LINE__ . "\n";
print "Package: " . __PACKAGE__ . "\n";

print "\n";

# Array Variables
# prefix by `@`
@ages = (25,25,28);
@names = ("Tom", "Dick", "Harry");
print "$bob_name has a friend named $names[0], aged $ages[0].\n";

# Context
$no_friends = @names;
print "$bob_name has $no_friends friends.\n";

# Using qw/
@arr = qw/Mon
Tue
Wed
Thu
Fri
Sat
Sun/;
print $arr[2] . "\n";
print $arr[-7] . "\n";

# Sequential
@nums = (1..10);

print "@nums\n";
print "Size ", scalar @nums, "\n";

# Array Size
$nums[18] = 18;
print "@nums\n";
print "Size ", scalar @nums, "\n";
print "Max Index ", $#nums, "\n";

# Adding and removing elements
push(@nums, 19);
print "After push: @nums\n";

unshift(@nums, 0);
print "After unshift: @nums\n";

pop(@nums);
print "After pop: @nums\n";

shift(@nums);
print "After shift: @nums\n";

print "Slicing :", @arr[3,4,5], "\n";

splice(@nums, 0, 5, 21..25);
print "After splice: @nums\n";

# String Split/Join
$places = "Ang Mo Kio, Bedok, Clementi";

@place_sp = split(',', $places);
print "After splitting: ", @place_sp, "\n";

$place_jn = join('-', @place_sp);
print "After joining: ", $place_jn, "\n";

unshift(@place_sp, "Dover");
print "Before sort: ", @place_sp, "\n";
@place_st = sort(@place_sp);
print "After sort: ", @place_st, "\n";

# $[ sets the indexing to a specific no

# Hash Variables
# prefix by `%`
%friends = ('Tom', 25, 'Dick', 25, 'Harry', 28);
@friends_names = keys %friends;
print "$bob_name has another friend named $friends_names[1], " . "aged $friends{$friends_names[1]}.\n";

# Alternative
%friends = ('Tom' => 25, 'Dick' => 25, 'Harry' => 28);

# Inserting
$friends{'Elias'} = 28;
print %friends, "\n";

# Is in Hash
print exists($friends{'Elias'}), "\n";
print exists($friends{'Holly'}), "\n";

# Size
$size = values %friends;
print $size, "\n";

# Remove Hash
delete $friends{'Elias'};
print %friends, "\n";
