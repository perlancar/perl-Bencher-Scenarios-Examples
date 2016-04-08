package Bencher::Scenario::Example::CmdLineWithOutput;

# DATE
# VERSION

use 5.010001;
use strict;
use warnings;

our $scenario = {
    summary => 'Cmdline that outputs something to stdout',
    participants => [
        {perl_cmdline => ['-E', 'say 42']},
    ],
};

1;
# ABSTRACT:
