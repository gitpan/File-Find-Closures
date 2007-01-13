# $Id: find_by_group.t,v 1.3 2007/01/13 20:55:52 comdog Exp $
use strict;

use File::Find            qw(find);
use File::Spec::Functions qw(curdir);

use Test::More tests => 2;

use_ok( "File::Find::Closures" );

{
no warnings;
ok( defined *File::Find::Closures::find_by_group{CODE}, 
	"file_by_group is defined" );
}