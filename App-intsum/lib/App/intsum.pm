package App::intsum;

use strict;
use warnings;

use Math::GMP ();

sub new
{
    my $class = shift;

    my $self = bless {}, $class;

    $self->_init(@_);

    return $self;
}

sub _init
{
    my ($self, $args) = @_;

    return;
}

sub run
{
    my $s = Math::GMP->new('0');

    while (my $l = <ARGV>)
    {
        chomp$l;
        $s += Math::GMP->new($l);
    }

    print "$s\n";

    return;
}

1;

__END__

=head1 NAME

App::intsum - sums decimals big integers from stdin or files - one in each line.

=head1 VERSION

=head1 METHODS

=head2 new

Constructor - for internal use.

=head2 run

Run the app - for internal use.
=cut

