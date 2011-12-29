use strict;
use warnings;
use Test::More;

use AnyEvent::ZeroMQ::Raw;
use AnyEvent::ZeroMQ::Raw::Constants qw(ZMQ_PUB ZMQ_TYPE ZMQ_IDENTITY);

my $c = AnyEvent::ZeroMQ::Raw::Context->new( threads => 0 );
my $s = AnyEvent::ZeroMQ::Raw::Socket->new($c, ZMQ_PUB);

my $t = $s->getsockopt(ZMQ_TYPE);
is $t, ZMQ_PUB, 'got type ok';

$s->setsockopt(ZMQ_IDENTITY, "OH HAI");
is $s->getsockopt(ZMQ_IDENTITY), "OH HAI", 'strings work';

done_testing;
