use strict;
use warnings;
use Test::More;

BEGIN { use_ok 'AnyEvent::ZeroMQ::Raw' };

my ($major, $minor, $patch) = AnyEvent::ZeroMQ::Raw::version();
diag join('.', $major, $minor, $patch);
ok defined $major;
ok defined $minor;
ok defined $patch;

done_testing;
