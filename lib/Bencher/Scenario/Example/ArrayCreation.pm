package Bencher::Scenario::Example::ArrayCreation;

# DATE
# VERSION

use 5.010001;
use strict;
use warnings;

our $scenario = {
    summary => 'Benchmark creation of array of N integers',
    participants => [
        {name=>'create_array', code_template=>'[1..<size>]'},
    ],
    datasets => [
        {args => {'size@' => [1, 1000, 1000000]}},
    ],
};

1;
# ABSTRACT:
