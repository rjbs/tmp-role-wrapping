package Role0;
use Moose::Role;

sub wrapped_method { }

sub wrapper_method {
  my ($self, @args) = @_;

  foreach my $method (
    reverse
    Class::MOP::class_of($self)->find_all_methods_by_name('wrapped_method')
  ) {
    $method->{code}->execute($self, @args);
  }
};

1;
