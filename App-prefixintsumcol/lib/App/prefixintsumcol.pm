package App::prefixintsumcol;

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
    my ( $self, $args ) = @_;

    return;
}

sub run
{
    my $s = Math::GMP->new('0');

    while ( my $l = <ARGV> )
    {
        chomp $l;
        if ( my ($diff) = ( $l =~ m#\A([0-9]+)(?:\s|\Z)# ) )
        {
            printf( "%s\t%s\n", ( $s += Math::GMP->new($diff) ), $l );
        }
        else
        {
            die "Line '$l' at $. does not start with an integer number.";
        }
    }

    return;
}

1;

__END__

=head1 NAME

App::prefixintsumcol - prefix the running sum of decimal big integers from stdin or files

=head1 SYNOPSIS

    $ (echo 2 ; echo 3) | prefixintsumcol
    2 2
    5 3

=head1 DESCRIPTION

Performs an arithmetic sum of decimal integers in the files given as command
line arguments and STDIN, and displays the intermediate results at the beggining of each line.

=head1 VERSION

=head1 METHODS

=head2 new

Constructor - for internal use.

=head2 run

Run the app - for internal use.

=cut
