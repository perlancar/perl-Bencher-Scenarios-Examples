package Bencher::Scenario::Example::NameAndSeq;

# DATE
# VERSION

use 5.010001;
use strict;
use warnings;

our $scenario = {
    summary => 'Participant/dataset with name that is also a sequence number',
    participants => [
        {name => 1, fcall_template => 'Time::HiRes::usleep(1*<delay>)'},
        {name => 3, fcall_template => 'Time::HiRes::usleep(3*<delay>)'},
    ],
    datasets => [
        {name => 1, args => {delay=>1}},
        {name => 3, args => {delay=>3}},
    ],
};

1;
# ABSTRACT:
