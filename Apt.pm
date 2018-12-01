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

sub print_options {
   # my $options = @_;
   # my @keys = keys %options;
   # print Data::Dumper->Dump( [\@keys], [qw(keys)] );
}

sub sync {
    my ($self, $options, $targets) = @_;
    print Data::Dumper->Dump( [$options, $targets], [qw(args targets)] );
    #print_options($options);

    my $pattern = $options->{search};
    my $cmd = "apt-cache search $pattern";
    print "pattern: ${pattern}\n";
    print "cmd: ${cmd}\n";
    
    my $result = `$cmd`;
    print "$cmd\n$result\n\n";
}

sub query {

}

1;
