# $Id: compile.t,v 1.1.1.1 2004/09/28 18:35:10 comdog Exp $
BEGIN {
	@classes = qw(File::Find::Closures);
	}

use Test::More tests => scalar @classes;

foreach my $class ( @classes )
	{
	print "bail out! $class did not compile\n" unless use_ok( $class );
	}
