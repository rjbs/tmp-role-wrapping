package Role3;
use Moose::Role;

around wrapped_method => sub {
  my ($orig, $self, @arg) = @_;

  warn "ROLE 3\n";
  $self->$orig(@arg);
};

1;
