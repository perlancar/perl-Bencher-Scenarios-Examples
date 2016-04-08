package Bencher::Scenario::Example::StringConcat;

# DATE
# VERSION

use 5.010001;
use strict;
use warnings;

our $scenario = {
    summary => 'Benchmark concatenation of string',
    description => <<'_',

The benchmark code starts with an empty string then appends one character at a
time for N times:

    $str = '';
    $str .= 'x';

_
    participants => [
        {name=>'concat_str', code_template=>'my $str = ""; for (1..<size>) { $str .= "x" } $str'},
    ],
    datasets => [
        {args => {'size@' => [10, 1000, 5000, 10_000, 50_000, 100_000, 500_000, 1000_000, 5000_000]}},
    ],
};

1;
# ABSTRACT:

=head1 SEE ALSO

L<Bencher::Scenario::Example::StringConcat2>
