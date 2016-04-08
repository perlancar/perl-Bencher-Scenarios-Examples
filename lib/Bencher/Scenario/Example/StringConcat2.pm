package Bencher::Scenario::Example::StringConcat2;

# DATE
# VERSION

use 5.010001;
use strict;
use warnings;

our $scenario = {
    summary => 'Benchmark concatenation of string',
    description => <<'_',

The benchmark code starts with an empty string then appends one character at a
time for N times, forming a new string each time:

    $str = '';
    $str = 'x' . $str;

_
    precision => 2,
    participants => [
        {name=>'concat_str', code_template=>'my $str = ""; for (1..<size>) { $str = "x" . $str } $str'},
    ],
    datasets => [
        {args => {'size@' => [10, 1000, 5000, 10_000, 50_000, 100_000, 200_000, 500_000]}},
    ],
};

1;
# ABSTRACT:

=head1 SEE ALSO

L<Bencher::Scenario::Example::StringConcat>

L<http://accidentallyquadratic.tumblr.com/post/142387131042/nodejs-left-pad>
