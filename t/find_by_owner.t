# $Id: find_by_owner.t,v 1.2 2004/09/30 06:15:29 comdog Exp $
use strict;

use File::Find            qw(find);
use File::Spec::Functions qw(curdir);

use Test::More tests => 2;

use_ok( "File::Find::Closures" );

ok( defined *File::Find::Closures::find_by_owner{CODE}, 
	"file_by_owner is defined" );
