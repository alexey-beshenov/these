#!/usr/bin/perl

use warnings;
use strict;

my $file = 'these.bib';
open(INPUT, $file) or die("Could not open $file.");

my %entries;
my $currentId;

foreach my $line (<INPUT>) {
    if ($line =~ m/\@(\w+)\s*\{([\w\d\-]+)/) {
	my $type = $1;
	$currentId = $2;
	$entries{$currentId}{'type'} = $type;
    }

    if ($line =~ m/\s*(\w+)\s*=\s*(.*)\s*$/) {
	my $field = lc ($1);
	my $value = $2;
	$value =~ s/^\{//;
	$value =~ s/,$//g;
	$value =~ s/\}$//g;
	$value =~ s/,$//g;

	$entries{$currentId}{$field} = $value;
    }
}
close(INPUT);

foreach my $item (sort { "\L$a" cmp "\L$b" } keys %entries) {
    my $type = $entries{$item}{'type'};
    print "\@$type {$item,\n";

    my $n = 0;

    foreach my $field (keys %{$entries{$item}}) {
	$n = length($field) if length($field) > $n;
    }

    foreach my $field (sort keys %{$entries{$item}}) {
	next if ($field eq 'type');
	my $value = $entries{$item}{$field};

	my $tab = ' ' x (4 + $n - length ($field));

	print "$tab$field = \{$value\},\n";
    }
    print "}\n\n";
    print '%' x 80;
    print "\n\n";
}
