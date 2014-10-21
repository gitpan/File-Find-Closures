# $Id: find_by_regex.t,v 1.3 2007/01/13 20:55:52 comdog Exp $
use strict;

use File::Basename        qw(basename);
use File::Find            qw(find);
use File::Spec::Functions qw(catfile curdir canonpath);

use Test::More tests => 9;

use_ok( "File::Find::Closures" );

ok( defined *File::Find::Closures::find_by_regex{CODE}, 
	"file_by_name is defined" );
	
my $regex = "^Make";
my $name  = "Makefile";

my $expected_count = 0;
find( sub { if( /$regex/ ) { $expected_count++ } }, curdir() );

my( $finder, $reporter ) = File::Find::Closures::find_by_regex( qr/$regex/ );
isa_ok( $finder,   'CODE' );
isa_ok( $reporter, 'CODE' );

find( $finder, curdir() );

my @files = $reporter->();
my $files = $reporter->();
isa_ok( $files, 'ARRAY', "Gets anonymous array in scalar context" );

is( scalar @files, $expected_count, "Found one file matching /$regex/" );
like( $files[0], qr/\Q$name/, "Found $name" );

is( scalar @$files, $expected_count, "Found one file matching /$regex/" );
like( $files->[0], qr/\Q$name/, "Found $name" );
