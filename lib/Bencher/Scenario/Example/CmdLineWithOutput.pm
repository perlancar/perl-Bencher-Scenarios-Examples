package Bencher::Scenario::Example::CmdLineWithOutput;

# DATE
# VERSION

use 5.010001;
use strict;
use warnings;

our $scenario = {
    summary => 'Cmdline that outputs something to stdout/stderr',
    participants => [
        {name=>'stdout'       , perl_cmdline => ['-E', 'say 42']},
        {name=>'stderr'       , perl_cmdline => ['-E', 'warn 42']},
        {name=>'stdout+stderr', perl_cmdline => ['-E', 'say 42; warn -42']},
    ],
};

1;
# ABSTRACT:
