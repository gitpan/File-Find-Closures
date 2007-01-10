# $Id: pod_coverage.t,v 1.2 2007/01/10 05:59:22 comdog Exp $

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
