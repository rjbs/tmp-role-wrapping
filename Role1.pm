package Role1;
use Moose::Role;

around wrapped_method => sub {
  my ($orig, $self, @arg) = @_;

  warn "ROLE 1\n";
  $self->$orig(@arg);
};

1;
