#!/usr/bin/perl -w
use strict;

# open(INPUT,"refs.bib");

my($bib_head, $bib_body, $bib_isbn, $bib_url, $bib_year, $bib_urldate);

sub reset_bib {
    $bib_body = $bib_head = $bib_url = $bib_isbn = $bib_year = $bib_urldate = "";
}

reset_bib();

while(defined(my $line=<>)) {
    chomp($line);
    if($line =~ /^@/){
	$line =~ s/,\s*//g;
	$bib_head = $line;
	$bib_body = $bib_head;
	next;
    } 
    if($bib_head eq "") { next; }

    if($line =~ /^\s*url = \s*{(.*)}/) {
	$bib_url = $1;
	$bib_url = "URL~: \\url{$bib_url}";
	next;
    }
    if($line =~ /^\s*isbn = \s*{(.*)}/) {
	$bib_isbn = $1;
	$bib_isbn = "ISBN~: $bib_isbn";
	next;
    }
    if($line =~ /^\s*year = \s*{(.*)}/) {
	$bib_year = $1;
	next;
    }
    if($line =~ /^\s*urldate = \s*{(.*)}/) {
	$bib_urldate = $1;
	$bib_urldate =~ s/-.*//g;
	next;
    }

    if($line =~/^}$/) {
	print $bib_body;

	my $bib_suffix = "";
	
	#  note (URLS + ISBN)
	my $bib_note = $bib_url;
	if($bib_isbn ne "") {
	    if($bib_note ne "") {
		$bib_note .= ". ".$bib_isbn;
	    } else {
		$bib_note = $bib_isbn;
	    }
	}
	if($bib_note ne "") {$bib_suffix = "    note = {$bib_note},\n"; }
	#  year
	if($bib_year eq "") { $bib_year = $bib_urldate; }
	if($bib_year ne "") { $bib_suffix .= "    year = {$bib_year}\n"; }

	if($bib_suffix ne "") {
	    print ",\n".$bib_suffix;
	}
	
	print "}\n";
	reset_bib();
	next;
    }
    
    if($line =~ /^\s*note = /) {
	if(!(($line =~ /URL~/) or ($line =~ /ISBN~/))) {
	    next;
	}
    }    	

    $line =~ s/\s*,\s*$//g;
    $bib_body .= ",\n".$line;
}
