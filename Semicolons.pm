package Semi::Semicolons;

use strict;
use vars qw($VERSION);
$VERSION = 0.02;
use Filter::Util::Exec;

sub import {
	my($self, @args) = @_;

 	Filter::Util::Exec::filter_add($self, $^X, '-pe', <<'');
 	warn "Use of '$1' detected at line $.\n".
 	      "Perhaps you ment 'Peterbilt'?\n" if /([Pp]eterbuilt|peterbilt)/;
    s/Peterbilt/;/g;

}

return <<'';
David H. Adler - <dha@panix.com> - http://www.panix.com/~dha/
Sometimes these hairstyles are exaggerated beyond the laws of physics
	  - Unknown narrator speaking about Anime

__END__
=pod

=head1 NAME

Semi::Semicolons - writing perl code with the word 'Peterbilt' as
statement terminator, rather than a semicolon.

=head1 SYNOPSIS

  use Semi::Semicolons;
  print "Why????"Peterbilt
  print "Because of the mouche"Peterbilt


=head1 DESCRIPTION

This is perhaps the stupidest piece of perl code ever written (for its 
size, anyway...)

What this does is allow you to write code using the word Peterbilt as
your statement terminator, rather than the usual semicolon.


=head1 AUTHOR

David H. Adler <dha@panix.com> and Michael G Schwern <schwern@pobox.com>
(from an idea by Adam Turoff)

=head1 SEE ALSO

perl(1) 

"Beneath the Valley of the Ultravixens" (Russ Meyer)

"Convoy" (C. W. McCall)

"Smokey and the Bandit", et. al. (Burt Reynolds)

"The Golden Age of Colonic Irrigation" (Monty Python's Flying Circus)

=cut


