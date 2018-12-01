#

#
# Author: Cassie E Nicol cassieenicol@gmail.com
#

package Apt 1.001;

use strict;
use warnings;
use Data::Dumper;

sub new {
    my $class;
    my @args;

    ( $class, @args ) = @_;
    my $self = {};
    bless $self, $class;

    $self->_initialize();
    
    return $self;
}

sub _initialize {
}

sub print_args {
    my ($options, $targets) = @_;
    print Data::Dumper->Dump( [$options], [qw(options)] );
    print Data::Dumper->Dump( [$targets], [qw(targets)] );
}

sub sync {
    my ($self, $options, $targets) = @_;
    print_args($options, $targets);
    my $result = 0;
    print "Not implemented\n";
    return $result;

    my $pattern = $options->{search};
    my $cmd = "apt-cache search $pattern";
    print "pattern: ${pattern}\n";
    print "cmd: ${cmd}\n";
    
    $result = `$cmd`;
    print "$cmd\n$result\n\n";

    return $result;
}

sub query {
    my ($self, $options, $targets) = @_;
    print_args($options, $targets);
    my $result = 0;
    
    print "Not implemented\n";
    
    return $result;
}

1;
