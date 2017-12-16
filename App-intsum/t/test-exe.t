#!/usr/bin/perl

use strict;
use warnings;

use Test::More tests => 1;

{
    # TEST
    like(scalar(`$^X -Ilib bin/intsum t/data/samples/simple.txt`),
        qr#\A925$#ms,
        "Simple test")
}

