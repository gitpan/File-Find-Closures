# $Id: prereq.t 1501 2004-09-28 18:35:09Z comdog $
use Test::More;
eval "use Test::Prereq";
plan skip_all => "Test::Prereq required to test dependencies" if $@;
prereq_ok();
