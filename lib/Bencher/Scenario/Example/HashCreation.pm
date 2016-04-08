package Bencher::Scenario::Example::HashCreation;

# DATE
# VERSION

use 5.010001;
use strict;
use warnings;

our $scenario = {
    summary => 'Benchmark creation of hash of N keys (1..N) and value=1',
    participants => [
        {name=>'create_hash', code_template=>'+{map {($_=>1)} 1..<size>}'},
    ],
    datasets => [
        {args => {'size@' => [1, 1000, 1000000]}},
    ],
};

1;
# ABSTRACT:
