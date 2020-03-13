#!/usr/bin/perl

use strict;
use warnings;

use Test::More tests => 2;

{
    # TEST
    like(
        scalar(`$^X -Ilib bin/prefixintsumcol t/data/samples/simple.txt`),
        qr#\A24\t24\r?\n25\t1\r?\n925\t900\r?\n?\z#ms,
        "Simple test"
    );
}

{
    # TEST
    like(
        scalar(`$^X -Ilib bin/prefixintsumcol t/data/samples/several-cols.txt`),
        qr#\A1\t1 a\r?\n3\t2 b\r?\n6\t3 c\r?\n?\z#ms,
        "Do not disturb the whitespace",
    );
}
