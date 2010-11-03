package Role2;
use Moose::Role;

around wrapped_method => sub {
  my ($orig, $self, @arg) = @_;

  warn "ROLE 2\n";
  $self->$orig(@arg);
};

1;
