# $Id: pod_coverage.t 2023 2007-01-10 05:59:22Z comdog $

use Test::More;
eval "use Test::Pod::Coverage";

if( $@ )
	{
	plan skip_all => "Test::Pod::Coverage required for testing POD";
	}
else
	{
	plan tests => 1;

	pod_coverage_ok( "File::Find::Closures" );      
	}
